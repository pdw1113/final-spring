package com.fp.neezit.support.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.fp.neezit.support.model.vo.Notice;
import com.fp.neezit.user.model.vo.PageInfo;

public interface SupportService {

	
	/**
	 * 공지사항 등록
	 * @param notice
	 * @return
	 */
	int noticeInsert(Notice notice);

	/**
	 * 공지사항 카운트
	 * @param map 
	 */
	int getNoticeCount(HashMap<String, String> map);

	/**
	 * 공지사항 리스트 불러오기
	 * @param pi
	 * @param map 
	 * @return
	 */
	ArrayList<Notice> getNoticeList(PageInfo pi, HashMap<String, String> map);

	/**
	 * 공지사항 불러오기
	 * @param getNnum
	 * @return
	 */
	Notice getNotice(int getNnum);

	/**
	 * 조회수 늘리기
	 * @param getNnum
	 * @return
	 */
	int nCountup(int getNnum);

}
