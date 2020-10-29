package com.fp.neezit.user.model.vo;

import java.sql.Date;

public class User {
	
	private String name;
	private String phone;
	private String email;
	private String pwd;
	private Date enrollDate;
	private Date updateDate;
	private String status;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String name, String phone, String email, String pwd, Date enrollDate, Date updateDate, String status) {
		super();
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.pwd = pwd;
		this.enrollDate = enrollDate;
		this.updateDate = updateDate;
		this.status = status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "User [name=" + name + ", phone=" + phone + ", email=" + email + ", pwd=" + pwd + ", enrollDate="
				+ enrollDate + ", updateDate=" + updateDate + ", status=" + status + "]";
	}
	
	
	
}