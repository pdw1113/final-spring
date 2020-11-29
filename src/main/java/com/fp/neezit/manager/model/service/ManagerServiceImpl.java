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
import com.fp.neezit.user.model.dao.UserDao;
import com.fp.neezit.manager.model.vo.UserList;
import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.user.model.vo.PageInfo;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserBuyList;
import com.fp.neezit.user.model.vo.UserWithdraw;
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
	public List<Forbidden> dateWords(HashMap<String, String> map) {
		return mDao.dateWords(map);
	}

	@Override
	public ArrayList<User> getUser() {
		return mDao.getUser();
	}

	@Override
	public List<UserBuyList> mPayBuyList() {
		return mDao.mPayBuyList();
	}

	@Override
	public List<UserBuyList> getManagerBuyList(PageInfo pi, HashMap<String, String> map) {
		return mDao.getManagerBuyList(pi,map);
	}
	
	@Override
	public int getBuyListCount(HashMap<String, String> map) {
		return mDao.getBuyListCount(map);
	}

	@Override
	public List<UserWithdraw> getUserWithdrawList(PageInfo pi) {
		return mDao.getUserWithdrawList(pi);
	}

	@Override
	public int getUserWithdrawLisCount() {
		return mDao.getUserWithdrawLisCount();
	}

	@Override
	public List<UserBuyList> getRefundList(PageInfo pi, HashMap<String, String> map) {
		return mDao.getRefundList(pi,map);
	}

	@Override
	public int getRefundCount(HashMap<String, String> map) {
		return mDao.getRefundCount(map);
	}

	public ArrayList<UserAccess> getUserAccess(PageInfo pi, HashMap<String, String> map) {
		return mDao.getUserAccess(pi,map);
	}

	@Override
	public int getUserAccessCount(HashMap<String, String> map) {
		return mDao.getUserAccessCount(map);
	}

	public int getUserListCount(HashMap<String, Object> map) {
		return mDao.getUserListCount(map);
	}

	@Override
	public ArrayList<UserList> getUserList(PageInfo pi, HashMap<String, Object> map) {
		return mDao.getUserList(pi,map);
	}

	@Override
	public UserMaster getMaster() {
		return mDao.getMaster();
	}

	@Override
	public int getUserListAllCount() {
		return mDao.getUserListAllCount();
	}

	@Override
	public int checkWords(String word) {
		return mDao.checkWords(word);
	}

	@Override
	public List<Forbidden> fList() {
		return mDao.fList();
	}

	
	/*--------------월 가입자수 통계--------------------------*/

	@Override
	public int mUserCount1() {
		return mDao.mUserCount1();
	}
	
	@Override
	public int mUserCount2() {
		return mDao.mUserCount3();
	}
	
	@Override
	public int mUserCount3() {
		return mDao.mUserCount2();
	}

	@Override
	public int mUserCount4() {
		return mDao.mUserCount4();
	}

	@Override
	public int mUserCount5() {
		return mDao.mUserCount5();
	}

	@Override
	public int mUserCount6() {
		return mDao.mUserCount6();
	}

	@Override
	public int mUserCount7() {
		return mDao.mUserCount7();
	}

	@Override
	public int mUserCount8() {
		return mDao.mUserCount8();
	}

	@Override
	public int mUserCount9() {
		return mDao.mUserCount9();
	}

	@Override
	public int mUserCount10() {
		return mDao.mUserCount10();
	}
	
	@Override
	public int mUserCount11() {
		return mDao.mUserCount11();
	}

	@Override
	public int mUserCount12() {
		return mDao.mUserCount12();
	}
	/*-----------------------------------------------*/

	/*방문자수 통계*/
	@Override
	public int mVisitant1() {
		return mDao.mVisitant1();
	}

	@Override
	public int mVisitant2() {
		return mDao.mVisitant2();
	}

	@Override
	public int mVisitant3() {
		return mDao.mVisitant3();
	}

	@Override
	public int mVisitant4() {
		return mDao.mVisitant4();
	}

	@Override
	public int mVisitant5() {
		return mDao.mVisitant5();
	}

	@Override
	public int mVisitant6() {
		return mDao.mVisitant6();
	}

	@Override
	public int mVisitant7() {
		return mDao.mVisitant7();
	}

	@Override
	public int mVisitant8() {
		return mDao.mVisitant8();
	}

	@Override
	public int mVisitant9() {
		return mDao.mVisitant9();
	}

	@Override
	public int mVisitant10() {
		return mDao.mVisitant10();
	}

	@Override
	public int mVisitant11() {
		return mDao.mVisitant11();
	}

	@Override
	public int mVisitant12() {
		return mDao.mVisitant12();
	}
	/*-----------------------------------------------*/

	@Override
	public int mUser() {
		return mDao.mUser();
	}

	@Override
	public int mMaster() {
		return mDao.mMaster();
	}

	@Override
	public int mBuy() {
		return mDao.mBuy();
	}
	
	@Override
	public List<Product> mStatistics() {
		return mDao.mStatistics();
	}
	
	@Override
	public List<Product> mStatistics2() {
		return mDao.mStatistics2();
	}

}
