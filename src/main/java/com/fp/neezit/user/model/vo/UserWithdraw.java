package com.fp.neezit.user.model.vo;

import java.sql.Date;

public class UserWithdraw {
	private int num;
	private Date date;
	private String email;
	private String name;
	private String money;
	private String bankno;
	private String bank;
	public UserWithdraw() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserWithdraw(int num, Date date, String email, String name, String money, String bankno, String bank) {
		super();
		this.num = num;
		this.date = date;
		this.email = email;
		this.name = name;
		this.money = money;
		this.bankno = bankno;
		this.bank = bank;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getBankno() {
		return bankno;
	}
	public void setBankno(String bankno) {
		this.bankno = bankno;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	@Override
	public String toString() {
		return "UserWithdraw [num=" + num + ", date=" + date + ", email=" + email + ", name=" + name + ", money="
				+ money + ", bankno=" + bankno + ", bank=" + bank + "]";
	}
	
	
	
	
}
