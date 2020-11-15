package com.fp.neezit.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserPageController {
	

	@RequestMapping("signUp.do")
	public String signUp() {
		return "user/signUp";
	}

	@RequestMapping("findPwd.do")
	public String findPwd() {
		return "user/findPwd";
	}

	@RequestMapping("profile.do")
	public String profile() {
		return "user/myPage/profile";
	}

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

	@RequestMapping("test.do")
	public String test() {
		return "user/signUpMasterManage";
	}
	
	@RequestMapping("popUp.do")
	public String popUp() {
		return "user/popUp";
	}
	
	@RequestMapping("buyList.do")
	public String buyList() {
		return "user/myPage/buyList";
	}
}
