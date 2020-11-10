package com.fp.neezit.product.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.product.model.vo.WishList;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserMaster;
import com.fp.neezit.user.model.vo.UserMasterSns;

@Repository
public class ProductDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	// 카테고리
	public List<ProductCategory> category(){
		return sqlSession.selectList("productMapper.category");
	}

	public List<ProductCategory> categoryList(int navNo){
		return sqlSession.selectList("productMapper.categoryList", navNo);
	}

	public List<ProductCategory> categoryList2(int navNo){
		return sqlSession.selectList("productMapper.categoryList2", navNo);
	}

	public UserMaster getMaster(User u) {
		return sqlSession.selectOne("productMapper.getMaster",u);
	}

	public int insertProduct(Product product) {
		return sqlSession.insert("productMapper.insertProduct",product);
	}

	public List<String> masterCategory(UserMaster master) {
		return sqlSession.selectList("productMapper.masterCategory",master);
	}

	public List<Product> myProductList(UserMaster master) {
		return sqlSession.selectList("productMapper.myProductList", master);
	}

	public Product getProductDetail(int no) {
		return sqlSession.selectOne("productMapper.myProductDetail", no);
	}

	public UserMaster getProductDetail(String nickName) {
		return sqlSession.selectOne("productMapper.getProductDetail", nickName);
	}

	public UserMasterSns getProductSnsDetail(String email) {
		return sqlSession.selectOne("productMapper.getProductSnsDetail", email);
	}

	public int wishInsert(HashMap<String, String> map) {
		return sqlSession.insert("productMapper.insertWish",map);
	}

}