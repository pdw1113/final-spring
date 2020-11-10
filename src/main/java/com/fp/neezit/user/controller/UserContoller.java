package com.fp.neezit.user.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fp.neezit.product.model.service.ProductService;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.user.common.pic.UserMasterPic;
import com.fp.neezit.user.model.service.UserService;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserMaster;
import com.fp.neezit.user.model.vo.UserMasterQualifcation;
import com.fp.neezit.user.model.vo.UserMasterSchool;
import com.fp.neezit.user.model.vo.UserMasterSns;

import net.sf.json.JSONArray;

/*
 *    Alt + Shift + J : 메소드에 주석 달기
 * 
 *    1. Model 객체
 *    커맨드 객체로 Model을 사용하게 되면 뷰(view)로 전달하고자 하는 데이터를 맵 형식(key, value)로 담을 때 사용한다.
 *  scope는 request이다.
 */

@SessionAttributes({"loginUser","master2"}) // Model에 loginUser라는 키값으로 객체가 추가되면 자동으로 세션에 추가하라는 의미의 어노테이션
@Controller
public class UserContoller {

	@Autowired
	private UserService uService;
	
	@Autowired
	private ProductService pService;

	@Autowired
	private UserMasterPic uPic;
	
	@Autowired
	private UserSignUpController usign;
		
		
	// 암호화 처리
	@Autowired // spring-security.xml에 등록되어 있음.
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
	public String changePwd(Model model, String email) {
		model.addAttribute("email",email);
		return "user/changePwd";
	}

	@RequestMapping("profile.do")
	public String profile() {
		return "user/myPage/profile";
	}

