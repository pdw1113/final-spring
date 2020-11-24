package com.fp.neezit.product.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.fp.neezit.product.model.service.ProductService;
import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.product.model.vo.Reply;
import com.fp.neezit.product.model.vo.WishList;
import com.fp.neezit.user.model.service.UserService;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserBuyList;
import com.fp.neezit.user.model.vo.UserMaster;
import com.fp.neezit.user.model.vo.UserMasterSns;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;

import net.sf.json.JSONArray;
@SessionAttributes("product") 
@Controller
public class ProductController { 

	@Autowired
	ProductService pService;
	
	@Autowired
	UserService uService;

	@RequestMapping("productListSearch.do")
	public String productListSearch() {
		return "user/product/productListSearch"; 
	}

	/** 1. 상품 리스트 메소드
	 * @param model
	 * @param navNo
	 * @return
	 */
	@RequestMapping(value = "productList.do", method = RequestMethod.GET)
	public String productList(Model model, int navNo, String what){
		List<ProductCategory> category = pService.categoryList(navNo);
		List<ProductCategory> category2 = pService.categoryList2(navNo);

		if(what == "최신순") {
			what = "";
		}
		
		System.out.println("정렬 순서 : " + what);

		String no = Integer.toString(navNo);
		String start = "1";
		String end = "9";
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("no", no);
		map.put("start", start);
		map.put("end", end);

		map.put("no", no);
		map.put("what", what);

		List<Product> productList = pService.productList(map);

		model.addAttribute("categoryList", JSONArray.fromObject(category));
		model.addAttribute("categoryList2", JSONArray.fromObject(category2));
		model.addAttribute("productList", productList);
		model.addAttribute("what", what);

		return "user/product/productList";
	}
	
	/**
	 * 1─1. 리스트 무한 스크롤
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping(value="infinityScroll.do", produces="application/json; charset=UTF-8")
	public void infinityScroll(HttpServletResponse response, int navNo, int startPage, int endPage, String what) throws JsonIOException, IOException {
		System.out.println("1분류 : " + navNo);
		System.out.println("시작페이지 : " + startPage);
		System.out.println("끝 페이지 : " + endPage);
		System.out.println("정렬 순서 : " + what);
		System.out.println("----------------");
		
		String no = Integer.toString(navNo);
		String start = Integer.toString(startPage);
		String end = Integer.toString(endPage);
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("no", no);
		map.put("start", start);
		map.put("end", end);
		map.put("what", what);
		
		List<Product> scrollList = pService.productList(map);
		
		response.setContentType("application/json; charset=utf-8");

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		gson.toJson(scrollList,response.getWriter());
	}

	/**
	 * 2. 상품등록 페이지 이동 메소드
	 * @param model
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "productInsertPage.do" , method = RequestMethod.GET)
	public String getGoodsRegister(Model model,HttpSession session){

		// 로그인 세션 정보
		User u = (User)session.getAttribute("loginUser");

		// 능력자 정보
		UserMaster master = pService.getMaster(u);

		// 능력자 카테고리 정보
		List<String> category = pService.masterCategory(master);

		// List를 String으로 치환
		String string = category.toString();

		// "[", "]" 잘라내기.
		String real = string.substring(1,string.length()-1);

		model.addAttribute("category", real);

		model.addAttribute("master", master);

		return "user/product/productInsert";
	}


	/**
	 * 3. 상품등록 메소드
	 * @param model
	 * @param product
	 * @param request
	 * @param file
	 * @return
	 */
	@RequestMapping(value = "pInsert.do")
	public String insertProduct(Model model,Product product, HttpServletRequest request,
			@RequestParam(name="upload", required=false) MultipartFile file) {

		// @RequestParam어노테이션을 이용한 업로드 파일 접근
		// form의 enctype이 multipart/form-data로 작성되어있어야하고, method=POST이어야한다.
		// MultipartResolver가 multipartFile객체를 컨트롤러로 전달할 수 있다.
		// 상품이미지 등록
		if(!file.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renamePic = saveFile(file,request);
			if(renamePic != null) { // 파일이 잘 저장된 경우
				product.setPic(file.getOriginalFilename());   // 원본의 파일명만 DB에저장            
				product.setRenamePic(renamePic);
			}
		}
		
		int result = pService.insertProduct(product);
		
		if(result==1) {
			return "redirect:myProductList.do";
		}else {
			return "redirect:index.do";
		}
	}

	/**
	 * 4. 파일이 저장될 경로를 설정 메소드 
	 * @param file
	 * @param request
	 * @return
	 */
	private String saveFile(MultipartFile file, HttpServletRequest request) {

		// 파일이 저장될 경로를 설정하기
		// 웹 서버의 contextPath를 불러와서 폴더의 경로를 가져온다
		// webapp하위의 resources
		String root = request.getSession().getServletContext().getRealPath("resources");

		// 파일 경로
		// \를 문자로 인식시키기 위해서는 "\\"를 사용한다.
		String savePath = root + "\\pUploadFiles";

		File folder = new File(savePath);

		if(!folder.exists()) { // 폴더가 있는지 없는지
			folder.mkdirs(); // 폴더가 없다면 생성한다.
		}
		// 파일명을 rename 과정을 추가 => "년월일시분초.확장자"로 변경
		String pic = file.getOriginalFilename();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); 

