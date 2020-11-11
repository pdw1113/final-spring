package com.fp.neezit.manager.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fp.neezit.manager.model.service.ManagerService;
import com.fp.neezit.manager.model.vo.Forbidden;
import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.user.model.service.UserService;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService mService;
	
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
	
	@ResponseBody // AJAX
	@RequestMapping("addWords.do")
	public String addWords(String words) {
		
		System.out.println("어떻게 들어오지?"+ words);
		int result = mService.insertWords(words);
		
		System.out.println("최종 : " + result);
		
		if (result == 1) {
			
			System.out.println("등록");
			return "ok";
			
		} else {
			System.out.println("실패");
			return "fail";
		}
		

	}
	
	@ResponseBody // AJAX
	@RequestMapping("deleteWords.do")
	public String deleteWords(String dwords) {
		
		System.out.println("어떻게 들어오지?"+ dwords);
		int result = mService.deleteWords(dwords);
		
		System.out.println("최종 : " + result);
		
		if (result == 1) {
			
			System.out.println("삭제성공");
			return "ok";
			
		} else {
			System.out.println("실패");
			return "fail";
		}
		

	}
	
	
	
	@RequestMapping("searchWords.do")
	public String searchWords(Model model, String search, Date date) {
	
	
		System.out.println(search);
		System.out.println(date);
		List<Forbidden> forbiddenList = mService.searchWords(search);
		List<Forbidden> forbiddenList1 = mService.dateWords(date);
		model.addAttribute("forbiddenList", forbiddenList);
		model.addAttribute("forbiddenList", forbiddenList1);
		System.out.println(forbiddenList);
		
		 return "manager/mBoard/mBoardForbidden"; 
	}
	
	
	
	
	
	
	
	
	
	
}
