package com.fp.neezit.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserContoller {
	
	@RequestMapping("login.do")
	public String login() {
		return "user/login";
	}
	
	@RequestMapping("signUp.do")
	public String signUp() {
		return "user/signUp";
	}
	
	@RequestMapping("findPwd.do")
	public String findPwd() {
		return "user/findPwd";
	}
	
	@RequestMapping("signUpMaster.do")
	public String signUpMaster() {
		return "user/signUpMaster";
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
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String memberLogin(@RequestParam("id") String id,
							  @RequestParam("pwd") String pwd) {
		
		System.out.println("ID : " + id);
		System.out.println("PWD : " + pwd);
		
		return "index";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
