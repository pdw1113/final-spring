package com.fp.neezit.user.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fp.neezit.manager.model.service.ManagerService;
import com.fp.neezit.manager.model.vo.Forbidden;
import com.fp.neezit.product.model.service.ProductService;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.user.common.UserMasterPic;
import com.fp.neezit.user.model.service.UserService;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserMaster;
import com.fp.neezit.user.model.vo.UserMasterQualifcation;
import com.fp.neezit.user.model.vo.UserMasterSchool;
import com.fp.neezit.user.model.vo.UserMasterSns;

import net.sf.json.JSONArray;

@Controller
public class UserMasterController {

	@Autowired
	private UserService uService;
	
	@Autowired
	private ProductService pService;
	
	@Autowired
	ManagerService mService;
	
	@Autowired
	private UserMasterPic uPic;
	
	/**
	 * 1. 능력자 등록 카테고리 가져오기
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "signUpMasterCategory.do", method = RequestMethod.GET)
	public String signUpMasterCategory(Model model) throws Exception {
		
		// 금지어 리스트
		List<Forbidden> fList = null;
		fList = mService.fList();

		// 상품 카테고리 3분류
		List<ProductCategory> category = null;
		category = uService.category();
		System.out.println(category);
		model.addAttribute("category", JSONArray.fromObject(category));
		model.addAttribute("fList", JSONArray.fromObject(fList));
		return "user/signUpMaster";
	}
	
	/**
	 * 2. 능력자 등록 메소드
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
		
		// 프로필 및 신분증
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
		}

		// 대학교
		if (!file3.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName3 = uPic.saveFile3(file3, request);

			if (renameFileName3 != null) { // 파일이 잘 저장된 경우
				msc.setsUnivPicOri(file3.getOriginalFilename()); // 파일명만 DB에저장
				msc.setsUnivPicRe(renameFileName3);
			}
		}

		// 대학원
		if (!file4.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName4 = uPic.saveFile4(file4, request);

			if (renameFileName4 != null) { // 파일이 잘 저장된 경우
				msc.setsUniv2PicOri(file4.getOriginalFilename()); // 파일명만 DB에저장
				msc.setsUniv2PicRe(renameFileName4);
			}
		}
		
		// 자격증 1
		if (!file5.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName5 = uPic.saveFile5(file5, request);

			if (renameFileName5 != null) { // 파일이 잘 저장된 경우
				mqf.setQ1PicOri(file5.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ1PicRe(renameFileName5);
			}
		}
		
		// 자격증 2
		if (!file6.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName6 = uPic.saveFile6(file6, request);

			if (renameFileName6 != null) { // 파일이 잘 저장된 경우
				mqf.setQ2PicOri(file6.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ2PicRe(renameFileName6);

			}
		}
		
		// 자격증 3
		if (!file7.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName7 = uPic.saveFile7(file7, request);
			System.out.println(renameFileName7);
			if (renameFileName7 != null) { // 파일이 잘 저장된 경우
				mqf.setQ3PicOri(file7.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ3PicRe(renameFileName7);
			}
		}
		
		// 자격증 5
		if (!file8.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName8 = uPic.saveFile8(file8, request);

			if (renameFileName8 != null) { // 파일이 잘 저장된 경우
				mqf.setQ4PicOri(file8.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ4PicRe(renameFileName8);
			}
		}
		
		// 자격증 6
		if (!file9.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName9 = uPic.saveFile9(file9, request);

			if (renameFileName9 != null) { // 파일이 잘 저장된 경우
				mqf.setQ5PicOri(file9.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ5PicRe(renameFileName9);
			}
		}
		
		int result = uService.insertMaster(msu);
		System.out.println("insert : " + msu);
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
	 * 3. 닉네임 중복체크 AJAX
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
	
	/**
	 * 3─1. 닉네임 중복체크 AJAX(업데이트)
	 * 
	 * @param nickName
	 * @return
	 * @throws IOException
	 */
	@ResponseBody // AJAX
	@RequestMapping("nickCheckUp.do")
	public String nickCheck2(String nickname2, String email2){
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("email2", email2);
		map.put("nickname2", nickname2);
		int result = uService.nickCheck2(map);

		if (result > 0) { // 중복 존재
			return "fail";
		} else {
			return "ok";
		}
	}

