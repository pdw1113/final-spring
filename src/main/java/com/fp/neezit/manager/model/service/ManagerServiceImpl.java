package com.fp.neezit.manager.model.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.neezit.manager.model.dao.ManagerDao;
import com.fp.neezit.manager.model.vo.Forbidden;
import com.fp.neezit.manager.model.vo.UserList;
import com.fp.neezit.user.model.vo.PageInfo;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserAccess;
import com.fp.neezit.user.model.vo.UserMaster;


@Service("mService")
public class ManagerServiceImpl implements ManagerService{
	
	
	@Autowired
	SqlSessionTemplate sqlSession; // 트랜잭션 처리용 (이미 만들어져 있다.)
	
	@Autowired
	private ManagerDao mDao;

	@Override
	public int insertWords(String words) {
		return mDao.insertWords(words);
	}

	@Override
	public int deleteWords(String dwords) {
		return mDao.deleteWords(dwords);
	}

	@Override
	public List<Forbidden> searchWords(String search) {
		return mDao.searchWords(search);
	}

	@Override
	public List<Forbidden> dateWords(Date date) {
		return mDao.dateWords(date);
	}

	@Override
	public ArrayList<User> getUser() {
		return mDao.getUser();
	}

	@Override
	public ArrayList<UserAccess> getUserAccess(PageInfo pi, HashMap<String, String> map) {
		return mDao.getUserAccess(pi,map);
	}

	@Override
	public int getUserAccessCount(HashMap<String, String> map) {
		return mDao.getUserAccessCount(map);
	}

	public int getUserListCount(HashMap<String, String> map) {
		return mDao.getUserListCount(map);
	}

	@Override
	public ArrayList<UserList> getUserList(PageInfo pi, HashMap<String, String> map) {
		return mDao.getUserList(pi,map);
	}

	@Override
	public UserMaster getMaster() {
		return mDao.getMaster();
	}


}
