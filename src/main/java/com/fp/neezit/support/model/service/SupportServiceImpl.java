package com.fp.neezit.support.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.neezit.support.model.dao.SupportDao;
import com.fp.neezit.support.model.vo.Notice;
import com.fp.neezit.user.model.vo.PageInfo;

@Service
public class SupportServiceImpl implements SupportService{

	@Autowired
	private SupportDao sDao;
	
	@Override
	public int noticeInsert(Notice notice) {
		return sDao.noticeInsert(notice);
	}

	@Override
	public Notice getNotice(int getNnum) {
		return sDao.getNotice(getNnum);
	}

	@Override
	public int nCountup(int getNnum) {
		return sDao.nCountup(getNnum);
	}

	@Override
	public int getNoticeCount(HashMap<String, String> map) {
		return sDao.getNoticeCount(map);
	}

	@Override
	public ArrayList<Notice> getNoticeList(PageInfo pi, HashMap<String, String> map) {
		return sDao.getNoticeList(pi,map);
	}

}
