package com.fp.neezit.user.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.user.model.dao.UserDao;
import com.fp.neezit.user.model.vo.UserMasterQualifcation;
import com.fp.neezit.user.model.vo.UserMasterSchool;
import com.fp.neezit.user.model.vo.UserMaster;
import com.fp.neezit.user.model.vo.UserMasterSns;
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

	@Override
	public int emailCheck(String email) {
		return uDao.emailCheck(email);
	}
	
	@Override
	public List<ProductCategory> category() throws Exception {
		return uDao.category();
	}

	@Override
	public int modifyPhone(HashMap<String, String> map) {
		return uDao.modifyPhone(map);
	}

	@Override
	public int insertMaster(UserMaster msu) {
		return  uDao.insertMaster(msu);
	}

	@Override
	public int insertMasterSchool(UserMasterSchool msc) {
		return uDao.insertMasterSchool(msc);
	}

	@Override
	public int insertMasterSns(UserMasterSns msn) {
		return uDao.insertMasterSns(msn);
	}

	@Override
	public int insertMasterQfc(UserMasterQualifcation mqf) {
		return uDao.insertMasterQfc(mqf);
	}

	@Override
	public int nickCheck(String nickname) {
		return uDao.nickCheck(nickname);
	}

	

}
