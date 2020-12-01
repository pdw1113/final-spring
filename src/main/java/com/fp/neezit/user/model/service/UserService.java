package com.fp.neezit.user.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.product.model.vo.WishList;
import com.fp.neezit.user.model.vo.UserMasterQualifcation;
import com.fp.neezit.user.model.vo.UserMasterSchool;
import com.fp.neezit.user.model.vo.UserMaster;
import com.fp.neezit.user.model.vo.UserMasterSns;
import com.fp.neezit.user.model.vo.UserWallet;
import com.fp.neezit.user.model.vo.Admin;
import com.fp.neezit.user.model.vo.PageInfo;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserBuyList;

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
	

	int chargePaylist(HashMap<String, String> map);

	int withdraw(HashMap<String, String> map);

	int withdrawlist(HashMap<String, String> map);

	int getWalletCount(HashMap<String, String> map);

	ArrayList<UserWallet> getUserWallet(String email);

	ArrayList<UserWallet> getUserWalletList(PageInfo pi, HashMap<String, String> map);

	int nickCheck2(HashMap<String, String> map);

	int buyProduct(UserBuyList buylist);

	ArrayList<UserBuyList> getUserBuyList(PageInfo pi, HashMap<String, String> map);

	int getBuyListCount(HashMap<String, String> map);

	int buyProductMoney(Map<String, String> map);

	int withdraw2(HashMap<String, String> map);

	int refund(String refu);

	public int wishDuplicate(HashMap<String, String> map2);
	
	public int wishProductName(HashMap<String, String> map3);

	public int wishInsert(HashMap<String, String> map);
	
	public int wishDelete(HashMap<String, String> map);
	
	public List<Product> wishList(User u);

	String getMasterRank(String email);

	int insertIP(HashMap<String, String> map);

	int buyConfirm(HashMap<String, String> map);

	int pCountUp(String no);

	int rankUpdate(HashMap<String, Integer> map2);

	int rank(String nick);

	UserMaster rankPic(User u);

	Admin admin(User u);
	


}