		String renamePic = sdf.format(new java.sql.Date(System.currentTimeMillis()))+"."
				+ pic.substring(pic.lastIndexOf(".")+1);

		String renamePath = folder + "\\" + renamePic; // 실제 저장될 파일 경로 + 파일명

		try {
			file.transferTo(new File(renamePath)); // 전달받은 file이 rename명으로 이 때 파일이 저장된다.
		}catch(Exception e) {
			System.out.println("파일 전송 에러" + e.getMessage());
		}
		return renamePic;
	}

	/**
	 * 5. 나의 상품 목록 메소드
	 * @param product
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("myProductList.do")
	public String myProductList(Product product, Model model, HttpSession session) {

		// 로그인 세션 정보
		User u = (User)session.getAttribute("loginUser");

		// 능력자 정보
		UserMaster master = pService.getMaster(u);

		// 나의 상품 목록
		List<Product> myProductList = pService.myProductList(master);

		model.addAttribute("myProductList", myProductList);

		return "user/product/myProductList";
	}

	/**
	 * 6. 상품 목록 ─ 상품 상세 메소드
	 * @param product
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("myProductDetail.do")
	public String myProductDetail(int no, Model model,HttpSession session) {
 
		// 상품 정보 가져오기
		Product p = pService.getProductDetail(no);

		// 상품 정보 가져오기 2
		UserMaster m = pService.getProductDetail(p.getNickName());
		
		// 상품 정보 가져오기 3
		UserMasterSns sns = pService.getProductSnsDetail(m.getEmail());

		// 찜 정보 가져오기
		User u = (User)session.getAttribute("loginUser");         // 로그인 세션 정보
		String str = Integer.toString(p.getNo());
		HashMap<String, String> map = new HashMap<String, String>();    // HashMap 선언
		map.put("email", u.getEmail());    
		map.put("no", str);
		WishList wl = pService.getWishListDetail(map);
		int replyCount = pService.getReplyCount(p.getNickName());
		
		// 현재 금액 가져오기
		int cash = uService.userCash(u.getEmail());

		if(p != null && m != null && sns != null) {
			model.addAttribute("product", p);
			model.addAttribute("master", m);
			model.addAttribute("sns", sns);
			model.addAttribute("replyCount", replyCount);
			model.addAttribute("wishList", wl);
			model.addAttribute("cash", cash);
			return "user/product/productDetail";
		}

		return "common/errorPage";
	}
	
	/**
	 * 6─1. 리스트 상품 상세
	 * 
	 * @param no
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("productDetail.do")
	public String productDetail(int no, Model model,HttpSession session) {
		// 상품 정보 가져오기
		Product p = pService.getProductDetail(no);

		// 상품 정보 가져오기 2
		UserMaster m = pService.getProductDetail(p.getNickName());

		UserMasterSns sns = pService.getProductSnsDetail(m.getEmail());

		String str = Integer.toString(p.getNo());              // map에 담기위해 문자열로 변환(email이 String이기 때문에 일치시키기 위함)
		
		HashMap<String, String> map = new HashMap<String, String>();    // HashMap 선언
		
		// 찜 정보 가져오기
		User u = (User)session.getAttribute("loginUser");         // 로그인 세션 정보
		if(u != null) { // 로그인
			map.put("email", u.getEmail()); 
		}else {
			map.put("email", ""); 
		}
		
		map.put("no", str);
		WishList wl = pService.getWishListDetail(map);
		int replyCount = pService.getReplyCount(p.getNickName());

		if(p != null && m != null) {
			model.addAttribute("product", p);
			model.addAttribute("master", m);
			model.addAttribute("sns", sns);
			model.addAttribute("replyCount", replyCount);
			model.addAttribute("wishList", wl);
			return "user/product/productDetail";
		}

		return "common/errorPage";
	}

	/**
	 * 7. 댓글 등록 메소드
	 * @param r
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="addReply.do")
	public String addReply(Reply r) {
		int result = pService.insertReply(r);

		if(result == 1) {

			// 능력자 별점 업데이트
			int starResult = pService.updateMasterStar(r.getpNo());
			// 상품 구매자 수 업데이트
			int buyCount = pService.updateBuyCount(r.getpNo());
			// 상품 별점 업데이트
			int productStar = pService.updateProductStar(r.getpNo());

			if(starResult == 1 && buyCount == 1) return "success";
			else return "fail";

		}else {
			return "fail";
		}
	}

	/**
	 * 8. 댓글 리스트 조회
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping(value="rList.do", produces="application/json; charset=UTF-8")
	public void getReplyList(HttpServletResponse response, int pNo) throws JsonIOException, IOException {
		ArrayList<Reply> rList = pService.selectReplyList(pNo);
		response.setContentType("application/json; charset=utf-8");

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(rList,response.getWriter());
	}

	/**
	 * 9. 댓글 수정
	 * 
	 * @param review
	 * @param no
	 * @return
	 */
	@ResponseBody
	@RequestMapping("modifyComment.do")
	public String modifyComment(String review, int no){

		String num = Integer.toString(no);

		HashMap<String, String> map = new HashMap<String, String>();

		map.put("review", review);    
		map.put("no", num);

		int result = pService.modifyComment(map);

		if (result > 0) {
			return "ok";
		} else {
			return "fail";
		}
	}

	/**
	 * 10. 찜등록 AJAX
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

		int duplicate = pService.wishDuplicate(map2);    // duplicate 라는변수에  selectone으로 결과값(true이면 1 false면 0) 을받는다.

		
		// 자기상품 자기가 찜 불가능하게하는 메소드
		HashMap<String, String> map3 = new HashMap<String, String>();    // HashMap 선언
		map3.put("pName", pName);    
		map3.put("email", email);
		
		int ProductName = pService.wishProductName(map3); // 자기상품 자기가 찜 불가하기위한 객체(카운트값으로 받아온다)
		int result = 0;      // result 값 초기화
		if(duplicate == 0 && ProductName == 0) {    // 중복값이 없으면 insert 실행시켜준다.
			result = pService.wishInsert(map);    //result 변수에 insert 메소드 결과값 받아준다.
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

		Product p = pService.getProductDetail(no);
		User u = (User)session.getAttribute("loginUser");         // 로그인 세션 정보
		String str = Integer.toString(p.getNo());

		HashMap<String, String> map = new HashMap<String, String>();    // HashMap 선언
		map.put("email", u.getEmail());    
		map.put("no", str);

		int result = pService.wishDelete(map);

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
		product = pService.wishList(u);

		// model객체에 키,벨류 값으로 넣어주고 wishList.jsp로 리턴시켜준다.
		model.addAttribute("product",product);
		return "user/myPage/wishList";
	}

	/**
	 * 14. 상품 수정 뷰
	 * @param no
	 * @param pic
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("productUpdate.do")
	public String productUpdate(int no,String pic,Model model,HttpSession session ) {
		
		// 로그인 세션 정보
		User u = (User)session.getAttribute("loginUser");



		Product p = pService.getProductDetail(no);
		
		// 상품 정보 가져오기 2
		UserMaster m = pService.getProductDetail(p.getNickName());
		
		// 능력자 정보
		UserMaster master = pService.getMaster(u);

		// 능력자 카테고리 정보
		List<String> category = pService.masterCategory(master);

		// List를 String으로 치환
		String string = category.toString();
		// "[", "]" 잘라내기.
		String real = string.substring(1,string.length()-1);
		
		if(p != null) {
			model.addAttribute("product", p);
			model.addAttribute("category", real);
			model.addAttribute("master", master);
			return "user/product/productUpdate";
		}

		return "common/errorPage";
	}
	
	
	/**
	 * 15. 상품 수정
	 * @param model
	 * @param product
	 * @param request
	 * @param session
	 * @param file
	 * @param pPic
	 * @return
	 */
	@RequestMapping("pUpdate.do")
	public String pUpdate(Model model,Product product, HttpServletRequest request,HttpSession session,
			@RequestParam(name="upload", required=false) MultipartFile file,
			@RequestParam(name="pPic", required=false) String pPic) {
		// 로그인 세션 정보
		User u = (User)session.getAttribute("loginUser");

		// 능력자 정보
		UserMaster master = pService.getMaster(u);
		
		if(!file.getOriginalFilename().equals("")) {
			// 서버에 업로드 해야한다.
			String renamePic = saveFile(file,request);
			if(renamePic != null) { // 파일이 잘 저장된 경우
				product.setPic(file.getOriginalFilename());   // 원본의 파일명만 DB에저장            
				product.setRenamePic(renamePic);
			}
		}
		// 널값 넣을시 기존 프로필사진 등록
		if(product.getPic() == null) {
			product.setRenamePic(pPic);
		}

		int result = pService.Productupdate(product);
		
		int no = product.getNo();

		if (result > 0) {
			model.addAttribute("master", master);
			return "redirect:myProductDetail.do?no=" + no;
		} else {
			model.addAttribute("msg", "상품수정 실패!");
			return "common/errorPage";
		}

	}
	
	/**
	 * 16. 상품 삭제
	 * @param no
	 * @return
	 */
	@RequestMapping("productDelete.do")
	public String productDelete(int no) {
		
		int result = pService.productDelete(no);		
		
		if(result > 0) {
		return "redirect:myProductList.do";
		}else {
			return "common/errorPage";
		}
	}
}