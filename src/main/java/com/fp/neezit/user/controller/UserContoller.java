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
	
	@RequestMapping("modifyPwd.do")
	public String modifyPwd() {
		return "user/myPage/modifyPwd";
	}
	
	@RequestMapping("deleteUser.do")
	public String deleteUser() {
		return "user/myPage/deleteUser";
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
	
	
	@RequestMapping("loginPage.do")
	public String login() {
		return "user/login";
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
			model.addAttribute("msg", "로그인 실패!");
			return "common/errorPage";
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
	public String modifyPhone(String phone, String sessionPhone , HttpSession session, Model model) {
		
		// 중복된 휴대폰인지 체크
		int dupl = uService.phoneCheck(phone);
		
		User u = (User)session.getAttribute("loginUser");
		
		if(dupl == 0) { // 중복 X
			System.out.println("중복X");
		
			HashMap<String, String> map = new HashMap<String, String>();
			
			map.put("phone", phone);
			map.put("sessionPhone", sessionPhone);
			
			int result = uService.modifyPhone(map);
			
			System.out.println("바꿀번호 :" + map.get("phone") );
			System.out.println("원래번호 :" + map.get("sessionPhone"));
			System.out.println("result :" + result);
			
			
			if(result == 1) {
				u.setPhone(phone);
				model.addAttribute("loginUser",u); 
				return "ok";
			}else {
				return "fail";
			}
			
		}else {			  // 중복 O
			System.out.println("중복O");
			return "fail";
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
