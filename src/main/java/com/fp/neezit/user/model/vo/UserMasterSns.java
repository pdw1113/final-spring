package com.fp.neezit.user.model.vo;

public class UserMasterSns {
	private String snsEmail;
	private String snsInsta;
	private String snsTwit;
	private String snsBlog;
	private String snsGit;
	private String snsYou1;
	private String snsYou2;
	private String snsYou3;
	
	public UserMasterSns() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserMasterSns(String snsEmail, String snsInsta, String snsTwit, String snsBlog, String snsGit,
			String snsYou1, String snsYou2, String snsYou3) {
		super();
		this.snsEmail = snsEmail;
		this.snsInsta = snsInsta;
		this.snsTwit = snsTwit;
		this.snsBlog = snsBlog;
		this.snsGit = snsGit;
		this.snsYou1 = snsYou1;
		this.snsYou2 = snsYou2;
		this.snsYou3 = snsYou3;
	}

	public String getSnsEmail() {
		return snsEmail;
	}

	public void setSnsEmail(String snsEmail) {
		this.snsEmail = snsEmail;
	}

	public String getSnsInsta() {
		return snsInsta;
	}

	public void setSnsInsta(String snsInsta) {
		this.snsInsta = snsInsta;
	}

	public String getSnsTwit() {
		return snsTwit;
	}

	public void setSnsTwit(String snsTwit) {
		this.snsTwit = snsTwit;
	}

	public String getSnsBlog() {
		return snsBlog;
	}

	public void setSnsBlog(String snsBlog) {
		this.snsBlog = snsBlog;
	}

	public String getSnsGit() {
		return snsGit;
	}

	public void setSnsGit(String snsGit) {
		this.snsGit = snsGit;
	}

	public String getSnsYou1() {
		return snsYou1;
	}

	public void setSnsYou1(String snsYou1) {
		this.snsYou1 = snsYou1;
	}

	public String getSnsYou2() {
		return snsYou2;
	}

	public void setSnsYou2(String snsYou2) {
		this.snsYou2 = snsYou2;
	}

	public String getSnsYou3() {
		return snsYou3;
	}

	public void setSnsYou3(String snsYou3) {
		this.snsYou3 = snsYou3;
	}

	@Override
	public String toString() {
		return "UserMasterSns [snsEmail=" + snsEmail + ", snsInsta=" + snsInsta + ", snsTwit=" + snsTwit + ", snsBlog="
				+ snsBlog + ", snsGit=" + snsGit + ", snsYou1=" + snsYou1 + ", snsYou2=" + snsYou2 + ", snsYou3="
				+ snsYou3 + "]";
	}
}
