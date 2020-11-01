package com.fp.neezit.user.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

}
