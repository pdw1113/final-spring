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

import com.fp.neezit.user.model.service.UserService;
import com.fp.neezit.user.model.vo.Getip;
import com.fp.neezit.user.model.vo.User;

/*
 *    Alt + Shift + J : 메소드에 주석 달기
 * 
 *    1. Model 객체
 *    커맨드 객체로 Model을 사용하게 되면 뷰(view)로 전달하고자 하는 데이터를 맵 형식(key, value)로 담을 때 사용한다.
 *  scope는 request이다.
 */

@SessionAttributes({"loginUser","master2"}) // Model에 loginUser라는 키값으로 객체가 추가되면 자동으로 세션에 추가하라는 의미의 어노테이션
@Controller
public class UserContoller {

	@Autowired
	private UserService uService;
	
	@Autowired
	private UserSignUpController usign;
		
	// 암호화 처리
	@Autowired // spring-security.xml에 등록되어 있음.
	private BCryptPasswordEncoder bcryptPasswordEncoder;

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
		int master = uService.master(u);

		// 입력 비밀번호 , 복호화 비밀번호
		if (loginUser != null && bcryptPasswordEncoder.matches(u.getPwd(), loginUser.getPwd())) {
			// model은 request영역이다. 그것을 상단의 @SessionAttributes가 session영역으로 바꿔준다.
			// request → session
			model.addAttribute("loginUser", loginUser);
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
			
			int  ipresult = uService.insertIP(map);
			
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
	public String logout(SessionStatus status) {

		status.setComplete();

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
		
		System.out.println("이메일 :" + email);
		System.out.println("패스워드 : " + pwd);
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
}