package com.fp.neezit.product.model.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fp.neezit.product.model.dao.ProductDao;
import com.fp.neezit.product.model.vo.ProductCategory;

@Service
public class ProductServiceImpl implements ProductService{

	@Inject
	private ProductDao dao;
	
	// 카테고리
	@Override
	public List<ProductCategory> category() throws Exception {
		return dao.category();
	}

	@Override
	public List<ProductCategory> categoryList(int navNo) throws Exception {
		return dao.categoryList(navNo);
	}

	@Override
	public List<ProductCategory> categoryList2(int navNo) throws Exception {
		return dao.categoryList2(navNo);
	}

}
