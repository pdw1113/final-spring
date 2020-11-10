package com.fp.neezit.product.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import org.springframework.web.multipart.MultipartFile;

import com.fp.neezit.product.model.service.ProductService;
import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.product.model.vo.Reply;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserMaster;
import com.fp.neezit.user.model.vo.UserMasterSns;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;

import net.sf.json.JSONArray;

@Controller
public class ProductController {
   
   @Autowired
   ProductService pService;

   @RequestMapping("productDetail.do")
   public String productDetail() {
      return "user/product/productDetail";
   }
   
   @RequestMapping("productListSearch.do")
   public String productListSearch() {
      return "user/product/productListSearch"; 
   }
   
   /** 1. 상품 리스트 메소드
    * @param model
 	* @param navNo
 	* @return
 	*/
   @RequestMapping(value = "productList.do" , method = RequestMethod.GET)
   public String productList(Model model, int navNo){
      List<ProductCategory> category = null;
      List<ProductCategory> category2 = null;
      category = pService.categoryList(navNo);
      category2 = pService.categoryList2(navNo);
      
      model.addAttribute("categoryList", JSONArray.fromObject(category));
      model.addAttribute("categoryList2", JSONArray.fromObject(category2));
   
      return "user/product/productList";
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
				product.setPic(file.getOriginalFilename());	// 원본의 파일명만 DB에저장
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
    * 6. 상품 상세 메소드
    * @param product
 	* @param model
 	* @param session
 	* @return
 	*/
   @RequestMapping("myProductDetail.do")
   public String myProductDetail(int no, Model model) {
	  
	  // 상품 정보 가져오기
	  Product p = pService.getProductDetail(no);
	  
	  // 상품 정보 가져오기 2
	  UserMaster m = pService.getProductDetail(p.getNickName());
	  System.out.println(m);
	  
	  UserMasterSns sns = pService.getProductSnsDetail(m.getEmail());
	  
	  
	  
	  if(p != null && m != null) {
		  model.addAttribute("product", p);
		  model.addAttribute("master", m);
		  model.addAttribute("sns", sns);
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
		
		if(result > 0) {
			return "success";
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
	
	
   
   
   
   
}