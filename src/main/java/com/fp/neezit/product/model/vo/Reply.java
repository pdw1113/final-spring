package com.fp.neezit.product.model.vo;

import java.sql.Date;

public class Reply {
   
   private int pNo;         // 참조하고 있는 product 번호 (RK)
   private int rNo;         // 댓글 고유 번호 (PK)
   private String rPic;		// 댓글 이미지
   private String rContent;   // 댓글 내용
   private int rStar;         // 별점 1 ~ 5
   private String rName;      // 댓글 작성자
   private Date rCreateDate;   // 댓글 작성 날짜
   private Date rModifyDate;   // 댓글 수정 날짜
   private int refRno;         // 대댓글 혹시 몰라서 넣어둠
   private int rLevel;      // 댓글 레벨
   
   public Reply() {
      super();
      // TODO Auto-generated constructor stub
   }
   

	public Reply(int pNo, int rNo, String rPic, String rContent, int rStar, String rName, Date rCreateDate,
		Date rModifyDate, int refRno, int rLevel) {
	super();
	this.pNo = pNo;
	this.rNo = rNo;
	this.rPic = rPic;
	this.rContent = rContent;
	this.rStar = rStar;
	this.rName = rName;
	this.rCreateDate = rCreateDate;
	this.rModifyDate = rModifyDate;
	this.refRno = refRno;
	this.rLevel = rLevel;
	}



	public final int getpNo() {
		return pNo;
	}
	
	public final void setpNo(int pNo) {
		this.pNo = pNo;
	}
	
	public final int getrNo() {
		return rNo;
	}
	
	public final void setrNo(int rNo) {
		this.rNo = rNo;
	}
	
	public final String getrPic() {
		return rPic;
	}
	
	public final void setrPic(String rPic) {
		this.rPic = rPic;
	}
	
	public final String getrContent() {
		return rContent;
	}
	
	public final void setrContent(String rContent) {
		this.rContent = rContent;
	}
	
	public final int getrStar() {
		return rStar;
	}
	
	public final void setrStar(int rStar) {
		this.rStar = rStar;
	}
	
	public final String getrName() {
		return rName;
	}
	
	public final void setrName(String rName) {
		this.rName = rName;
	}
	
	public final Date getrCreateDate() {
		return rCreateDate;
	}
	
	public final void setrCreateDate(Date rCreateDate) {
		this.rCreateDate = rCreateDate;
	}
	
	public final Date getrModifyDate() {
		return rModifyDate;
	}
	
	public final void setrModifyDate(Date rModifyDate) {
		this.rModifyDate = rModifyDate;
	}
	
	public final int getRefRno() {
		return refRno;
	}
	
	public final void setRefRno(int refRno) {
		this.refRno = refRno;
	}
	
	public final int getrLevel() {
		return rLevel;
	}
	
	public final void setrLevel(int rLevel) {
		this.rLevel = rLevel;
	}

	@Override
	public String toString() {
		return "Reply [pNo=" + pNo + ", rNo=" + rNo + ", rPic=" + rPic + ", rContent=" + rContent + ", rStar=" + rStar
				+ ", rName=" + rName + ", rCreateDate=" + rCreateDate + ", rModifyDate=" + rModifyDate + ", refRno="
				+ refRno + ", rLevel=" + rLevel + "]";
	}

	
}