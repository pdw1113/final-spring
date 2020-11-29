package com.fp.neezit.manager.model.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.neezit.manager.model.vo.Forbidden;
import com.fp.neezit.manager.model.vo.UserList;
import com.fp.neezit.user.model.vo.PageInfo;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserBuyList;
import com.fp.neezit.user.model.vo.UserWithdraw;
import com.fp.neezit.user.model.vo.UserAccess;
import com.fp.neezit.user.model.vo.UserMaster;


@Repository("mDao")
public class ManagerDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int insertWords(String words) {
		return sqlSession.insert("managerMapper.insertWords", words);
	}

	public int deleteWords(String dwords) {
		return sqlSession.delete("managerMapper.deleteWords", dwords);
	}
	
	

	public List<Forbidden> searchWords(String search) {
		
		switch(search) {
		
			case "1a":
				return sqlSession.selectList("managerMapper.searchGa",search);
				
			case "1b":
				return sqlSession.selectList("managerMapper.searchNa",search);
				
			case "1c":
				return sqlSession.selectList("managerMapper.searchDa",search);	
				
			case "1d":
				return sqlSession.selectList("managerMapper.searchLa",search);		
				
			case "1e":
				return sqlSession.selectList("managerMapper.searchMa",search);		
				
			case "1f":
				return sqlSession.selectList("managerMapper.searchBa",search);	
				
			case "1g":
				return sqlSession.selectList("managerMapper.searchSa",search);	
				
			case "1h":
				return sqlSession.selectList("managerMapper.searchAa",search);
				
			case "1i":
				return sqlSession.selectList("managerMapper.searchJa",search);
				
			case "1j":
				return sqlSession.selectList("managerMapper.searchCha",search);
				
			case "1k":
				return sqlSession.selectList("managerMapper.searchKa",search);	
				
			case "1l":
				return sqlSession.selectList("managerMapper.searchTa",search);
				
			case "1m":
				return sqlSession.selectList("managerMapper.searchPa",search);	
				
			case "1n":
				return sqlSession.selectList("managerMapper.searchHa",search);		

		}
		return sqlSession.selectList("managerMapper.searchWords",search);

	}

	public List<Forbidden> dateWords(HashMap<String, String> map) {
		System.out.println(map);
		return sqlSession.selectList("managerMapper.dateWords",map);
	}

	public ArrayList<User> getUser() {
		return (ArrayList)sqlSession.selectList("managerMapper.getUser");
	}


	public List<UserBuyList> mPayBuyList() {
		return (ArrayList)sqlSession.selectList("managerMapper.mPayBuyList");
	}

	public ArrayList<UserAccess> getUserAccess(PageInfo pi, HashMap<String, String> map) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("managerMapper.getUserAccess",map,rowBounds);
	}

	public int getUserAccessCount(HashMap<String, String> map) {
		return sqlSession.selectOne("managerMapper.getUserAccessCount",map);
	}
	public int getUserListCount(HashMap<String, Object> map) {
		return sqlSession.selectOne("managerMapper.getUserListCount",map);
	}

	public ArrayList<UserList> getUserList(PageInfo pi, HashMap<String, Object> map) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("managerMapper.getUserList",map,rowBounds);
	}

	public UserMaster getMaster() {
		return sqlSession.selectOne("managerMapper.getMaster");
	}

	public int getUserListAllCount() {
		return sqlSession.selectOne("managerMapper.getUserListAllCount");
	}

	public int checkWords(String word) {
		return sqlSession.selectOne("managerMapper.checkWords",word);
	}

	public List<Forbidden> fList() {
		return sqlSession.selectList("managerMapper.fList");
	}

	public List<UserBuyList> getManagerBuyList(PageInfo pi, HashMap<String, String> map) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("managerMapper.getManagerBuyList",map,rowBounds);
	}
	
	public int getBuyListCount(HashMap<String, String> map) {
		return sqlSession.selectOne("managerMapper.getManagerBuyListCount",map);
	}

	public List<UserWithdraw> getUserWithdrawList(PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("managerMapper.getUserWithdrawList",null,rowBounds);
	}

	public int getUserWithdrawLisCount() {
		return sqlSession.selectOne("managerMapper.getUserWithdrawListCount");
	}

	public List<UserBuyList> getRefundList(PageInfo pi, HashMap<String, String> map) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("managerMapper.getRefundList",map,rowBounds);
	}

	public int getRefundCount(HashMap<String, String> map) {
		return sqlSession.selectOne("managerMapper.getRefundCount",map);
	}
}
