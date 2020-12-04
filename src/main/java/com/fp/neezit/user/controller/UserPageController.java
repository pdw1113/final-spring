package com.fp.neezit.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserPageController {
	
	@Autowired
	UserContoller uc;
	
	@RequestMapping("signUp.do")
	public String signUp() {
		return "user/signUp";
	}

	@RequestMapping("findPwd.do")
	public String findPwd(Model model) {
		model.addAttribute("kalogin",uc.kalogin);
		return "user/findPwd";
	}

	@RequestMapping("profile.do")
	public String profile(Model model) {
		model.addAttribute("kalogin",uc.kalogin);
		return "user/myPage/profile";
	}

	@RequestMapping("loginPage.do")
	public String loginPage() {
		return "user/login";
	}

	@RequestMapping("modifyPwdPage.do")
	public String modifyPwdPage(Model model) {
		model.addAttribute("kalogin",uc.kalogin);
		return "user/myPage/modifyPwd";
	}

	@RequestMapping("deleteUserPage.do")
	public String deleteUser(Model model) {
		model.addAttribute("kalogin",uc.kalogin);
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
}
