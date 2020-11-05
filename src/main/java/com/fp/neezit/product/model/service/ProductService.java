package com.fp.neezit.product.model.service;

import java.util.List;

import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserMaster;

public interface ProductService {

	// 카테고리
	public List<ProductCategory> category();

	public List<ProductCategory> categoryList(int navNo);

	public List<ProductCategory> categoryList2(int navNo);

	public UserMaster getMaster(User u);

	/**
	 * 5. 상품 등록
	 * @param product
	 * @return
	 */
	public int insertProduct(Product product);

	/** 6. 상품등록 카테고리 가져오기
	 * @param master
	 * @return
	 */
	public List<String> masterCategory(UserMaster master);

	/**
	 * 7. 나의 상품 목록 가져오기
	 * @param master
	 * @return
	 */
	public List<Product> myProductList(UserMaster master); 

}