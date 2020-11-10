package com.fp.neezit.manager.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.neezit.manager.model.vo.Forbidden;

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
	
}
