package com.fp.neezit.product.model.vo;

public class WishList {
	private int wNo;
	private String email;
	private int no;
	
	public WishList() {
		super();
		// TODO Auto-generated constructor stub
	}

	public WishList(int wNo, String email, int no) {
		super();
		this.wNo = wNo;
		this.email = email;
		this.no = no;
	}

	public int getwNo() {
		return wNo;
	}

	public void setwNo(int wNo) {
		this.wNo = wNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	@Override
	public String toString() {
		return "WishList [wNo=" + wNo + ", email=" + email + ", no=" + no + "]";
	}
	
	
	
}
