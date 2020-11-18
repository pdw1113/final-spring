package com.fp.neezit.user.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.neezit.product.model.vo.Product;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.user.model.vo.PageInfo;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserBuyList;
import com.fp.neezit.user.model.vo.UserMaster;
import com.fp.neezit.user.model.vo.UserMasterQualifcation;
import com.fp.neezit.user.model.vo.UserMasterSchool;
import com.fp.neezit.user.model.vo.UserMasterSns;
import com.fp.neezit.user.model.vo.UserWallet;

@Repository("uDao")
public class UserDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public User loginUser(User u) {
		return sqlSession.selectOne("userMapper.loginUser",u);
	}

	public int phoneCheck(String phone) {
		return sqlSession.selectOne("userMapper.phoneCheck", phone);
	}

	public int insertMember(User u) {
		return sqlSession.insert("userMapper.insertUser", u);
	}

	public int emailCheck(String email) {
		return sqlSession.selectOne("userMapper.emailCheck",email);
	}
	
	public List<ProductCategory> category() {
		return sqlSession.selectList("productMapper.category");
	}

	public int modifyPhone(User u) {
		return sqlSession.update("userMapper.modifyPhone", u);
	}

	public int marketing(User u) {
		return sqlSession.update("userMapper.marketing",u);
	}

	public int modifyPwd(User u) {
		return sqlSession.update("userMapper.modifyPwd",u);
	}

	public int userdelete(User u) {
		return sqlSession.update("userMapper.userDelete",u);
	}

	public int reason(HashMap<String, String> map) {
		return sqlSession.insert("userMapper.reason", map);
	}

	public int insertMaster(UserMaster msu) {
		return sqlSession.insert("userMapper.insertMaster",msu);
	}

	public int insertMasterSchool(UserMasterSchool msc) {
		return sqlSession.insert("userMapper.insertMasterSchool",msc);
	}

	public int insertMasterSns(UserMasterSns msn) {
		return sqlSession.insert("userMapper.insertMasterSns",msn);
	}

	public int insertMasterQfc(UserMasterQualifcation mqf) {
		return sqlSession.insert("userMapper.insertMasterQfc",mqf);
	}

	public int nickCheck(String nickname) {
		return sqlSession.selectOne("userMapper.nickCheck",nickname);
	}

	public int userCash(String email) {
		return sqlSession.selectOne("userMapper.userCash",email);
	}

	public int neezcharge(HashMap<String, String> map) {
		return sqlSession.update("userMapper.neezcharge",map);
	}
	
	public int changePw(HashMap<String, String> map) {
		return sqlSession.update("userMapper.changePw",map);
	}
	
	public int master(User u) {
		return sqlSession.selectOne("userMapper.master",u);
	}

	public UserMasterSchool getMasterSch(User u) {
		return sqlSession.selectOne("userMapper.MasterSchool",u);
	}

	public UserMasterQualifcation getMasterQfa(User u) {
		return sqlSession.selectOne("userMapper.MasterQualifcation",u);
	}

	public UserMasterSns getMasterSns(User u) {
		return sqlSession.selectOne("userMapper.MasterSNS",u);
	}

	public int updatetMaster(UserMaster msu) {
		return sqlSession.update("userMapper.MasterUpdate",msu);
	}

	public int updateMasterSchool(UserMasterSchool msc) {
		return sqlSession.update("userMapper.MasterUpdateSch",msc);
	}

	public int updateMasterSns(UserMasterSns msn) {
		return sqlSession.update("userMapper.MasterUpdateSns",msn);
	}

	public int updateMasterQfc(UserMasterQualifcation mqf) {
		return sqlSession.update("userMapper.MasterUpdateQfa",mqf);
	}

	public int chargePaylist(HashMap<String, String> map) {
		return sqlSession.update("userMapper.chargePaylist",map);
	}

	public int withdraw(HashMap<String, String> map) {
		return sqlSession.update("userMapper.withdraw",map);
	}

	public int withdrawlist(HashMap<String, String> map) {
		return sqlSession.insert("userMapper.withdrawlist",map);
	}

	public int getWalletCount(HashMap<String, String> map) {
		return sqlSession.selectOne("userMapper.getWalletCount",map);
	}

	public ArrayList<UserWallet> getUserWallet(String email) {
		return (ArrayList)sqlSession.selectList("userMapper.getUserWallet",email);
	}

	public ArrayList<UserWallet> getUserWalletList(PageInfo pi, HashMap<String, String> map) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("userMapper.getUserWalletList",map,rowBounds);
	}

	public int nickCheck2(HashMap<String, String> map) {
		return sqlSession.selectOne("userMapper.nickCheckUp",map);
	}

	public int buyProduct(UserBuyList buylist) {
		return sqlSession.insert("userMapper.buyProduct", buylist);
	}

	public ArrayList<UserBuyList> getUserBuyList(PageInfo pi, HashMap<String, String> map) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("userMapper.getUserBuyList",map,rowBounds);
	}

	public int getBuyListCount(HashMap<String, String> map) {
		return sqlSession.selectOne("userMapper.getBuyListCount",map);
	}

	public int buyProductMoney(Map<String, String> map) {
		return sqlSession.update("userMapper.buyProductMoney",map);
	}
	
	public int wishDuplicate(HashMap<String, String> map2) {
		return sqlSession.selectOne("userMapper.WishDuplicate",map2);
	}
	
	public int wishProductName(HashMap<String, String> map3) {
		return sqlSession.selectOne("userMapper.productName",map3);
	}

	public int wishInsert(HashMap<String, String> map) {
		return sqlSession.insert("userMapper.insertWish",map);
	}
	
	public int wishDelete(HashMap<String, String> map) {
		return sqlSession.delete("userMapper.WishDelete",map);
	}
	
    public List<Product> wishList(User u) {
	      return sqlSession.selectList("userMapper.WishList",u);
	}

	public String getMasterRank(String email) {
		return sqlSession.selectOne("userMapper.getMasterRank",email);
	}

	public int insertIp(HashMap<String, String> map) {
		return sqlSession.insert("userMapper.insertIp",map);
	}
}
