package com.fp.neezit.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

	@RequestMapping("productDetail.do")
	public String supportnav() {
		return "user/product/productDetail";
	}
	
	@RequestMapping("productInsert.do")
	public String productInsert() {
		return "user/product/productInsert";
	}
	
	@RequestMapping("productList.do")
	public String productList() {
		return "user/product/productList";
	}
	
	@RequestMapping("productListSearch.do")
	public String productListSearch() {
		return "user/product/productListSearch"; 
	}
}
