package com.fp.neezit.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fp.neezit.product.model.service.ProductService;
import com.fp.neezit.product.model.vo.ProductCategory;

import net.sf.json.JSONArray;

@Controller
public class ProductController {
   
   @Autowired
   ProductService pService;

   @RequestMapping("productDetail.do")
   public String supportnav() {
      return "user/product/productDetail";
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
   
   
   
   @RequestMapping("productListSearch.do")
   public String productListSearch() {
      return "user/product/productListSearch"; 
   }
   
   
   @RequestMapping(value = "productInsert.do" , method = RequestMethod.GET)
   public String getGoodsRegister(Model model) throws Exception{
      
      
      // 상품 카테고리 3분류
      List<ProductCategory> category = null;
      category = pService.category();
      model.addAttribute("category", JSONArray.fromObject(category));
      
      return "user/product/productInsert";
   }

   
}