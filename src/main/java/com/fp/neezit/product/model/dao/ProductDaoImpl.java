package com.fp.neezit.product.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fp.neezit.product.model.vo.ProductCategory;

@Repository
public class ProductDaoImpl implements ProductDao{

	@Inject
	private SqlSession sql;

	// 카테고리
	@Override
	public List<ProductCategory> category() throws Exception {
		return sql.selectList("productMapper.category");
	}

	@Override
	public List<ProductCategory> categoryList(int navNo) throws Exception {
		return sql.selectList("productMapper.categoryList", navNo);
	}

	@Override
	public List<ProductCategory> categoryList2(int navNo) throws Exception {
		return sql.selectList("productMapper.categoryList2", navNo);
	}
	
	
	
	
}
