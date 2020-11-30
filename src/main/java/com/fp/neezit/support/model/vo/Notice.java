package com.fp.neezit.support.model.vo;

import java.sql.Date;

public class Notice {
	private int nNum;			//공지번호
	private String nTitle;		//공지제목
	private String nContent;	//공지내용
	private Date nCdate;		//공지작성일자
	private Date nMdate;		//공지 수정일자
	private int nCount;			//조회수
	
	public Notice() {
		super();
	}
	
	public Notice(int nNum, String nTitle, String nContent, Date nCdate, Date nMdate, int nCount) {
		super();
		this.nNum = nNum;
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.nCdate = nCdate;
		this.nMdate = nMdate;
		this.nCount = nCount;
	}

	public int getnNum() {
		return nNum;
	}

	public void setnNum(int nNum) {
		this.nNum = nNum;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}

	public String getnContent() {
		return nContent;
	}

	public void setnContent(String nContent) {
		this.nContent = nContent;
	}

	public Date getnCdate() {
		return nCdate;
	}

	public void setnCdate(Date nCdate) {
		this.nCdate = nCdate;
	}

	public Date getnMdate() {
		return nMdate;
	}

	public void setnMdate(Date nMdate) {
		this.nMdate = nMdate;
	}

	public int getnCount() {
		return nCount;
	}

	public void setnCount(int nCount) {
		this.nCount = nCount;
	}

	@Override
	public String toString() {
		return "Notice [nNum=" + nNum + ", nTitle=" + nTitle + ", nContent=" + nContent + ", nCdate=" + nCdate
				+ ", nMdate=" + nMdate + ", nCount=" + nCount + "]";
	}
}