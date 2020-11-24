package com.fp.neezit.user.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.product.model.vo.WishList;
import com.fp.neezit.user.model.dao.UserDao;
import com.fp.neezit.user.model.vo.UserMasterQualifcation;
import com.fp.neezit.user.model.vo.UserMasterSchool;
import com.fp.neezit.user.model.vo.UserMaster;
import com.fp.neezit.user.model.vo.UserMasterSns;
import com.fp.neezit.user.model.vo.UserWallet;
import com.fp.neezit.user.model.vo.PageInfo;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserBuyList;

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
	public List<ProductCategory> category(){
		return uDao.category();
	}

	@Override
	public int modifyPhone(User u) {
		return uDao.modifyPhone(u);
	}

	@Override
	public int marketing(User u) {
		return uDao.marketing(u);
	}

	@Override
	public int modifyPwd(User u) {
		return uDao.modifyPwd(u);
	}

	@Override
	public int userdelete(User u) {
		return uDao.userdelete(u);
	}

	@Override
	public int reason(HashMap<String, String> map) {
		return uDao.reason(map);
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

	@Override
	public int userCash(String email) {
		return uDao.userCash(email);
	}

	@Override
	public int neezcharge(HashMap<String, String> map) {
		return uDao.neezcharge(map);
	}

	public int changePw(HashMap<String, String> map) {
		return uDao.changePw(map);
	}


	public int master(User u) {
		return uDao.master(u);
	}

	@Override
	public UserMasterSchool getMasterSch(User u) {
		return uDao.getMasterSch(u);
	}

	@Override
	public UserMasterQualifcation getMasterQfa(User u) {
		return uDao.getMasterQfa(u);
	}

	@Override
	public UserMasterSns getMasterSns(User u) {
		return uDao.getMasterSns(u);
	}

	@Override
	public int updatetMaster(UserMaster msu) {
		return uDao.updatetMaster(msu);
	}

	@Override
	public int updateMasterSchool(UserMasterSchool msc) {
		return uDao.updateMasterSchool(msc);
	}

	@Override
	public int updateMasterSns(UserMasterSns msn) {
		return uDao.updateMasterSns(msn);
	}

	@Override
	public int updateMasterQfc(UserMasterQualifcation mqf) {
		return uDao.updateMasterQfc(mqf);
	}
	

	@Override
	public int chargePaylist(HashMap<String, String> map) {
		return uDao.chargePaylist(map);
	}

	@Override
	public int withdraw(HashMap<String, String> map) {
		return uDao.withdraw(map);
	}

	@Override
	public int withdrawlist(HashMap<String, String> map) {
		return uDao.withdrawlist(map);
	}

	@Override
	public ArrayList<UserWallet> getUserWallet(String email) {
		return uDao.getUserWallet(email);
	}


	@Override
	public int getWalletCount(HashMap<String, String> map) {
		return uDao.getWalletCount(map);
	}

	@Override
	public ArrayList<UserWallet> getUserWalletList(PageInfo pi, HashMap<String, String> map) {
		return uDao.getUserWalletList(pi,map);
	}

	@Override
	public int nickCheck2(HashMap<String, String> map) {
		return uDao.nickCheck2(map);
	}

	@Override
	public int buyProduct(UserBuyList buylist) {
		return uDao.buyProduct(buylist);
	}

	@Override
	public int getBuyListCount(HashMap<String, String> map) {
		return uDao.getBuyListCount(map);
	}

	@Override
	public ArrayList<UserBuyList> getUserBuyList(PageInfo pi, HashMap<String, String> map) {
		return uDao.getUserBuyList(pi,map);
	}

	@Override
	public int buyProductMoney(Map<String, String> map) {
		return uDao.buyProductMoney(map);
	}
	
	@Override
	public int wishDuplicate(HashMap<String, String> map2) {
		return uDao.wishDuplicate(map2);
	}
	
	@Override
	public int wishProductName(HashMap<String, String> map3) {
		return uDao.wishProductName(map3);
	}
	
	@Override
	public int wishInsert(HashMap<String, String> map) {
		return uDao.wishInsert(map);
	}
	
	@Override
	public int wishDelete(HashMap<String, String> map) {
		return uDao.wishDelete(map);
	}
	
	 @Override
	    public List<Product> wishList(User u) {
	       return uDao.wishList(u);
	    }

	@Override
	public int withdraw2(HashMap<String, String> map) {
		return uDao.withdraw2(map);
	}

	@Override
	public int refund(String refu) {
		return uDao.refund(refu);
	}

	public String getMasterRank(String email) {
		return uDao.getMasterRank(email);
	}

	@Override
	public int insertIP(HashMap<String, String> map) {
		return uDao.insertIp(map);
	}

	@Override
	public int buyConfirm(HashMap<String, String> map) {
		return uDao.buyConfirm(map);
	}

}