	/*
	 * 4.능력자 관리 뷰
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
	 * 5.능력자 수정 뷰 
	 * 
	 * @param msu
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "signUpMasterUpdateView.do", method = RequestMethod.POST)
	public String signUpMasterUpdateView(HttpSession session,Model model) {
		
		// 금지어 리스트
		List<Forbidden> fList = null;
		fList = mService.fList();

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
			model.addAttribute("fList", JSONArray.fromObject(fList));
		return "user/siguUPMasterUpdate";
	}

	/**
	 * 6.능력자 수정 
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
			@RequestParam(name = "_q5PicOri", required = false) MultipartFile file9,
			@RequestParam(name = "_mProPicRe", required = false) String pic1,
			@RequestParam(name = "_mIdPicRe", required = false) String pic2,
			@RequestParam(name = "_sUnivPicRe", required = false) String pic3,
			@RequestParam(name = "_sUniv2PicRe", required = false) String pic4,
			@RequestParam(name = "_q1PicRe", required = false) String pic5,
			@RequestParam(name = "_q2PicRe", required = false) String pic6,
			@RequestParam(name = "_q3PicRe", required = false) String pic7,
			@RequestParam(name = "_q4PicRe", required = false) String pic8,
			@RequestParam(name = "_q5PicRe", required = false) String pic9,
			@RequestParam(name = "_mWorkDay", required = false) String mDa,
			@RequestParam(name = "_mWorkStyle", required = false) String mWs) {
		// @RequestParam어노테이션을 이용한 업로드 파일 접근
		// form의 enctype이 multipart/form-data로 작성해되어있어야하고, method=post이어야한다.
		// MultipartResolver가 multipartFile객체를 컨트롤러로 전달할 수 있다.
		
		// 프로필
		if (!file1.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName1 = uPic.saveFile1(file1, request);

			if (renameFileName1 != null) { // 파일이 잘 저장된 경우
				msu.setmProPicOri(file1.getOriginalFilename()); // 파일명만 DB에저장
				msu.setmProPicRe(renameFileName1);
			}
		}
		
		// 널값 넣을시 기존 프로필사진 등록
		if(msu.getmProPicOri() == null) {
			msu.setmProPicRe(pic1);
		}
		
		// 신분증
		if (!file2.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName2 = uPic.saveFile2(file2, request);

			if (renameFileName2 != null) { // 파일이 잘 저장된 경우
				msu.setmIdPicOri(file2.getOriginalFilename()); // 파일명만 DB에저장
				msu.setmIdPicRe(renameFileName2);
			}
		}
		
		// 널값 넣을시 기존 신분증사진 등록
		if(msu.getmIdPicOri() == null) {
			msu.setmIdPicRe(pic2);
		}

		// 대학교
		if (!file3.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName3 = uPic.saveFile3(file3, request);

			if (renameFileName3 != null) { // 파일이 잘 저장된 경우
				msc.setsUnivPicOri(file3.getOriginalFilename()); // 파일명만 DB에저장
				msc.setsUnivPicRe(renameFileName3);
			}
		}
		
		// 널값 넣을시 기존 대학교 사진 등록
		if(msc.getsUnivPicOri() == null) {
			msc.setsUnivPicRe(pic3);
		}
		
		// 대학원
		if (!file4.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName4 = uPic.saveFile4(file4, request);

			if (renameFileName4 != null) { // 파일이 잘 저장된 경우
				msc.setsUniv2PicOri(file4.getOriginalFilename()); // 파일명만 DB에저장
				msc.setsUniv2PicRe(renameFileName4);
			}
		}
		
		// 널값 넣을시 기존 대학원 사진 등록
		if(msc.getsUniv2PicOri() == null) {
			msc.setsUniv2PicRe(pic4);
		}
		
		// 자격증 1
		if (!file5.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName5 = uPic.saveFile5(file5, request);

			if (renameFileName5 != null) { // 파일이 잘 저장된 경우
				mqf.setQ1PicOri(file5.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ1PicRe(renameFileName5);
			}
		}
		
		// 널값 넣을시 기존 자격증1 사진 등록
		if(mqf.getQ1PicRe() == null) {
			mqf.setQ1PicRe(pic5);
		}
		
		// 자격증 2
		if (!file6.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName6 = uPic.saveFile6(file6, request);

			if (renameFileName6 != null) { // 파일이 잘 저장된 경우
				mqf.setQ2PicOri(file6.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ2PicRe(renameFileName6);

			}
		}
		
		// 널값 넣을시 기존 자격증2 사진 등록
		if(mqf.getQ2PicRe() == null) {
			mqf.setQ2PicRe(pic6);
		}
		
		
		// 자격증 3
		if (!file7.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName7 = uPic.saveFile7(file7, request);

			if (renameFileName7 != null) { // 파일이 잘 저장된 경우
				mqf.setQ3PicOri(file7.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ3PicRe(renameFileName7);
			}
		}
		
		// 널값 넣을시 기존 자격증3 사진 등록
		if(mqf.getQ3PicRe() == null) {
			mqf.setQ3PicRe(pic7);
		}

		// 자격증 4
		if (!file8.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName8 = uPic.saveFile8(file8, request);

			if (renameFileName8 != null) { // 파일이 잘 저장된 경우
				mqf.setQ4PicOri(file8.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ4PicRe(renameFileName8);
			}
		}
		
		// 널값 넣을시 기존 자격증4 사진 등록
		if(mqf.getQ4PicRe() == null) {
			mqf.setQ4PicRe(pic8);
		}


		// 자격증 5
		if (!file9.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renameFileName9 = uPic.saveFile9(file9, request);

			if (renameFileName9 != null) { // 파일이 잘 저장된 경우
				mqf.setQ5PicOri(file9.getOriginalFilename()); // 파일명만 DB에저장
				mqf.setQ5PicRe(renameFileName9);
			}
		}
		
		// 널값 넣을시 기존 자격증5사진 등록
		if(mqf.getQ5PicRe() == null) {
			mqf.setQ5PicRe(pic9);
		}
		

	
		// 널값 넣을시 기존 workDay 등록
		if(msu.getmWorkDay().equals("")) {
			msu.setmWorkDay(mDa);
		}

		// 널값 넣을시 기존 workStyle 등록
		if(msu.getmWorkStyle().equals("")) {
			msu.setmWorkStyle(mWs);
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
