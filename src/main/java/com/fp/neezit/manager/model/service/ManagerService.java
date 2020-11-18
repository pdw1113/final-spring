package com.fp.neezit.manager.model.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.fp.neezit.manager.model.vo.Forbidden;
import com.fp.neezit.manager.model.vo.UserList;
import com.fp.neezit.user.model.vo.PageInfo;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserMaster;

public interface ManagerService {

	
	int insertWords(String words);

	int deleteWords(String dwords);

	List<Forbidden> searchWords(String search);

	List<Forbidden> dateWords(Date date);

	ArrayList<User> getUser();

	int getUserListCount(HashMap<String, String> map);

	ArrayList<UserList> getUserList(PageInfo pi, HashMap<String, String> map);

	UserMaster getMaster();
	

}
