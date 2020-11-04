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
   
   @RequestMapping(value = "productList.do" , method = RequestMethod.GET)
   public String productList(Model model, int navNo) throws Exception{
      List<ProductCategory> category = null;
      List<ProductCategory> category2 = null;
      category = pService.categoryList(navNo);
      category2 = pService.categoryList2(navNo);
      
      
      model.addAttribute("categoryList", JSONArray.fromObject(category));
      model.addAttribute("categoryList2", JSONArray.fromObject(category2));
   
      
      return "user/product/productList";
   }
   
   @RequestMapping(value = "productInsertPage.do" , method = RequestMethod.GET)
   public String getGoodsRegister(Model model,HttpSession session) throws Exception{
	   
	      User u = (User)session.getAttribute("loginUser");
	      
	      UserMaster master = pService.getMaster(u);
	      
	      System.out.println(master);
	      // 상품 카테고리 3분류
	      List<ProductCategory> category = null;
	      category = pService.category();
	      model.addAttribute("category", JSONArray.fromObject(category));
	      
	      model.addAttribute("master",master);
	      
	      return "user/product/productInsert";
   }
   
   @RequestMapping(value = "pInsert.do")
   public String insertProduct(Model model,Product product) {
	   
	   System.out.println(product);
	   
		
		  int result = pService.insertProduct(product);
		 
		  if(result==1) {
			  System.out.println("삽입 완료");
		  }else {
			  System.out.println("삽입 실패");
		  }
		 
	   return "user/product/productDetail";
   }

}