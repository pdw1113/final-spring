package com.fp.neezit.product.model.vo;

import java.sql.Date;

public class Reply {
	
	private int pNo;			// 참조하고 있는 product 번호 (RK)
	private int rNo;			// 댓글 고유 번호 (PK)
	private String rContent;	// 댓글 내용
	private int rStar;			// 별점 1 ~ 5
	private String rName;		// 댓글 작성자
	private Date rCreateDate;	// 댓글 작성 날짜
	private Date rModifyDate;	// 댓글 수정 날짜
	private int refRno;			// 대댓글 혹시 몰라서 넣어둠
	private int rLevel;		// 댓글 레벨
	
	public Reply() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Reply(int pNo, int rNo, String rContent, int rStar, String rName, Date rCreateDate, Date rModifyDate,
			int refRno, int rLevel) {
		super();
		this.pNo = pNo;
		this.rNo = rNo;
		this.rContent = rContent;
		this.rStar = rStar;
		this.rName = rName;
		this.rCreateDate = rCreateDate;
		this.rModifyDate = rModifyDate;
		this.refRno = refRno;
		this.rLevel = rLevel;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public int getrStar() {
		return rStar;
	}

	public void setrStar(int rStar) {
		this.rStar = rStar;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public Date getrCreateDate() {
		return rCreateDate;
	}

	public void setrCreateDate(Date rCreateDate) {
		this.rCreateDate = rCreateDate;
	}

	public Date getrModifyDate() {
		return rModifyDate;
	}

	public void setrModifyDate(Date rModifyDate) {
		this.rModifyDate = rModifyDate;
	}

	public int getRefRno() {
		return refRno;
	}

	public void setRefRno(int refRno) {
		this.refRno = refRno;
	}

	public int getrLevel() {
		return rLevel;
	}

	public void setrLevel(int rLevel) {
		this.rLevel = rLevel;
	}

	@Override
	public String toString() {
		return "Reply [pNo=" + pNo + ", rNo=" + rNo + ", rContent=" + rContent + ", rStar=" + rStar + ", rName=" + rName
				+ ", rCreateDate=" + rCreateDate + ", rModifyDate=" + rModifyDate + ", refRno=" + refRno + ", rLevel="
				+ rLevel + "]";
	}
}