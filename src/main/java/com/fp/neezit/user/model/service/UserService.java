package com.fp.neezit.user.model.service;

import java.util.HashMap;
import java.util.List;

import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.user.model.vo.UserMasterQualifcation;
import com.fp.neezit.user.model.vo.UserMasterSchool;
import com.fp.neezit.user.model.vo.UserMaster;
import com.fp.neezit.user.model.vo.UserMasterSns;
import com.fp.neezit.user.model.vo.User;

public interface UserService {
	
	User loginUser(User u);

	int phoneCheck(String phone);
	
	public List<ProductCategory> category() throws Exception;

	int insertMember(User u);

	int emailCheck(String email);

	int modifyPhone(User u);

	int marketing(User u);

	int modifyPwd(User u);

	int userdelete(User u);

	int reason(HashMap<String, String> map);

	int insertMaster(UserMaster msu);

	int insertMasterSchool(UserMasterSchool msc);

	int insertMasterSns(UserMasterSns msn);

	int insertMasterQfc(UserMasterQualifcation mqf);

	int nickCheck(String nickname);

}
