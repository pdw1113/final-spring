package com.fp.neezit.manager.model.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.fp.neezit.manager.model.vo.Forbidden;
import com.fp.neezit.manager.model.vo.UserList;
import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.user.model.vo.PageInfo;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserBuyList;
import com.fp.neezit.user.model.vo.UserWithdraw;
import com.fp.neezit.user.model.vo.UserAccess;
import com.fp.neezit.user.model.vo.UserMaster;


public interface ManagerService {

	
	int insertWords(String words);

	int deleteWords(String dwords);

	List<Forbidden> searchWords(String search);

	List<Forbidden> dateWords(HashMap<String, String> map);

	ArrayList<User> getUser();

	int getUserListCount(HashMap<String, Object> map);

	ArrayList<UserList> getUserList(PageInfo pi, HashMap<String, Object> map);

	UserMaster getMaster();
	
	List<UserBuyList> mPayBuyList();
	
	List<UserBuyList> getManagerBuyList(PageInfo pi, HashMap<String, String> map);
	
	int getBuyListCount(HashMap<String, String> map);

	List<UserWithdraw> getUserWithdrawList(PageInfo pi);

	int getUserWithdrawLisCount();

	List<UserBuyList> getRefundList(PageInfo pi, HashMap<String, String> map);

	int getRefundCount(HashMap<String, String> map);

	ArrayList<UserAccess> getUserAccess(PageInfo pi, HashMap<String, String> map);

	int getUserAccessCount(HashMap<String, String> map);

	int getUserListAllCount();

	int checkWords(String word);

	List<Forbidden> fList();
	
	// 상품 판매순위
	public List<Product> mStatistics();

	// 상품 별점 순위
	public List<Product> mStatistics2();
	
	// 유저 가입자수 통계
		int mUserCount1();
		
		int mUserCount3();

		int mUserCount2();

		int mUserCount4();

		int mUserCount5();

		int mUserCount6();

		int mUserCount7();

		int mUserCount8();

		int mUserCount9();

		int mUserCount10();
		
		int mUserCount11();

		int mUserCount12();
		/******************/
		
		/*방문자수 통계*/
		int mVisitant1();

		int mVisitant2();

		int mVisitant3();

		int mVisitant4();

		int mVisitant5();

		int mVisitant6();

		int mVisitant7();

		int mVisitant8();

		int mVisitant9();

		int mVisitant10();

		int mVisitant11();

		int mVisitant12();
		/******************/
		
		// 유저 수
		int mUser();

		int mMaster();

		int mBuy();

		int mMasterUpdate(HashMap<String, String> map);
		
		int mComfirm(String masterNicName);


}
