package com.fp.neezit.product.model.service;

import java.util.HashMap;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.neezit.product.model.dao.ProductDao;
import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.product.model.vo.WishList;
import com.fp.neezit.product.model.vo.Reply;
import com.fp.neezit.user.model.vo.PageInfo;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserBuyList;
import com.fp.neezit.user.model.vo.UserMaster;
import com.fp.neezit.user.model.vo.UserMasterSns;

@Service
public class ProductServiceImpl implements ProductService{

   @Autowired
   private ProductDao pDao;
   
   // 카테고리
   @Override
   public List<ProductCategory> category() {
      return pDao.category();
   }

   @Override
   public List<ProductCategory> categoryList(int navNo){
      return pDao.categoryList(navNo);
   }

   @Override
   public List<ProductCategory> categoryList2(int navNo){
      return pDao.categoryList2(navNo);
   }

   @Override
   public UserMaster getMaster(User u) {
      return pDao.getMaster(u);
   }

	@Override
	public int insertProduct(Product product) {
		return pDao.insertProduct(product);
}

	@Override
	public List<String> masterCategory(UserMaster master) {
		return pDao.masterCategory(master);
	}

	@Override
	public List<Product> myProductList(UserMaster master) {
		return pDao.myProductList(master);
	}

	@Override
	public Product getProductDetail(int no) {
		return pDao.getProductDetail(no);
	}

	@Override
	public UserMaster getProductDetail(String nickName) {
		return pDao.getProductDetail(nickName);
	}

	@Override
	public UserMasterSns getProductSnsDetail(String email) {
		return pDao.getProductSnsDetail(email);
	}

	public int insertReply(Reply r) {
		return pDao.insertReply(r);
	}

	@Override
	public ArrayList<Reply> selectReplyList(int pNo) {
		return pDao.selectReplyList(pNo);
	}

	@Override
	public int updateMasterStar(int pNo) {
		return pDao.updateMasterStar(pNo);
	}

	@Override
	public int getReplyCount(String nickName) {
		return pDao.getReplyCount(nickName);
	}

	@Override
	public List<Product> productList(HashMap<String, String> map) {
		return pDao.productList(map);
	}

	@Override
	public int updateBuyCount(int getpNo) {
		return pDao.updateBuyCount(getpNo);
	}

	@Override
	public int updateProductStar(int getpNo) {
		return pDao.updateProductStar(getpNo);
	}
	
	@Override
	public WishList getWishListDetail(HashMap<String, String> map) {
		return pDao.getWishListDetail(map);
	}

	@Override
	public int modifyComment(HashMap<String, String> map) {
		return pDao.modifyComment(map);
	}
	
	@Override
	public Product getProductUpdate(HashMap<Object, Object> map) {
		return pDao.getProductUpdate(map);
	}

	@Override
	public int Productupdate(Product product) {
		return pDao.Productupdate(product);
	}

	@Override
	public int productDelete(int no) {
		return pDao.productDelete(no);
	}

	@Override
	public List<Product> productListSearch( PageInfo pi, HashMap<String, String> map) {
		return pDao.productListSearch(pi,map);
	}

	@Override
	public int productListSearchCount( HashMap<String, String> map) {
		return pDao.productListSearchCount(map);
	}
	
	@Override
	public ArrayList<Product> getProductCost() {
		return pDao.getProductCost();
	}
}