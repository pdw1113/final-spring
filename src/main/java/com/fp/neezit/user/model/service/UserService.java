package com.fp.neezit.user.model.service;

import java.util.HashMap;
import java.util.List;

import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.product.model.vo.WishList;
import com.fp.neezit.user.model.vo.UserMasterQualifcation;
import com.fp.neezit.user.model.vo.UserMasterSchool;
import com.fp.neezit.user.model.vo.UserMaster;
import com.fp.neezit.user.model.vo.UserMasterSns;
import com.fp.neezit.user.model.vo.User;

public interface UserService {
	
	User loginUser(User u);

	int phoneCheck(String phone);
	
	public List<ProductCategory> category();

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

	int userCash(String email);

	int neezcharge(HashMap<String, String> map);
	
	int changePw(HashMap<String, String> map);

	int master(User u);

	UserMasterSchool getMasterSch(User u);

	UserMasterQualifcation getMasterQfa(User u);

	UserMasterSns getMasterSns(User u);

	int updatetMaster(UserMaster msu);

	int updateMasterSchool(UserMasterSchool msc);

	int updateMasterSns(UserMasterSns msn);

	int updateMasterQfc(UserMasterQualifcation mqf);
	
	List<Product> wishList(User u);

}
