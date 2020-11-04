package com.fp.neezit.product.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserMaster;

@Repository
public class ProductDao{

   @Autowired
   SqlSessionTemplate sqlSession;

   // 카테고리
   public List<ProductCategory> category() throws Exception {
      return sqlSession.selectList("productMapper.category");
   }

   public List<ProductCategory> categoryList(int navNo) throws Exception {
      return sqlSession.selectList("productMapper.categoryList", navNo);
   }

   public List<ProductCategory> categoryList2(int navNo) throws Exception {
      return sqlSession.selectList("productMapper.categoryList2", navNo);
   }

   public UserMaster getMaster(User u) {
      return sqlSession.selectOne("productMapper.getMaster",u);
   }
   
}