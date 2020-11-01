package com.fp.neezit.user.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.neezit.user.model.dao.UserDao;
import com.fp.neezit.user.model.vo.User;

@Service("uService")
public class UserServiceImpl implements UserService{

	@Autowired
	SqlSessionTemplate sqlSession; // 트랜잭션 처리용 (이미 만들어져 있다.)
	
	@Autowired
	private UserDao uDao;
	
// 나중에 쓰일지도 몰라서 냅둠.
//	@Autowired
//	private DataSourceTransactionManager transactionManager;

	@Override
	public User loginUser(User u) {
		User loginUser = uDao.loginUser(u);
		return loginUser;
	}

	@Override
	public int phoneCheck(String phone) {
		return uDao.phoneCheck(phone);
	}

	@Override
	public int insertMember(User u) {
		return uDao.insertMember(u);
	}

}
