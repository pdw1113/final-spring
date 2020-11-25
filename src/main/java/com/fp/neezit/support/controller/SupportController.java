package com.fp.neezit.support.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SupportController {
	
	@RequestMapping("introduction.do")
	public String supportnav() {
		return "support/introduction";
	}
	
	@RequestMapping("noticeDetail.do")
	public String noticeDetail() {
		return "support/noticeDetail";
	}
	
	@RequestMapping("noticeInsert.do")
	public String noticeInsert() {
		return "support/noticeInsert";
	}
	
	@RequestMapping("noticeList.do")
	public String noticeList() {
		return "support/noticeList";
	}
	
	@RequestMapping("recruit.do")
	public String recruit() {
		return "support/recruit";
	}
	
	@RequestMapping("provision.do")
	public String provision() {
		return "support/provision";
	}
	
	@RequestMapping("privacy.do")
	public String privacy() {
		return "support/privacy";
	}
}
