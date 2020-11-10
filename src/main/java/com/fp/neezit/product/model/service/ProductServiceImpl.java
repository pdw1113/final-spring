package com.fp.neezit.product.model.service;

import java.util.HashMap;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.neezit.product.model.dao.ProductDao;
import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.product.model.vo.WishList;
import com.fp.neezit.product.model.vo.Reply;
import com.fp.neezit.user.model.vo.User;
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

	@Override
	public int wishInsert(HashMap<String, String> map) {
		return pDao.wishInsert(map);
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

}