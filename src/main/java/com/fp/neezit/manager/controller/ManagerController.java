package com.fp.neezit.manager.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
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
import com.fp.neezit.manager.model.vo.UserList;
import com.fp.neezit.product.model.service.ProductService;
import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.user.model.service.UserService;
import com.fp.neezit.user.model.vo.PageInfo;
import com.fp.neezit.user.model.vo.Pagination;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserBuyList;
import com.fp.neezit.user.model.vo.UserWithdraw;
import com.fp.neezit.user.model.vo.UserAccess;


@Controller
public class ManagerController {

	@Autowired
	private ManagerService mService;
	
	@Autowired
	ProductService pService;
	
	@Autowired
	UserService uService;
	
	@Autowired
	SqlSessionTemplate sqlSession;

	// 이메일 전송 인터페이스
	@Inject // 생성한 클래스 없이 바로 객체를 주입시킨다.
	JavaMailSender mailSender;

	@RequestMapping("supportnav.do")
	public String supportnav() {
		return "support/common/nav";
	}

	@RequestMapping("mStatistics.do")
	public String mStatistics(Model model,HttpSession session) {
		
		// 회원수
		int user = mService.mUser();

		// 능력자 수
		int master = mService.mMaster();
		
		// 결제수
		int buy = mService.mBuy();
		
		// 상품 판매순위
		List<Product> pd = mService.mStatistics();
		
		// 상품 별점순위
		List<Product> pd2 = mService.mStatistics2();
		
		
		/**************월 가입자수***************/
		int result1 = mService.mUserCount1();
		int result2 = mService.mUserCount2();
		int result3 = mService.mUserCount3();
		int result4 = mService.mUserCount4();
		int result5 = mService.mUserCount5();
		int result6 = mService.mUserCount6();
		int result7 = mService.mUserCount7();
		int result8 = mService.mUserCount8();
		int result9 = mService.mUserCount9();
		int result10 = mService.mUserCount10();
		int result11 = mService.mUserCount11();
		int result12 = mService.mUserCount12();
		/**************************************/
		
		/**************월 방문자수***************/
		int visitant1 = mService.mVisitant1();
		int visitant2 = mService.mVisitant2();
		int visitant3 = mService.mVisitant3();
		int visitant4 = mService.mVisitant4();
		int visitant5 = mService.mVisitant5();
		int visitant6 = mService.mVisitant6();
		int visitant7 = mService.mVisitant7();
		int visitant8 = mService.mVisitant8();
		int visitant9 = mService.mVisitant9();
		int visitant10 = mService.mVisitant10();
		int visitant11 = mService.mVisitant11();
		int visitant12 = mService.mVisitant12();
		/**************************************/
		

		model.addAttribute("product", pd);		// 상품 판매순위
		model.addAttribute("product2", pd2);		// 상품 별점순위
		
		model.addAttribute("user", user);		// 유저수 
		model.addAttribute("master", master);	// 능력자수
		model.addAttribute("buy", buy);			// 결제수
		
		model.addAttribute("visitant1", visitant1);
		model.addAttribute("visitant2", visitant2);
		model.addAttribute("visitant3", visitant3);
		model.addAttribute("visitant4", visitant4);
		model.addAttribute("visitant5", visitant5);
		model.addAttribute("visitant6", visitant6);
		model.addAttribute("visitant7", visitant7);
		model.addAttribute("visitant8", visitant8);
		model.addAttribute("visitant9", visitant9);
		model.addAttribute("visitant10", visitant10);
		model.addAttribute("visitant11", visitant11);
		model.addAttribute("visitant12", visitant12);
		
		
		model.addAttribute("result1", result1);
		model.addAttribute("result2", result2);
		model.addAttribute("result3", result3);
		model.addAttribute("result4", result4);
		model.addAttribute("result5", result5);
		model.addAttribute("result6", result6);
		model.addAttribute("result7", result7);
		model.addAttribute("result8", result8);
		model.addAttribute("result9", result9);
		model.addAttribute("result10", result10);
		model.addAttribute("result11", result11);
		model.addAttribute("result12", result12);
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

		model.addAttribute("user", user);
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
	
	@RequestMapping("mPayBuyDetail.do")
	public String mPayBuyDetail() {
		return "manager/mPay/mPayBuyDetail";
	}

	@RequestMapping("mPayBuyList.do")
	public String mPayBuyList() {

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


	@RequestMapping("mPayRefundDetail.do")
	public String mPayRefundDetail() {
		return "manager/mPay/mPayRefundDetail";
	}


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

	/*
	 * @RequestMapping("mUserList.do") public String mUserList() { return
	 * "manager/mUser/mUserList"; }
	 */

	@RequestMapping("mUserLog.do")
	public String mUserLog(HttpSession session,Model model,String buttonday,String preday,
			String postday,String search_way,String search_box,
			@RequestParam(value="currentPage", required=false, defaultValue="1")int currentPage) {
		 
		if(buttonday==null&&preday==null&&postday==null&&search_box==null&&search_way==null) {
			buttonday="";
			preday="";
			postday="";
			search_box="";
			search_way="";
		}
		
		if(preday!=null&&postday!=null) {
			preday = preday.replace("-", ".");
			postday = postday.replace("-", ".");
			
			//+1을 안해주면 당일날짜가 아니라 그 전 날짜까지만 나옴
			postday = postday+"+0.99999";
		}
		
		HashMap<String, String> map = new HashMap<String, String>();

		map.put("buttonday",buttonday);

		map.put("preday",preday);

		map.put("postday",postday);

		map.put("search_way",search_way);
		
		search_box = "%"+search_box+"%";
		
		map.put("search_box",search_box);
		
		int listCount = mService.getUserAccessCount(map);
		
	     PageInfo pi = Pagination.getPageInfo(currentPage, listCount,5);
			  
		 ArrayList<UserAccess> ua = mService.getUserAccess(pi,map);
			 
		 model.addAttribute("ua",ua); 
		 
		 model.addAttribute("pi",pi);
		 
		 model.addAttribute("count",listCount);
		 
		 model.addAttribute("buttonday",buttonday);

		 model.addAttribute("preday",preday);

		 model.addAttribute("postday",postday);

		 model.addAttribute("search_way",search_way);
		
		 model.addAttribute("search_box",search_box);
		
		 return "manager/mUser/mUserLog";
	}

	@ResponseBody // AJAX
	@RequestMapping("addWords.do")
	public String addWords(String words) {

		int result = mService.insertWords(words);


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

		System.out.println("어떻게 들어오지?" + dwords);
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
	public String searchWords(Model model, String search) {

		System.out.println(search);
		List<Forbidden> forbiddenList = mService.searchWords(search);

		model.addAttribute("forbiddenList", forbiddenList);

		System.out.println(forbiddenList);
		
		 return "manager/mBoard/mBoardForbidden"; 
	}
	
	@RequestMapping("searchWords1.do")
	public String searchWords1(Model model, String preday,
			String postday) {
		
		if(preday==null&&postday==null) {
			preday="";
			postday="";
		}

		System.out.println(preday);
		System.out.println(postday);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("preday",preday);
		map.put("postday",postday); 

		List<Forbidden> forbiddenList1 = mService.dateWords(map);

		model.addAttribute("forbiddenList1", forbiddenList1);
		model.addAttribute("preday",preday);
		model.addAttribute("postday",postday);

		return "manager/mBoard/mBoardForbidden"; 
	}
	
	@ResponseBody // AJAX
	@RequestMapping("checkWords.do")
	public String checkWords(String word) {
		
			System.out.println(word);
		int result = mService.checkWords(word);

		if (result == 1) {
					System.out.println("입력 불가");
					return "fail";
					
				} else {
					System.out.println("입력 가능");
					return "ok";
				}

	}

	// 메일 정보 받고 메일jsp로 보내주는 기능
	@RequestMapping("sendemail.do")
	public String sendemail(Model model, String mEmail, String mTitle, String mContent) {

		String[] mEmailarr = mEmail.split(",");

		for (int i = 0; i < mEmailarr.length; i++) {
			sendmail(mEmailarr[i], mTitle, mContent);
		}

		model.addAttribute("sw", 1);
		return "manager/mNotice/mNoticeMail";
	}

	// 메일 보내주는 기능
	public String sendmail(String email, String title, String content) {

		String setfrom = "cjsehdals0430@gmail.com";

		try {
			// 이메일 메세지 보낼 수 있는 객체 라이브러리
			MimeMessage message = mailSender.createMimeMessage();

			// MimeMessage를 도와주는 객체 라이브러리
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			// MimeMessageHelper 양식
			messageHelper.setFrom(setfrom); // 보내는 사람 E-mail
			messageHelper.setTo(email); // 받는 사람 E-mail
			messageHelper.setSubject(title); // 메일 제목 (생략 가능)
			messageHelper.setText(content, true); // 메일 내용

			// MimeMessage 전송
			mailSender.send(message);

		} catch (Exception e) {
			return "메일보내기 실패!";
		}
		return "메일 보내기 성공!";
	}

	
	
	 @RequestMapping("mUserList.do") 
     public String mUserList(Model model,String buttonday,String preday, 
           String postday,String search_way, String search_box, String check1, String check2,
           @RequestParam(value="currentPage" , 
           required=false, defaultValue="1")int currentPage) { 
     
        if(buttonday==null&&preday==null&&postday==null&&search_box==null&&search_way==null&&check1==null&&check2==null) {
            buttonday="";
            preday="";
            postday="";
            search_box="";
            search_way="";
            check1="";
            check2="";
         }

     String[] check22 = check2.split(",");
     
     HashMap<String, Object> map = new HashMap<String, Object>();
    


     map.put("check1",check1); 
     map.put("check2",check2); 
     map.put("check22",check22); 
     map.put("buttonday",buttonday); 
     map.put("preday",preday);
     map.put("postday",postday); 
     map.put("search_way",search_way);
     
     search_box = "%"+search_box+"%";
      
     map.put("search_box",search_box);
     System.out.println(map);
     int listCount = mService.getUserListCount(map);
     int listAllCount = mService.getUserListAllCount();
     
     PageInfo pi = Pagination.getPageInfo(currentPage, listCount,5);
     ArrayList<UserList> ul = mService.getUserList(pi,map);
//     UserMaster master = mService.getMaster();
//     ManagerUserList dao = sqlSession.getMapper(ManagerUserList.class);
//     UserBean ul = dao.getUserList();
     
     model.addAttribute("ul",ul); 
     model.addAttribute("pi",pi);
//     model.addAttribute("masterList", master);
     model.addAttribute("buttonday",buttonday);
     model.addAttribute("preday",preday); 
     model.addAttribute("postday",postday);
     model.addAttribute("search_way",search_way);
     model.addAttribute("search_box",search_box);
     model.addAttribute("check1",check1);
     model.addAttribute("check2",check2);
     model.addAttribute("listAllCount",listAllCount);

     
     return "manager/mUser/mUserList"; 
     }
	 
	 

}