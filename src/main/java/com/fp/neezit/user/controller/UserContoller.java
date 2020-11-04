package com.fp.neezit.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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

import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.user.model.service.UserService;
import com.fp.neezit.user.model.vo.User;
import com.sun.mail.imap.protocol.Status;

import net.sf.json.JSONArray;

/*
 * 	Alt + Shift + J : 메소드에 주석 달기
 * 
 * 	1. Model 객체
 * 	커맨드 객체로 Model을 사용하게 되면 뷰(view)로 전달하고자 하는 데이터를 맵 형식(key, value)로 담을 때 사용한다.
 *  scope는 request이다.
 */

@SessionAttributes("loginUser") // Model에 loginUser라는 키값으로 객체가 추가되면 자동으로 세션에 추가하라는 의미의 어노테이션
@Controller
public class UserContoller {
	
	@Autowired
	private UserService uService;
	
	// 암호화 처리
	@Autowired		  // spring-security.xml에 등록되어 있음.				
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping("signUp.do")
	public String signUp() {
		return "user/signUp";
	}
	
	@RequestMapping("findPwd.do")
	public String findPwd() {
		return "user/findPwd";
	}
	
	@RequestMapping("changePwd.do")
	public String changePwd() {
		return "user/changePwd";
	}
	
	@RequestMapping("profile.do")
	public String profile() {
		return "user/myPage/profile";
	}
	
	@RequestMapping("wallet.do")
	public String wallet() {
		return "user/myPage/wallet";
	}

	
	@RequestMapping("wishList.do")
	public String wishList() {
		return "user/myPage/wishList";
	}
	
	@RequestMapping("buyList.do")
	public String buyList() {
		return "user/myPage/buyList";
	}
	
	@RequestMapping("charge.do")
	public String charge() {
		return "user/myPage/charge";
	}
	
	@RequestMapping("walletDetail.do")
	public String walletDetail() {
		return "user/myPage/walletDetail";
	}
	
	
	
	
	
	
	
	
	/****** 페이지 이동 메소드 ******/
	
	@RequestMapping("loginPage.do")
	public String loginPage() {
		return "user/login";
	}
	
	@RequestMapping("modifyPwdPage.do")
	public String modifyPwdPage() {
		return "user/myPage/modifyPwd";
	}
	
	@RequestMapping("deleteUserPage.do")
	public String deleteUser() {
		return "user/myPage/deleteUser";
	}
	
	/**
	 * 1. 로그인 세션 메소드 ( 암호화 처리 )
	 * @param u
	 * @param model
	 * @return 
	 */
	@RequestMapping(value="login.do",method=RequestMethod.POST)
	public String userLogin(User u, Model model) { // view에 전달하는 데이터를 Model에 담는다.
		
		User loginUser = uService.loginUser(u);
														   // 입력 비밀번호   , 복호화 비밀번호
		if(loginUser != null && bcryptPasswordEncoder.matches(u.getPwd(), loginUser.getPwd())) {
			// model은 request영역이다. 그것을 상단의 @SessionAttributes가 session영역으로 바꿔준다.
			// request → session
			model.addAttribute("loginUser",loginUser); 
			return "redirect:index.do";
		}else {
			model.addAttribute("msg", "1");
			return "user/login";
		}
	}
	
	/**
	 * 2. 로그아웃 세션 메소드 
	 * (@SessionAttributes가 있기 때문에 session.invalidate()가 먹히지 않으므로)
	 * @param status
	 * @return
	 */
	@RequestMapping("logout.do")
	public String logout(SessionStatus status) {
		
		status.setComplete();
		
		return "redirect:index.do";
	}
	
	/**
	 * 3. 휴대폰번호 변경 메소드
	 * @param phone
	 * @param model
	 * @return
	 */
	@ResponseBody
	@RequestMapping("modifyPhone.do")
	public String modifyPhone(String phone, HttpSession session, Model model) {
		
		// 중복된 휴대폰인지 체크
		int dupl = uService.phoneCheck(phone);
		
		User u = (User)session.getAttribute("loginUser");
		
		if(dupl == 0) { // 중복 X
			
			u.setPhone(phone);
			
			int result = uService.modifyPhone(u);
			
			if(result == 1) {
				model.addAttribute("loginUser",u); 
				return "ok";
			}else {
				return "fail";
			}
			
		}else {			  // 중복 O
			return "fail";
		}
	}
	
	/**
	 * 4. 마케팅 수신동의 변경 메소드
	 * @param marketingT
	 * @param marketingE
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping("marketing.do")
	public String marketing(String marketingT, String marketingE, HttpSession session, Model model) {

		User u = (User)session.getAttribute("loginUser");
		
		if(marketingT == null) {
			marketingT = "N";
		}
		if(marketingE == null) {
			marketingE = "N";
		}

		u.setMarketingT(marketingT);
		u.setMarketingE(marketingE);
		
		int result = uService.marketing(u);
		
		if(result == 1) {
			model.addAttribute("loginUser", u);
			return "redirect:profile.do";
		}else {
			model.addAttribute("msg", "마케팅 수신동의 설정 실패!");
			return "common/errorPage";
		}
	}
	
	/**
	 * 5. 비밀번호 변경 메소드
	 * @param originalPwd
	 * @param newPwd
	 * @param model
	 * @param session
	 * @param status
	 * @return
	 */
	@RequestMapping("modifyPwd.do")
	public String modifyPwd(String originalPwd, String newPwd, Model model, HttpSession session, SessionStatus status) {

		User u = (User)session.getAttribute("loginUser");
		
		// Session 비밀번호와 기존 비밀번호가 일치 할 때
		if(u != null && bcryptPasswordEncoder.matches(originalPwd, u.getPwd())) {

	 		u.setPwd(bcryptPasswordEncoder.encode(newPwd));
	 		
			int result = uService.modifyPwd(u);
			
			if(result == 1) {
				status.setComplete();
				return "redirect:index.do";
			}else {
				model.addAttribute("msg", "비밀번호 변경 실패!");
				return "common/errorPage";
			}
		}else {
			model.addAttribute("msg", "기존 비밀번호와 일치하지 않습니다.");
			return "user/myPage/modifyPwd";
		}
	}
	
	/**
	 * 6. 회원탈퇴 메소드
	 * @param model
	 * @param user_pw
	 * @param session
	 * @param status
	 * @return
	 */
	@RequestMapping("deleteUser.do")
	public String userdelete(String user_pw, String user_leave, Model model, HttpSession session, SessionStatus status) {
	
		User u = (User)session.getAttribute("loginUser");
		
		if(u != null && bcryptPasswordEncoder.matches(user_pw, u.getPwd())) {
			
			int result = uService.userdelete(u);
			
			HashMap<String, String> map = new HashMap<String, String>();
			
			map.put("email", u.getEmail());
			map.put("reason", user_leave);
			
			int reason = uService.reason(map);
			
			if(result == 1 && reason == 1) {
					status.setComplete();
					model.addAttribute("sw", 1);
					return "user/myPage/deleteUser";
			}else {
					model.addAttribute("sw", 2);
					return "user/myPage/deleteUser";
			}
		}else{
			model.addAttribute("sw", 3);
			return "user/myPage/deleteUser";
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * 10. 능력자 등록 메소드
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "signUpMaster.do" , method = RequestMethod.GET)
	public String signUpMaster(Model model) throws Exception {
		
		// 상품 카테고리 3분류
		List<ProductCategory> category = null;
		category = uService.category();
		model.addAttribute("category", JSONArray.fromObject(category));
		
		return "user/signUpMaster";
	}

}
