package com.fp.neezit.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import com.fp.neezit.product.model.service.ProductService;
import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.user.model.service.UserService;
import com.fp.neezit.user.model.vo.PageInfo;
import com.fp.neezit.user.model.vo.Pagination;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserBuyList;
import com.fp.neezit.user.model.vo.UserMaster;
import com.fp.neezit.user.model.vo.UserWallet;

@Controller
public class UserMyPageController {

	@Autowired
	private UserService uService;
	
	@Autowired
	ProductService pService;
	// 암호화 처리
	@Autowired // spring-security.xml에 등록되어 있음.
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	/**
	 *  1. 보유 니즈머니 페이지 이동
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping("wallet.do")
	public String wallet(HttpSession session,Model model) {
		User u = (User) session.getAttribute("loginUser");
		
		// 보유 니즈머니 가져오기
		int cash = uService.userCash(u.getEmail());

		ArrayList<UserWallet> uw = uService.getUserWallet(u.getEmail());

		model.addAttribute("uw",uw);

		model.addAttribute("cash",cash);

		return "user/myPage/wallet";
	}

	/**
	 * 2. 충전하기 버튼 이동
	 * 
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping("charge.do")
	public String charge(HttpSession session,Model model) {
		User u = (User) session.getAttribute("loginUser");

		// 보유 니즈머니 가져오기
		int cash = uService.userCash(u.getEmail());

		model.addAttribute("cash",cash);

		return "user/myPage/charge";
	}

	/**
	 * 3. 결제내역 더보기
	 * 
	 * @param session
	 * @param model
	 * @param buttonday
	 * @param preday
	 * @param postday
	 * @param search_way
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("walletDetail.do")
	public String walletDetail(HttpSession session,Model model,String buttonday,String preday,
			String postday,String search_way,@RequestParam(value="currentPage"
			, required=false, defaultValue="1")int currentPage) {
		// currentPage(현재페이지) 는 값이 null일 경우 기본값은 1

		if(buttonday==null&&preday==null&&postday==null) {
			buttonday="";
			preday="";
			postday="";
		}

		User u = (User) session.getAttribute("loginUser");

		HashMap<String, String> map = new HashMap<String, String>();

		map.put("email", u.getEmail());

		map.put("buttonday",buttonday);

		map.put("preday",preday);

		map.put("postday",postday);

		map.put("search_way",search_way);

		int listCount = uService.getWalletCount(map); 

		//페이지수 계산 해주는 객체
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount,5);	

		//유저 월렛 정보 가지고 오기
		ArrayList<UserWallet> uw = uService.getUserWalletList(pi,map);

		model.addAttribute("uw",uw);
		model.addAttribute("pi",pi);
		model.addAttribute("email",u.getEmail());
		model.addAttribute("buttonday",buttonday);
		model.addAttribute("preday",preday);
		model.addAttribute("postday",postday);
		model.addAttribute("search_way",search_way);

		return "user/myPage/walletDetail";
	}
	

	/**
	 * 4. 카카오페이 사이트 접근
	 * 
	 * @param total_pay
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "kakaopay.do", method = RequestMethod.POST)
	public String userLogin(String total_pay, Model model) { // view에 전달하는 데이터를 Model에 담는다.
		model.addAttribute("total_pay", total_pay); 
		return "common/kakaopay";
	}


	/**
	 * 5. 카카오페이 니즈머니 충전
	 * 
	 * @param model
	 * @param money
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "neezcharge.do", method = RequestMethod.POST) 
	public String neezcharge(Model model, String money,HttpSession session) { // view에 전달하는 데이터를 Model에 담는다.

		User u = (User) session.getAttribute("loginUser");

		String email = u.getEmail();

		HashMap<String, String> map = new HashMap<String, String>();

		map.put("email", email);
		map.put("money",money);

		int result1 = uService.neezcharge(map);

		int result2 = uService.chargePaylist(map);


		if(result1==1&&result2==1) {
			return "redirect:wallet.do";
		}else {
			System.out.println("결제오류");
			return "redirect:index.do";
		}
	}
	
	/**
	 * 6.출금
	 * 
	 * @param model
	 * @param price
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "withdraw.do", method = RequestMethod.POST) 
	public String withdraw(Model model, String money,String bank,String bankno,HttpSession session) { // view에 전달하는 데이터를 Model에 담는다.
	
	User u = (User) session.getAttribute("loginUser");
	
	HashMap<String, String> map = new HashMap<String, String>();
	
	map.put("email", u.getEmail());
	
	map.put("name", u.getName());
	
	map.put("money",money);
	
	map.put("bank",bank);
	
	map.put("bankno",bankno);
	
	int result1 = uService.withdraw(map);
	
    int result2 = uService.withdrawlist(map); 
    
    int result3 = uService.withdraw2(map); 
	
	
	if (result1 == 1&&result2==1) {
		return "redirect:wallet.do";
	}else {
		System.out.println("결제오류");
		return "redirect:index.do";
	}
  }


	/**
	 * 7. 휴대폰번호 변경 메소드
	 * 
	 * @param phone
	 * @param model
	 * @return
	 */
	@ResponseBody
	@RequestMapping("modifyPhone.do")
	public String modifyPhone(String phone, HttpSession session, Model model) {

		// 중복된 휴대폰인지 체크
		int dupl = uService.phoneCheck(phone);

		User u = (User) session.getAttribute("loginUser");

		if (dupl == 0) { // 중복 X

			u.setPhone(phone);

			int result = uService.modifyPhone(u);

			if (result == 1) {
				model.addAttribute("loginUser", u);
				return "ok";
			} else {
				return "fail";
			}

		} else { // 중복 O
			return "fail";
		}
	}

