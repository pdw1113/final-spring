package com.fp.neezit.product.model.service;

import java.util.List;

import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserMaster;

public interface ProductService {

   // 카테고리
   public List<String> category(UserMaster master);

   public List<ProductCategory> categoryList(int navNo);
   
   public List<ProductCategory> categoryList2(int navNo);

   public UserMaster getMaster(User u);

   public int insertProduct(Product product);

}