package com.fp.neezit.product.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fp.neezit.product.model.service.ProductService;
import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserMaster;

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
	   	  
	      User u = (User)session.getAttribute("loginUser");
	      
	      UserMaster master = pService.getMaster(u);
	      
	      // 상품 카테고리 3분류
	      List<ProductCategory> category = pService.category();
	      System.out.println(category);
	      model.addAttribute("category", JSONArray.fromObject(category));
	      
	      model.addAttribute("master",master);
	      
	      return "user/product/productInsert";
   }
   
   /**
    * 3. 상품등록 메소드
    * @param model
 	* @param product
 	* @return
 	*/
   @RequestMapping(value = "pInsert.do")
   public String insertProduct(Model model,Product product) {
	   	  
		  int result = pService.insertProduct(product);
		 
		  if(result==1) {
			   return "user/product/productDetail";
		  }else {
			   return "user/product/productDetail";
		  }
		 
   }

}