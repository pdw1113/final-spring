package com.fp.neezit.product.model.dao;

import java.util.HashMap;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.product.model.vo.ProductCategory;

import com.fp.neezit.product.model.vo.Reply;
import com.fp.neezit.product.model.vo.WishList;
import com.fp.neezit.user.model.vo.PageInfo;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserBuyList;
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

	public int insertReply(Reply r) {
		return sqlSession.insert("productMapper.insertReply",r);
	}

	public ArrayList<Reply> selectReplyList(int pNo) {
		return (ArrayList)sqlSession.selectList("productMapper.selectReplyList", pNo);
	}

	public int updateMasterStar(int pNo) {
		return sqlSession.update("productMapper.updateMasterStar", pNo);
	}

	public int getReplyCount(String nickName) {
		return sqlSession.selectOne("productMapper.getReplyCount", nickName);
	}

	public List<Product> productList(HashMap<String, String> map) {
		return (ArrayList)sqlSession.selectList("productMapper.getProductList", map);
	}
	public WishList getWishListDetail(HashMap<String, String> map) {
		return sqlSession.selectOne("productMapper.WishDetail",map);
	}

	public int updateBuyCount(int getpNo) {
		return sqlSession.update("productMapper.updateBuyCount", getpNo);
	}

	public int updateProductStar(int getpNo) {
		return sqlSession.update("productMapper.updateProductStar", getpNo);
	}

	public int modifyComment(HashMap<String, String> map) {
		return sqlSession.update("productMapper.modifyComment", map);
	}
	
	public Product getProductUpdate(HashMap<Object, Object> map) {
		return sqlSession.selectOne("productMapper.ProductUpdateView",map);
	}

	public int Productupdate(Product product) {
		return sqlSession.update("productMapper.ProductUpdate",product);
	}

	public int productDelete(int no) {
		return sqlSession.delete("productMapper.ProductDelete",no);
	}

	public List<Product> productListSearch(PageInfo pi,HashMap<String, String> map) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
	
		return (ArrayList)sqlSession.selectList("productMapper.productListSearch", map, rowBounds);
	}

	public int productListSearchCount(HashMap<String, String> map) {
		return sqlSession.selectOne("productMapper.productListSearchCount",map);
	}

	public ArrayList<Product> getProductCost() {
		return (ArrayList)sqlSession.selectList("productMapper.getProductCost");
	}

	public ArrayList<Product> getProductStar() {
		return (ArrayList)sqlSession.selectList("productMapper.getProductStar");
	}

	public ArrayList<Product> getProductBest() {
		return (ArrayList)sqlSession.selectList("productMapper.getProductBest");
	}

	public ArrayList<Product> getProductRookie() {
		return (ArrayList)sqlSession.selectList("productMapper.getProductRookie");
	}
}