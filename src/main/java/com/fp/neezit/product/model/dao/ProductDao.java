package com.fp.neezit.product.model.dao;

import java.util.List;

import com.fp.neezit.product.model.vo.ProductCategory;

public interface ProductDao {
	
	//카테고리
	public List<ProductCategory> category() throws Exception;

	public List<ProductCategory> categoryList(int navNo) throws Exception;
	
	public List<ProductCategory> categoryList2(int navNo) throws Exception;
}
