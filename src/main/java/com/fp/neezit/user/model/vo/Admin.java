package com.fp.neezit.user.model.vo;

public class Admin {

	private String email;

	public Admin() {
		super();
	}

	public Admin(String email) {
		super();
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Admin [email=" + email + "]";
	}	
	
	
}