	@RequestMapping("wallet.do")
	public String wallet(HttpSession session,Model model) {
		User u = (User) session.getAttribute("loginUser");
		
		// 보유 니즈머니 가져오기
		int cash = uService.userCash(u.getEmail());
		
		model.addAttribute("cash",cash);
		
		return "user/myPage/wallet";
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
	public String charge(HttpSession session,Model model) {
		User u = (User) session.getAttribute("loginUser");
		
		// 보유 니즈머니 가져오기
		int cash = uService.userCash(u.getEmail());
		
		model.addAttribute("cash",cash);
		
		return "user/myPage/charge";
	}

	@RequestMapping("walletDetail.do")
	public String walletDetail() {
		return "user/myPage/walletDetail";
	}
	
	/****** 페이지 이동 메소드 ******/

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

	/**
	 * 1. 로그인 세션 메소드 ( 암호화 처리 )
	 * 
	 * @param u
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "login.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String userLogin(User u, Model model) { // view에 전달하는 데이터를 Model에 담는다.

		User loginUser = uService.loginUser(u);
		int master = uService.master(u);

		// 입력 비밀번호 , 복호화 비밀번호
		if (loginUser != null && bcryptPasswordEncoder.matches(u.getPwd(), loginUser.getPwd())) {
			// model은 request영역이다. 그것을 상단의 @SessionAttributes가 session영역으로 바꿔준다.
			// request → session
			model.addAttribute("loginUser", loginUser);
			if(master == 1) {
				model.addAttribute("master2", master);
			}
			return "redirect:index.do";
		} else {
			model.addAttribute("msg", "1");
			return "user/login";
		}
	}

	/**
	 * 2. 로그아웃 세션 메소드 (@SessionAttributes가 있기 때문에 session.invalidate()가 먹히지 않으므로)
	 * 
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
	 * 4. 마케팅 수신동의 변경 메소드
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
	 * 5. 비밀번호 변경 메소드
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
	 * 6. 회원탈퇴 메소드
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
	 * 7. 비밀번호 찾기를 통해 비밀번호 재설정
	 * @param pwd1
	 * @param email
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "changePw.do")
	public String changePw(String pwd1, String email, HttpSession session,Model model) {
		
		String pwd = (bcryptPasswordEncoder.encode(pwd1));
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		System.out.println("이메일 :" + email);
		System.out.println("패스워드 : " + pwd);
		map.put("email", email);
		map.put("pwd", pwd);
		
		int result = uService.changePw(map);
		
		if (result == 1) {
			model.addAttribute("sw",1);
			return "user/changePwd";
		} else {
			model.addAttribute("sw",2);
			return "index";
		}
		
	}
	
	/**
	 * 10. 능력자 등록 메소드
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "signUpMasterCategory.do", method = RequestMethod.GET)
	public String signUpMasterCategory(Model model) throws Exception {

		// 상품 카테고리 3분류
		List<ProductCategory> category = null;
		category = uService.category();
		model.addAttribute("category", JSONArray.fromObject(category));

		return "user/signUpMaster";
	}
	
	/**
	 * 11. 능력자 등록 메소드
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "signUpMaster.do", method = RequestMethod.POST)
	public String signUpMaster(UserMaster msu, UserMasterSchool msc, UserMasterSns msn, UserMasterQualifcation mqf,
			Model model, HttpServletRequest request, HttpSession session, RedirectAttributes redirectAttributes,
			@RequestParam(name = "_mProPicOri", required = false) MultipartFile file1,
			@RequestParam(name = "_mIdPicOri", required = false) MultipartFile file2,
			@RequestParam(name = "_sUnivPicOri", required = false) MultipartFile file3,
			@RequestParam(name = "_sUniv2PicOri", required = false) MultipartFile file4,
			@RequestParam(name = "_q1PicOri", required = false) MultipartFile file5,
			@RequestParam(name = "_q2PicOri", required = false) MultipartFile file6,
			@RequestParam(name = "_q3PicOri", required = false) MultipartFile file7,
			@RequestParam(name = "_q4PicOri", required = false) MultipartFile file8,
			@RequestParam(name = "_q5PicOri", required = false) MultipartFile file9) {
		// 객체의 변수명과 파일의 변수명이 같으면, File 객체를 String 객체로 변환 시킬 수 없기 때문에,
		// setter를 통해 File객체의 getOriginalFilename()메소드를 통하여 설정해준다.
		
		// @RequestParam어노테이션을 이용한 업로드 파일 접근
		// form의 enctype이 multipart/form-data로 작성해되어있어야하고, method=post이어야한다.
		// MultipartResolver가 multipartFile객체를 컨트롤러로 전달할 수 있다.
		
		if (!file1.getOriginalFilename().equals("") && !file2.getOriginalFilename().equals("")) {
			
			// 서버에 업로드 해야한다.
			String renameFileName1 = uPic.saveFile1(file1, request);
			String renameFileName2 = uPic.saveFile2(file2, request);
			 
			if (renameFileName1 != null && renameFileName2 != null) { // 파일이 잘 저장된 경우
				msu.setmProPicOri(file1.getOriginalFilename()); // 파일명만 DB에저장
				msu.setmProPicRe(renameFileName1);

				msu.setmIdPicOri(file2.getOriginalFilename());
				msu.setmIdPicRe(renameFileName2);

			}
			System.out.println("닉네임 가져오니 ? : " + msu);
		}

		if (!file3.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName3 = uPic.saveFile3(file3, request);

			if (renameFileName3 != null) { // 파일이 잘 저장된 경우
				msc.setsUnivPicOri(file3.getOriginalFilename()); // 파일명만 DB에저장
				msc.setsUnivPicRe(renameFileName3);
			}
		}

		if (!file4.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName4 = uPic.saveFile4(file4, request);

			if (renameFileName4 != null) { // 파일이 잘 저장된 경우
				msc.setsUniv2PicOri(file4.getOriginalFilename()); // 파일명만 DB에저장
				msc.setsUniv2PicRe(renameFileName4);
			}
		}

		if (!file5.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName5 = uPic.saveFile5(file5, request);

			if (renameFileName5 != null) { // 파일이 잘 저장된 경우
				mqf.setQ1PicOri(file5.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ1PicRe(renameFileName5);
			}
		}

		if (!file6.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName6 = uPic.saveFile6(file6, request);

			if (renameFileName6 != null) { // 파일이 잘 저장된 경우
				mqf.setQ2PicOri(file6.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ2PicRe(renameFileName6);

			}
		}
		
		if (!file7.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName7 = uPic.saveFile7(file7, request);

			if (renameFileName7 != null) { // 파일이 잘 저장된 경우
				mqf.setQ3PicOri(file7.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ3PicOri(renameFileName7);
			}
		}

		if (!file8.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName8 = uPic.saveFile8(file8, request);

			if (renameFileName8 != null) { // 파일이 잘 저장된 경우
				mqf.setQ4PicOri(file8.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ4PicOri(renameFileName8);
			}
		}

		if (!file9.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName9 = uPic.saveFile9(file9, request);

			if (renameFileName9 != null) { // 파일이 잘 저장된 경우
				mqf.setQ5PicOri(file9.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ5PicOri(renameFileName9);
			}
		}
		
		int result = uService.insertMaster(msu);
		int schoolresult = uService.insertMasterSchool(msc);
		int snsresult = uService.insertMasterSns(msn);
		int qfcresult = uService.insertMasterQfc(mqf);
		if (result > 0) {
			redirectAttributes.addAttribute("count", 1);
			return "redirect:index2.do";
		} else {
			model.addAttribute("msg", "능력자등록실패!");
			return "common/errorPage";
		}

	}

	/**
	 * 12. 닉네임 중복체크 AJAX
	 * 
	 * @param nickName
	 * @return
	 * @throws IOException
	 */
	@ResponseBody // AJAX
	@RequestMapping("nickCheck.do")
	public String nickCheck(String nickname){
		
		int result = uService.nickCheck(nickname);

		if (result > 0) { // 중복 존재
			return "fail";
		} else {
			return "ok";
		}
	}
	
	@RequestMapping(value = "kakaopay.do", method = RequestMethod.POST)
	public String userLogin(String total_pay, Model model) { // view에 전달하는 데이터를 Model에 담는다.
		model.addAttribute("total_pay", total_pay); 
		return "common/kakaopay";
	}
	
	
	@RequestMapping(value = "neezcharge.do", method = RequestMethod.POST) public
	    String wallet(Model model, String money,HttpSession session) { // view에 전달하는 데이터를 Model에 담는다.
	  
		User u = (User) session.getAttribute("loginUser");
		  
		String email = u.getEmail();
		 
		HashMap<String, String> map = new HashMap<String, String>();
		  
		map.put("email", email);
		map.put("money",money);
		 
		int result = uService.neezcharge(map);
		 
		if(result==1) {
			return "redirect:wallet.do";
		}else {
			System.out.println("결제오류");
			return "redirect:index.do";
		}
	 }
	
	/**
	 * 13. 이메일 DB에 존재 확인 후 메일 송신
	 * @param email
	 * @return
	 */
	@ResponseBody // AJAX
	@RequestMapping("emailCheck.do")
	public String emailCheck(String email,Model model) {
		
		int result = uService.emailCheck(email);
		if (result == 1) { // 저장된 이메일 확인
			String t = "비밀번호 찾기 인증 이메일 입니다.";
			model.addAttribute("email",email);
			return usign.sendEmail(email, t);
		}
		return "fail";
	}
	
	/*
	 * 13.능력자 관리 리스트  (  )
	 * 
	 * @param msu
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "signUpMasterManage.do", method =  {RequestMethod.GET, RequestMethod.POST})
	public String userLogin(UserMaster msu, UserMasterQualifcation mqf, UserMasterSchool msc,
							UserMasterSns msn,HttpSession session,Model model) { // view에 전달하는 데이터를 Model에 담는다.
		
	   	// 로그인 세션 정보
	    User u = (User)session.getAttribute("loginUser");
		UserMaster master = pService.getMaster(u);
		UserMasterSchool masterSch = uService.getMasterSch(u);
		UserMasterQualifcation masterQfa = uService.getMasterQfa(u);
		UserMasterSns masterSns = uService.getMasterSns(u);
		List<String> category = pService.masterCategory(master);
	    String string = category.toString();
	    String real = string.substring(1,string.length()-1);
			model.addAttribute("masterList", master);
			model.addAttribute("SchoolList", masterSch);
			model.addAttribute("QualifcationList", masterQfa);
			model.addAttribute("SnsList", masterSns);
			model.addAttribute("categoryList", real);
			return "user/signUpMasterManage";
	}
	
	/**
	 * 14.능력자 수정 뷰 
	 * 
	 * @param msu
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "signUpMasterUpdateView.do", method = RequestMethod.POST)
	public String signUpMasterUpdateView(HttpSession session,Model model) {
	    User u = (User)session.getAttribute("loginUser");
		UserMaster master = pService.getMaster(u);
		UserMasterSchool masterSch = uService.getMasterSch(u);
		UserMasterQualifcation masterQfa = uService.getMasterQfa(u);
		UserMasterSns masterSns = uService.getMasterSns(u);
		List<String> category2 = pService.masterCategory(master);
	    String string = category2.toString();
	    String real = string.substring(1,string.length()-1);
		// 상품 카테고리 3분류
		List<ProductCategory> category = null;
		category = uService.category();
			model.addAttribute("category", JSONArray.fromObject(category));
			model.addAttribute("masterList", master);
			model.addAttribute("SchoolList", masterSch);
			model.addAttribute("QualifcationList", masterQfa);
			model.addAttribute("SnsList", masterSns);
			model.addAttribute("categoryList", real);
		return "user/siguUPMasterUpdate";
	}
	
	/**
	 * 14.능력자 수정 
	 * 
	 * @param msu
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "signUpMasterUpdate.do", method = RequestMethod.POST)
	public String signUpMasterUpdate(UserMaster msu, UserMasterSchool msc, UserMasterSns msn, UserMasterQualifcation mqf,
			Model model, HttpServletRequest request, HttpSession session,
			@RequestParam(name = "_mProPicOri", required = false) MultipartFile file1,
			@RequestParam(name = "_mIdPicOri", required = false) MultipartFile file2,
			@RequestParam(name = "_sUnivPicOri", required = false) MultipartFile file3,
			@RequestParam(name = "_sUniv2PicOri", required = false) MultipartFile file4,
			@RequestParam(name = "_q1PicOri", required = false) MultipartFile file5,
			@RequestParam(name = "_q2PicOri", required = false) MultipartFile file6,
			@RequestParam(name = "_q3PicOri", required = false) MultipartFile file7,
			@RequestParam(name = "_q4PicOri", required = false) MultipartFile file8,
			@RequestParam(name = "_q5PicOri", required = false) MultipartFile file9) {
		// @RequestParam어노테이션을 이용한 업로드 파일 접근
		// form의 enctype이 multipart/form-data로 작성해되어있어야하고, method=post이어야한다.
		// MultipartResolver가 multipartFile객체를 컨트롤러로 전달할 수 있다.

		if (!file1.getOriginalFilename().equals("") && !file2.getOriginalFilename().equals("")) {
			
			// 서버에 업로드 해야한다.
			String renameFileName1 = uPic.saveFile1(file1, request);
			String renameFileName2 = uPic.saveFile2(file2, request);
			 
			if (renameFileName1 != null && renameFileName2 != null) { // 파일이 잘 저장된 경우
				msu.setmProPicOri(file1.getOriginalFilename()); // 파일명만 DB에저장
				msu.setmProPicRe(renameFileName1);

				msu.setmIdPicOri(file2.getOriginalFilename());
				msu.setmIdPicRe(renameFileName2);

			}
			System.out.println("닉네임 가져오니 ? : " + msu);
		}

		if (!file3.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName3 = uPic.saveFile3(file3, request);

			if (renameFileName3 != null) { // 파일이 잘 저장된 경우
				msc.setsUnivPicOri(file3.getOriginalFilename()); // 파일명만 DB에저장
				msc.setsUnivPicRe(renameFileName3);
			}
		}

		if (!file4.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName4 = uPic.saveFile4(file4, request);

			if (renameFileName4 != null) { // 파일이 잘 저장된 경우
				msc.setsUniv2PicOri(file4.getOriginalFilename()); // 파일명만 DB에저장
				msc.setsUniv2PicRe(renameFileName4);
			}
		}

		if (!file5.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName5 = uPic.saveFile5(file5, request);

			if (renameFileName5 != null) { // 파일이 잘 저장된 경우
				mqf.setQ1PicOri(file5.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ1PicRe(renameFileName5);
			}
		}

		if (!file6.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName6 = uPic.saveFile6(file6, request);

			if (renameFileName6 != null) { // 파일이 잘 저장된 경우
				mqf.setQ2PicOri(file6.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ2PicRe(renameFileName6);

			}
		}
		
		if (!file7.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName7 = uPic.saveFile7(file7, request);

			if (renameFileName7 != null) { // 파일이 잘 저장된 경우
				mqf.setQ3PicOri(file7.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ3PicOri(renameFileName7);
			}
		}

		if (!file8.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName8 = uPic.saveFile8(file8, request);

			if (renameFileName8 != null) { // 파일이 잘 저장된 경우
				mqf.setQ4PicOri(file8.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ4PicOri(renameFileName8);
			}
		}

		if (!file9.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName9 = uPic.saveFile9(file9, request);

			if (renameFileName9 != null) { // 파일이 잘 저장된 경우
				mqf.setQ5PicOri(file9.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ5PicOri(renameFileName9);
			}
		}

		int result = uService.updatetMaster(msu);
		int schoolresult = uService.updateMasterSchool(msc);
		int snsresult = uService.updateMasterSns(msn);
		int qfcresult = uService.updateMasterQfc(mqf);
		if (result > 0) {
			return "redirect:index.do";
		} else {
			model.addAttribute("msg", "능력자등록실패!");
			return "common/errorPage";
		}

	}
}