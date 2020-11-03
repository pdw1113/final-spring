package com.fp.neezit.user.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.user.model.vo.User;

@Repository("uDao")
public class UserDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public User loginUser(User u) {
		return sqlSession.selectOne("userMapper.loginUser",u);
	}

	public int phoneCheck(String phone) {
		return sqlSession.selectOne("userMapper.phoneCheck", phone);
	}

	public int insertMember(User u) {
		return sqlSession.insert("userMapper.insertUser", u);
	}

	public int emailCheck(String email) {
		return sqlSession.selectOne("userMapper.emailCheck",email);
	}
	
	public List<ProductCategory> category() {
		return sqlSession.selectList("productMapper.category");
	}

	public int modifyPhone(User u) {
		return sqlSession.update("userMapper.modifyPhone", u);
	}

	public int marketing(User u) {
		return sqlSession.update("userMapper.marketing",u);
	}

	public int modifyPwd(User u) {
		return sqlSession.update("userMapper.modifyPwd",u);
	}

}