	/**
	 * 8. 마케팅 수신동의 변경 메소드
	 * 
	 * @param marketingT
	 * @param marketingE
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping("marketing.do")
	public String marketing(String marketingT, String marketingE, HttpSession session, Model model) {

		User u = (User) session.getAttribute("loginUser");

		if (marketingT == null) {
			marketingT = "N";
		}
		if (marketingE == null) {
			marketingE = "N";
		}

		u.setMarketingT(marketingT);
		u.setMarketingE(marketingE);

		int result = uService.marketing(u);

		if (result == 1) {
			model.addAttribute("loginUser", u);
			return "redirect:profile.do";
		} else {
			model.addAttribute("msg", "마케팅 수신동의 설정 실패!");
			return "common/errorPage";
		}
	}

	/**
	 *
	 * 
	 * 9. 비밀번호 변경 메소드
	 * @param originalPwd
	 * @param newPwd
	 * @param model
	 * @param session
	 * @param status
	 * @return
	 */
	@RequestMapping("modifyPwd.do")
	public String modifyPwd(String originalPwd, String newPwd, Model model, HttpSession session, SessionStatus status) {

		User u = (User) session.getAttribute("loginUser");

		// Session 비밀번호와 기존 비밀번호가 일치 할 때
		if (u != null && bcryptPasswordEncoder.matches(originalPwd, u.getPwd())) {

			u.setPwd(bcryptPasswordEncoder.encode(newPwd));

			int result = uService.modifyPwd(u);

			if (result == 1) {
				status.setComplete();
				return "redirect:index.do";
			} else {
				model.addAttribute("msg", "비밀번호 변경 실패!");
				return "common/errorPage";
			}
		} else {
			model.addAttribute("msg", "기존 비밀번호와 일치하지 않습니다.");
			return "user/myPage/modifyPwd";
		}
	}

	/**
	 * 10. 회원탈퇴 메소드
	 * 
	 * @param model
	 * @param user_pw
	 * @param session
	 * @param status
	 * @return
	 */
	@RequestMapping("deleteUser.do")
	public String userdelete(String user_pw, String user_leave, Model model, HttpSession session,
			SessionStatus status) {

		User u = (User) session.getAttribute("loginUser");

		if (u != null && bcryptPasswordEncoder.matches(user_pw, u.getPwd())) {

			int result = uService.userdelete(u);

			HashMap<String, String> map = new HashMap<String, String>();

			map.put("email", u.getEmail());
			map.put("reason", user_leave);

			int reason = uService.reason(map);

			if (result == 1 && reason == 1) {
				status.setComplete();
				model.addAttribute("sw", 1);
				return "user/myPage/deleteUser";
			} else {
				model.addAttribute("sw", 2);
				return "user/myPage/deleteUser";
			}
		} else {
			model.addAttribute("sw", 3);
			return "user/myPage/deleteUser";
		}
	}
	
	/**
	 * 13. 상품 구매 메소드 AJAX
	 * 
	 * @param buylist
	 * @return
	 */
	@ResponseBody
	@RequestMapping("buyProduct.do")
	public String buyProduct(UserBuyList buylist,UserMaster um,String email,String money, String pno,int rank){
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("email", email);
		map.put("money", money);
		
		int a = Integer.parseInt(pno);
		
		HashMap<String, Integer> map2 = new HashMap<String, Integer>();
		map2.put("rank", rank);
		map2.put("a", a);
		
		int rankUpdate = uService.rankUpdate(map2);

		
		int result1 = uService.buyProduct(buylist);
		int result2 = uService.withdraw(map);
		int result3 = uService.pCountUp(pno);
		if (result1 == 1 && result2==1) { 
			return "ok";
		} else {
			return "fail";
		}
	}
	
