package com.fp.neezit.product.model.service;

import java.util.HashMap;
import java.util.ArrayList;
import java.util.List;

import com.fp.neezit.manager.model.vo.Mcomfirm;
import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.product.model.vo.WishList;
import com.fp.neezit.product.model.vo.Reply;
import com.fp.neezit.user.model.vo.PageInfo;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserBuyList;
import com.fp.neezit.user.model.vo.UserMaster;
import com.fp.neezit.user.model.vo.UserMasterSns;

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

	public Product getProductDetail(int no);

	public UserMaster getProductDetail(String nickName);
	
	public UserMasterSns getProductSnsDetail(String email);
	
	/**
	 * 댓글 등록 메소드
	 * @param r
	 * @return
	 */
	public int insertReply(Reply r);

	/**
	 * 댓글 목록 메소드
	 * @param pNo
	 * @return
	 */
	public ArrayList<Reply> selectReplyList(int pNo);

	/**
	 * 능력자 별점 업데이트
	 * @param getpNo
	 * @return
	 */
	public int updateMasterStar(int pNo);

	/**
	 * 능력자의 구매자 수
	 * @param nickName
	 * @return
	 */
	public int getReplyCount(String nickName);

	/**
	 * Nav.jsp 상품 목록 대분류로 가져오기
	 * @param map
	 * @return
	 */
	public List<Product> productList(HashMap<String, String> map);

	/**
	 * 상품 별 구매자 수 업데이트
	 * @param getpNo
	 * @return
	 */
	public int updateBuyCount(int getpNo);

	/**
	 * 상품 별 별점 업데이트
	 * @param getpNo
	 * @return
	 */
	public int updateProductStar(int getpNo);
	
	public WishList getWishListDetail(HashMap<String, String> map);

	/**
	 * 댓글 수정 메소드
	 * @param map
	 * @return
	 */
	public int modifyComment(HashMap<String, String> map);

	public Product getProductUpdate(HashMap<Object, Object> map);

	public int Productupdate(Product product);

	public int productDelete(int no);

	public List<Product> productListSearch(PageInfo pi, HashMap<String, String> map);

	public int productListSearchCount(HashMap<String, String> map);

	/**
	 * 가격순
	 * @return
	 */
	public ArrayList<Product> getProductCost();

	/**
	 * 별점순
	 * @return
	 */
	public ArrayList<Product> getProductStar();

	/**
	 * 인기순
	 * @return
	 */
	public ArrayList<Product> getProductBest();

	/**
	 * 루키순
	 * @return
	 */
	public ArrayList<Product> getProductRookie();

	public Mcomfirm getConfirm(String nickName);
}