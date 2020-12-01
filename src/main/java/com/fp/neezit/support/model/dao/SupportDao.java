package com.fp.neezit.support.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.neezit.support.model.vo.Notice;
import com.fp.neezit.user.model.vo.PageInfo;

@Repository
public class SupportDao {

	@Autowired
	SqlSessionTemplate sqlSession;

	public int noticeInsert(Notice notice) {
		return sqlSession.insert("supportMapper.insertNotice",notice);
	}

	public int getNoticeCount(HashMap<String, String> map) {
		return sqlSession.selectOne("supportMapper.getNoticeCount",map);
	}

	public ArrayList<Notice> getNoticeList(PageInfo pi, HashMap<String, String> map) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("supportMapper.getNoticeList",map,rowBounds);
	}

	public Notice getNotice(int getNnum) {
		return sqlSession.selectOne("supportMapper.getNotice",getNnum);
	}

	public int nCountup(int getNnum) {
		return sqlSession.update("supportMapper.nCountup",getNnum);
	}
	
}
