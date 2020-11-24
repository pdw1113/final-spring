package com.fp.neezit.manager.model.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.fp.neezit.manager.model.vo.Forbidden;
import com.fp.neezit.user.model.vo.PageInfo;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserBuyList;
import com.fp.neezit.user.model.vo.UserWithdraw;

public interface ManagerService {

	
	int insertWords(String words);

	int deleteWords(String dwords);

	List<Forbidden> searchWords(String search);

	List<Forbidden> dateWords(Date date);

	ArrayList<User> getUser();

	List<UserBuyList> mPayBuyList();
	
	List<UserBuyList> getManagerBuyList(PageInfo pi, HashMap<String, String> map);
	
	int getBuyListCount(HashMap<String, String> map);

	List<UserWithdraw> getUserWithdrawList(PageInfo pi);

	int getUserWithdrawLisCount();

	List<UserBuyList> getRefundList(PageInfo pi, HashMap<String, String> map);

	int getRefundCount(HashMap<String, String> map);
}
