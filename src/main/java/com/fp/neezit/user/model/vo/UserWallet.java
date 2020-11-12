package com.fp.neezit.user.model.vo;

import java.sql.Date;

public class UserWallet {
	
	private String wemail;		//유저 이메일(외래키)
	private int wnum; 			//결제 상세조회 번호
	private Date wdate; 		//결제날짜
	private String whistory;	//결제내역 
	private int wmoney; 		//결제금액
	private String wmethod; 	//결제방식
	
	public UserWallet() {
		super();
	}
	
	public UserWallet(String wemail, int wnum, Date wdate, String whistory, int wmoney, String wmethod) {
		super();
		this.wemail = wemail;
		this.wnum = wnum;
		this.wdate = wdate;
		this.whistory = whistory;
		this.wmoney = wmoney;
		this.wmethod = wmethod;
	}

	public String getWemail() {
		return wemail;
	}

	public void setWemail(String wemail) {
		this.wemail = wemail;
	}

	public int getWnum() {
		return wnum;
	}

	public void setWnum(int wnum) {
		this.wnum = wnum;
	}

	public Date getWdate() {
		return wdate;
	}

	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}

	public String getWhistory() {
		return whistory;
	}

	public void setWhistory(String whistory) {
		this.whistory = whistory;
	}

	public int getWmoney() {
		return wmoney;
	}

	public void setWmoney(int wmoney) {
		this.wmoney = wmoney;
	}

	public String getWmethod() {
		return wmethod;
	}

	public void setWmethod(String wmethod) {
		this.wmethod = wmethod;
	}

	@Override
	public String toString() {
		return "UserWallet [wemail=" + wemail + ", wnum=" + wnum + ", wdate=" + wdate
				+ ", whistory=" + whistory + ", wmoney=" + wmoney + ", wmethod=" + wmethod + "]";
	}
	
}

