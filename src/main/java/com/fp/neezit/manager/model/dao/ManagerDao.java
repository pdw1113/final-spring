package com.fp.neezit.manager.model.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.neezit.manager.model.vo.Forbidden;
import com.fp.neezit.user.model.vo.User;

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

	public List<Forbidden> dateWords(Date date) {
		return sqlSession.selectList("managerMapper.dateWords",date);
	}

	public ArrayList<User> getUser() {
		return (ArrayList)sqlSession.selectList("managerMapper.getUser");
	}
	
}
