package com.fp.neezit.user.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.fp.neezit.chat.model.vo.ChatSession;
import com.fp.neezit.user.model.service.KakaoService;
import com.fp.neezit.user.model.service.UserService;
import com.fp.neezit.user.model.vo.Admin;
import com.fp.neezit.user.model.vo.Getip;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserMaster;

/*
 *    Alt + Shift + J : 메소드에 주석 달기
 * 
 *    1. Model 객체
 *    커맨드 객체로 Model을 사용하게 되면 뷰(view)로 전달하고자 하는 데이터를 맵 형식(key, value)로 담을 때 사용한다.
 *  scope는 request이다.
 */

@SessionAttributes({"loginUser","master2","rankPic","admin"}) // Model에 loginUser라는 키값으로 객체가 추가되면 자동으로 세션에 추가하라는 의미의 어노테이션
@Controller
public class UserContoller {

	@Autowired
	private UserService uService;

	@Autowired
	private UserSignUpController usign;
		
	// 암호화 처리
	@Autowired // spring-security.xml에 등록되어 있음.
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	/* 채팅 */
	@Autowired
	private ChatSession cSession;
	
	@Autowired
	static boolean kalogin=false;

	/**
	 * 1. 로그인 세션 메소드 ( 암호화 처리 )
	 * 
	 * @param u
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "login.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String userLogin(User u, Model model, HttpServletRequest request) { // view에 전달하는 데이터를 Model에 담는다.
		User loginUser = uService.loginUser(u);
		UserMaster rankPic = uService.rankPic(u);
		Admin admin = uService.admin(u);
		
		int master = uService.master(u);
	

		// 입력 비밀번호 , 복호화 비밀번호
		if (loginUser != null && bcryptPasswordEncoder.matches(u.getPwd(), loginUser.getPwd())) {
			// model은 request영역이다. 그것을 상단의 @SessionAttributes가 session영역으로 바꿔준다.
			// request → session
			System.out.println("로그인 유저 : " + loginUser.getName());
			model.addAttribute("loginUser", loginUser);
			model.addAttribute("rankPic", rankPic);
			model.addAttribute("admin", admin);
			if(master == 1) {
				model.addAttribute("master2", master);
			}
			
			//접속한 아이피 구해오기
			String ip = new Getip().getClientIP(request);
			
			HashMap<String,String> map = new HashMap<String, String>();
			
			map.put("ip", ip);
			map.put("email", loginUser.getEmail());
			map.put("name", loginUser.getName());
			if(master == 1) {
				String rankname = uService.getMasterRank(loginUser.getEmail());
				map.put("rankname", rankname);
			}else {
				map.put("rankname", "사용자");
			}
			
			uService.insertIP(map);
			
			/* 채팅 */
			// 현재 로그인 한 User 채팅 Session ArrayList에 추가.
			cSession.addLoginUser(loginUser.getEmail());
			
