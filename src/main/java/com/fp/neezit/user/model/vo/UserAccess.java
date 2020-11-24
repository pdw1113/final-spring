package com.fp.neezit.user.model.vo;

import java.sql.Date;

public class UserAccess {
private int uAccessnum; 		// 고유넘버
private String uEmail;    		// 유저 이메일
private String uName;    		// 유저 이름
private String uRankName;   // 랭크
private String uIp;   			// 아이피
private String uAccessDate;  // 접속날짜


public UserAccess() {
	super();
}


public UserAccess(int uAccessnum, String uEmail, String uName, String uRankName, String uIp, String uAccessDate) {
	super();
	this.uAccessnum = uAccessnum;
	this.uEmail = uEmail;
	this.uName = uName;
	this.uRankName = uRankName;
	this.uIp = uIp;
	this.uAccessDate = uAccessDate;
}


public int getuAccessnum() {
	return uAccessnum;
}


public void setuAccessnum(int uAccessnum) {
	this.uAccessnum = uAccessnum;
}


public String getuEmail() {
	return uEmail;
}


public void setuEmail(String uEmail) {
	this.uEmail = uEmail;
}


public String getuName() {
	return uName;
}


public void setuName(String uName) {
	this.uName = uName;
}


public String getuRankName() {
	return uRankName;
}


public void setuRankName(String uRankName) {
	this.uRankName = uRankName;
}


public String getuIp() {
	return uIp;
}


public void setuIp(String uIp) {
	this.uIp = uIp;
}


public String getuAccessDate() {
	return uAccessDate;
}


public void setuAccessDate(String uAccessDate) {
	this.uAccessDate = uAccessDate;
}


@Override
public String toString() {
	return "UserAccess [uAccessnum=" + uAccessnum + ", uEmail=" + uEmail + ", uName=" + uName + ", uRankName="
			+ uRankName + ", uIp=" + uIp + ", uAccessDate=" + uAccessDate + "]";
}

}
