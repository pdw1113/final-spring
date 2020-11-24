package com.fp.neezit.manager.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fp.neezit.manager.model.service.ManagerService;
import com.fp.neezit.manager.model.vo.Forbidden;
import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.user.model.service.UserService;
import com.fp.neezit.user.model.vo.PageInfo;
import com.fp.neezit.user.model.vo.Pagination;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserBuyList;
import com.fp.neezit.user.model.vo.UserWithdraw;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService mService;
	
	// 이메일 전송 인터페이스
    @Inject			  // 생성한 클래스 없이 바로 객체를 주입시킨다.
    JavaMailSender mailSender;
    
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
	public String mNoticeMail(Model model) {
		ArrayList<User> user = mService.getUser();
		
		model.addAttribute("user",user);
		return "manager/mNotice/mNoticeMail";
	}
	
	@RequestMapping("mNoticeTalk.do")
	public String mNoticeTalk() {
		return "manager/mNotice/mNoticeTalk";
	}
	
	/**
	 * 관리자 구매확정 리스트
	 * @param model
	 * @param session
	 * @param preday
	 * @param postday
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("myBuyList.do")
	public String myBuyList(Model model,HttpSession session,String preday,String postday,String selectBox,String searchBox,
							@RequestParam(value="currentPage", required=false, defaultValue="1")int currentPage) {

		if(preday==null&&postday==null) {
			preday="";
			postday="";
		}

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("preday",preday);
		map.put("postday",postday);
		map.put("selectBox",selectBox);
		map.put("searchBox",searchBox);
		
		int listCount = mService.getBuyListCount(map); 
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount,5);
		List<UserBuyList> ub = mService.getManagerBuyList(pi,map);

		model.addAttribute("PayList",ub);
		model.addAttribute("preday",preday);
		model.addAttribute("postday",postday);
		model.addAttribute("selectBox",selectBox);
		model.addAttribute("searchBox",searchBox);
		model.addAttribute("pi",pi);
		return "manager/mPay/mPayBuyList";
	}
	
	/**
	 * 관리자 출금내역
	 * @param model
	 * @param session
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("mPayExchange.do")
	public String mPayExchange(Model model,HttpSession session,
			@RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {

		int listCount = mService.getUserWithdrawLisCount(); 
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount,10);
		List<UserWithdraw> uw = mService.getUserWithdrawList(pi);
		
		model.addAttribute("ExchangeList",uw);
		model.addAttribute("pi",pi);
		return "manager/mPay/mPayExchange";
	}
	
	/**
	 * 관리자 환불리스트
	 * @param model
	 * @param session
	 * @param preday
	 * @param postday
	 * @param selectBox
	 * @param searchBox
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("mPayRefundList.do")
	public String mPayRefundList(Model model,HttpSession session,String preday,String postday,String selectBox,String searchBox,
			@RequestParam(value="currentPage", required=false, defaultValue="1")int currentPage) {
			

		if(preday==null&&postday==null) {
			preday="";
			postday="";
		}
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("preday",preday);
		map.put("postday",postday);
		map.put("selectBox",selectBox);
		map.put("searchBox",searchBox);
		
		int listCount = mService.getRefundCount(map); 
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount,5);
		List<UserBuyList> ub = mService.getRefundList(pi,map);
		
		model.addAttribute("refundList",ub);
		model.addAttribute("preday",preday);
		model.addAttribute("postday",postday);
		model.addAttribute("selectBox",selectBox);
		model.addAttribute("searchBox",searchBox);
		model.addAttribute("pi",pi);

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
	
	
	// 메일 정보 받고 메일jsp로 보내주는 기능
	@RequestMapping("sendemail.do")
	public String sendemail(Model model, String mEmail, String mTitle, String mContent) {
		
		String[] mEmailarr =mEmail.split(",");
		
		for(int i=0; i<mEmailarr.length; i++) {
			sendmail(mEmailarr[i],mTitle,mContent);
		}
		
		model.addAttribute("sw",1);
		return "manager/mNotice/mNoticeMail";
	}
	
	// 메일 보내주는 기능
	public String sendmail(String email,String title,String content) {
		
		String setfrom = "cjsehdals0430@gmail.com";
		
		try {
			// 이메일 메세지 보낼 수 있는 객체 라이브러리
            MimeMessage message = mailSender.createMimeMessage();
            
         // MimeMessage를 도와주는 객체 라이브러리
            MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
            
            // MimeMessageHelper 양식
            messageHelper.setFrom(setfrom);  // 보내는 사람 E-mail
            messageHelper.setTo(email);     // 받는 사람    E-mail
            messageHelper.setSubject(title); // 메일 제목   (생략 가능)
            messageHelper.setText(content,true);  // 메일 내용
            
         // MimeMessage 전송
            mailSender.send(message);
            
		}catch (Exception e) {
            return "메일보내기 실패!";
        }
		return "메일 보내기 성공!";
	}
	
}
