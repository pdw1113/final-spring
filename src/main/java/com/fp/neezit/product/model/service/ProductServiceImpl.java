package com.fp.neezit.product.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.neezit.product.model.dao.ProductDao;
import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserMaster;

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
	public Product myProductDetail(int no) {
		return pDao.myProductDetail(no);
	}

}