	/**
	 * 
	 * 14. 구매목록 리스트 
	 * 
	 * @param session
	 * @param model
	 * @param buttonday
	 * @param preday
	 * @param postday
	 * @param search_way
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("buyList.do")
	public String buyList(HttpSession session,Model model,String buttonday,String preday,
			String postday,String search_way,@RequestParam(value="currentPage"
			, required=false, defaultValue="1")int currentPage) {
		
		if(buttonday==null&&preday==null&&postday==null) {
			buttonday="";
			preday="";
			postday="";
		}
		
		User u = (User) session.getAttribute("loginUser");
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("email", u.getEmail());

		map.put("buttonday",buttonday);

		map.put("preday",preday);

		map.put("postday",postday);

		map.put("search_way",search_way);
		
		int listCount = uService.getBuyListCount(map); 
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount,5);	
		
		ArrayList<UserBuyList> ub = uService.getUserBuyList(pi,map);
		
		model.addAttribute("ub",ub);
		model.addAttribute("pi",pi);
		model.addAttribute("email",u.getEmail());
		model.addAttribute("buttonday",buttonday);
		model.addAttribute("preday",preday);
		model.addAttribute("postday",postday);
		model.addAttribute("search_way",search_way);
		
		return "user/myPage/buyList";
	}
	
	/**
	 * 15. 환불 업데이트
	 * @param buylist
	 * @param refu
	 * @return
	 */
	@RequestMapping("refund.do")
	public String refund(UserBuyList buylist,String refu){
		
		int result1 = uService.refund(refu);
		
		if (result1 > 0) { 
			return "redirect:buyList.do";
		} else {
			return "fail";
		}
	}
	/*
	 * 15. 상품 구매 확인 메소드 AJAX
	 * @param buylist
	 * @return
	 */
	@ResponseBody
	@RequestMapping("buyConfirm.do")
	public String buyConfirm(String email,String pNo){
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("pNo", pNo);
		
		// 상품구매 이력이 있는지 확인
		int result = uService.buyConfirm(map);
		
		if (result > 0) { 
			return "ok";
		} else {
			return "fail";
		}
	}
	
	/**
	 * 15. 찜등록 AJAX
	 * 
	 * @param 
	 * @return
	 * @throws 
	 */
	@ResponseBody // AJAX
	@RequestMapping("wishInsert.do")
	public String wishInsert(String email, int no ,String pName, HttpSession session){
		// 2개의 객체를 insert 하기위해 HashMap 사용
		String str = Integer.toString(no);     // int로 들어온 객체를 스트링으로 변환시켜준다. (email이 스트링이기때문에 같이 HashMap 사용하기위해)
		HashMap<String, String> map = new HashMap<String, String>();    // HashMap 선언
		map.put("email", email);    
		map.put("no", str);


		// 중복값 확인
		HashMap<String, String> map2 = new HashMap<String, String>();    // HashMap 선언
		map2.put("email", email);    
		map2.put("no", str);

		int duplicate = uService.wishDuplicate(map2);    // duplicate 라는변수에  selectone으로 결과값(true이면 1 false면 0) 을받는다.

		
		// 자기상품 자기가 찜 불가능하게하는 메소드
		HashMap<String, String> map3 = new HashMap<String, String>();    // HashMap 선언
		map3.put("pName", pName);    
		map3.put("email", email);
		
		int ProductName = uService.wishProductName(map3); // 자기상품 자기가 찜 불가하기위한 객체(카운트값으로 받아온다)
		int result = 0;      // result 값 초기화
		if(duplicate == 0 && ProductName == 0) {    // 중복값이 없으면 insert 실행시켜준다.
			result = uService.wishInsert(map);    //result 변수에 insert 메소드 결과값 받아준다.
		}

		if (result > 0) {    // insert가 성공시(result == 1) 성공적으로 return 시켜준다. 
			return "ok";
		} else {
			return "fail";
		}
	}
	
	/**
	 * 11. 찜해제 AJAX
	 * 
	 * @param 
	 * @return
	 * @throws 
	 */
	@ResponseBody // AJAX
	@RequestMapping("wishDelete.do")
	public String wishDelete(int no ,HttpSession session){

		Product p = pService.getProductDetail(no); //pService 가지고 오기
		User u = (User)session.getAttribute("loginUser");         // 로그인 세션 정보
		String str = Integer.toString(p.getNo());

		HashMap<String, String> map = new HashMap<String, String>();    // HashMap 선언
		map.put("email", u.getEmail());    
		map.put("no", str);

		int result = uService.wishDelete(map);

		if (result > 0) { 
			return "ok";
		} else {
			return "fail";
		}
	}
	
	/**
	 * 12.찜목록 리스트
	 * 
	 * @param u
	 * @param model
	 * @return
	 */
	@RequestMapping("wishList.do")
	public String wishList(HttpSession session,Model model) {
		// email값 session.getAttribute 가져오기
		User u = (User) session.getAttribute("loginUser");

		// 상품정보 담을 리스트객체
		List<Product>product = null;

		// DB에서 넘어온 값들을 담아준다.
		product = uService.wishList(u);

		// model객체에 키,벨류 값으로 넣어주고 wishList.jsp로 리턴시켜준다.
		model.addAttribute("product",product);
		return "user/myPage/wishList";
	}

}