			return "redirect:index.do";
		} else {
			model.addAttribute("msg", "1");
			return "user/login";
		}
	}

	/**
	 * 2. 로그아웃 세션 메소드 (@SessionAttributes가 있기 때문에 session.invalidate()가 먹히지 않으므로)
	 * 
	 * @param status
	 * @return
	 */
	@RequestMapping("logout.do")
	public String logout(SessionStatus status, HttpSession session,String token) {
		
		/* 채팅 */
		User u = (User)session.getAttribute("loginUser");
				
		/* 채팅 */
		// 로그아웃한 User를 채팅 Session ArrayList에서 삭제.
		cSession.removeLoginUser(u.getEmail());
		
		status.setComplete();
		
		// 카카오로그인의 토큰값이 있다면
		if(kalogin) {
		      KakaoService.kakaoLogout(token);
		      kalogin = false;
			  System.out.println("카카오 로그아웃 유저 : " + u.getName());
		}else {
			  System.out.println("로그아웃 유저 : " + u.getName());
		}

		return "redirect:logout2.do";
	}

	/**
	 * 3. 이메일 DB에 존재 확인 후 메일 송신
	 * @param email
	 * @return
	 */
	@ResponseBody // AJAX
	@RequestMapping("emailCheck.do")
	public String emailCheck(String email,Model model) {
		
		int result = uService.emailCheck(email);
		if (result == 1) { // 저장된 이메일 확인
			String t = "비밀번호 찾기 인증 이메일 입니다.";
			model.addAttribute("email",email);
			return usign.sendEmail(email, t);
		}
		return "fail";
	}
	
	
	/**
	 * 4. 이메일 인증 후 비밀번호 변경 페이지 이동 메소드
	 * 
	 * @param model
	 * @param email
	 * @return
	 */
	@RequestMapping("changePwd.do")
	public String changePwd(Model model, String email) {
		model.addAttribute("email",email);
		return "user/changePwd";
	}

	/**
	 * 5. 비밀번호 찾기를 통해 비밀번호 재설정
	 * @param pwd1
	 * @param email
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "changePw.do")
	public String changePw(String pwd1, String email, HttpSession session,Model model) {
		
		String pwd = (bcryptPasswordEncoder.encode(pwd1));
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("email", email);
		map.put("pwd", pwd);
		
		int result = uService.changePw(map);
		
		if (result == 1) {
			model.addAttribute("sw",1);
		} else {
			model.addAttribute("sw",2);
		}
		return "user/changePwd";
	}
	
	/**
	 * 6. 카카오 로그인
	 * @param email
	 * @param name
	 * @param pwd
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("kakaoLogin.do")
	public String kakaoLogin(String email,String name,String pwd, Model model, HttpServletRequest request){

		// 로그인을 위한 map
		HashMap<String, String> map = new HashMap<String, String>();
		String Pwd = (bcryptPasswordEncoder.encode(pwd));

		//접속한 아이피 구해오기
		String ip = new Getip().getClientIP(request);
		HashMap<String,String> map2 = new HashMap<String, String>();

		map2.put("ip", ip);
		map2.put("email", email);
		map2.put("name", name);

		// DB에 회원가입 이력 있는지 유효성 검사
		int emailresult = uService.emailCheck(email);

		if (emailresult == 1) { // 저장된 이메일 확인
			User u = new User();
			u.setEmail(email);
			u.setPwd(Pwd);
			// 기존 정보 가져오기
			User loginUser = uService.loginUser(u);
			// 능력자 등록 여부 확인
			int master = uService.master(u);


			model.addAttribute("loginUser", loginUser);

			if(master == 1) { // 능력자이면
				String rankname = uService.getMasterRank(loginUser.getEmail());
				map2.put("rankname", rankname);
				model.addAttribute("master2", master);
			}else {
				map2.put("rankname", "사용자");
			}

			uService.insertIP(map2);
			kalogin = true;
			
			/* 채팅 */
			// 현재 로그인 한 User 채팅 Session ArrayList에 추가.
			cSession.addLoginUser(loginUser.getEmail());
			
			System.out.println("카카오 로그인 유저 : " + loginUser.getName());
			
			return "redirect:index.do";

		}else {
			// 카카오 정보로 회원가입
		  map.put("email", email);
		  map.put("name",name);
		  map.put("pwd",Pwd);
		  int result = uService.insertKakao(map);

		  if(result == 1) { // 회원가입 성공
				User u = new User();
				u.setEmail(email);
				u.setPwd(Pwd);

				User loginUser = uService.loginUser(u);
				int master = uService.master(u);

				model.addAttribute("loginUser", loginUser);
				if(master == 1) {
					String rankname = uService.getMasterRank(loginUser.getEmail());
					map2.put("rankname", rankname);
					model.addAttribute("master2", master);
				}else {
					map2.put("rankname", "사용자");
				}

			  uService.insertIP(map2);
			  kalogin = true;
			  
			  /* 채팅 */
			  // 현재 로그인 한 User 채팅 Session ArrayList에 추가.
			  cSession.addLoginUser(loginUser.getEmail());
			  
			  System.out.println("카카오 로그인 유저 : " + loginUser.getName());
			  
			  return "redirect:index.do";
		  }else {
			  System.out.println("카카오 회원가입 실패");
			  return "redirect:index.do";
		  }
		}
	}

}