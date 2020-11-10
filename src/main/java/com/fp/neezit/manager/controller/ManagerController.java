package com.fp.neezit.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerController {
	
	@RequestMapping("supportnav.do")
	public String supportnav() {
		return "support/common/nav";
	}

	@RequestMapping("mStatistics.do")
	public String mStatistics() {
		return "manager/mStatistics/mStatistics";
	}
	
	@RequestMapping("mBoardForbidden.do")
	public String mBoardForbidden() {
		return "manager/mBoard/mBoardForbidden";
	}
	
	@RequestMapping("mNoticeKakao.do")
	public String mNoticeKakao() {
		return "manager/mNotice/mNoticeKakao";
	}
	
	@RequestMapping("mNoticeMail.do")
	public String mNoticeMail() {
		return "manager/mNotice/mNoticeMail";
	}
	
	@RequestMapping("mNoticeTalk.do")
	public String mNoticeTalk() {
		return "manager/mNotice/mNoticeTalk";
	}
	
	@RequestMapping("mPayBuyDetail.do")
	public String mPayBuyDetail() {
		return "manager/mPay/mPayBuyDetail";
	}
	
	@RequestMapping("mPayBuyList.do")
	public String mPayBuyList() {
		return "manager/mPay/mPayBuyList";
	}
	
	@RequestMapping("mPayExchange.do")
	public String mPayExchange() {
		return "manager/mPay/mPayExchange";
	}
	
	@RequestMapping("mPayRefundDetail.do")
	public String mPayRefundDetail() {
		return "manager/mPay/mPayRefundDetail";
	}
	
	@RequestMapping("mPayRefundList.do")
	public String mPayRefundList() {
		return "manager/mPay/mPayRefundList";
	}
	
	@RequestMapping("mPolicy.do")
	public String mPolicy() {
		return "manager/mPolicy/mPolicy";
	}
	
	@RequestMapping("mUserList.do")
	public String mUserList() {
		return "manager/mUser/mUserList";
	}
	
	@RequestMapping("mUserLog.do")
	public String mUserLog() {
		return "manager/mUser/mUserLog";
	}
}
