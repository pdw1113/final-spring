package com.fp.neezit.user.model.vo;

import java.sql.Date;

public class UserBuyList {
	
	private String email;	// 구매자 이메일
	private int num;		// 구매 번호
	private int pno;		// 구매한 상품의 번호
	private Date date;		// 구매 날짜
	private String master;	// 구매한 상품의 능력자 이름 
	private String title;	// 구매한 상품의 제목
	private int money;		// 구매한 상품의 가격
	private String refund;	// 환불 N이면 안한 것, Y이면 한 것. Z면 환불대기
	
	public UserBuyList() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserBuyList(String email, int num, int pno, Date date, String master, String title, int money,
			String refund) {
		super();
		this.email = email;
		this.num = num;
		this.pno = pno;
		this.date = date;
		this.master = master;
		this.title = title;
		this.money = money;
		this.refund = refund;
	}

	public final String getEmail() {
		return email;
	}

	public final void setEmail(String email) {
		this.email = email;
	}

	public final int getNum() {
		return num;
	}

	public final void setNum(int num) {
		this.num = num;
	}

	public final int getPno() {
		return pno;
	}

	public final void setPno(int pno) {
		this.pno = pno;
	}

	public final Date getDate() {
		return date;
	}

	public final void setDate(Date date) {
		this.date = date;
	}

	public final String getMaster() {
		return master;
	}

	public final void setMaster(String master) {
		this.master = master;
	}

	public final String getTitle() {
		return title;
	}

	public final void setTitle(String title) {
		this.title = title;
	}

	public final int getMoney() {
		return money;
	}

	public final void setMoney(int money) {
		this.money = money;
	}

	public final String getRefund() {
		return refund;
	}

	public final void setRefund(String refund) {
		this.refund = refund;
	}

	@Override
	public String toString() {
		return "UserBuyList [email=" + email + ", num=" + num + ", pno=" + pno + ", date=" + date + ", master=" + master
				+ ", title=" + title + ", money=" + money + ", refund=" + refund + "]";
	}

	
}
