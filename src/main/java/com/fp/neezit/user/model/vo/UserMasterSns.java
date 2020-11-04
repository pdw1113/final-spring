package com.fp.neezit.user.model.vo;

public class UserMasterSns {
	private String USER_EMAIL;
	private String MASTER_INSTAGRAM;
	private String MASTER_TWITTER;
	private String MASTER_BLOG;
	private String MASTER_GIT;
	private String MASTER_YOTUBUE1;
	private String MASTER_YOTUBUE2;
	private String MASTER_YOTUBUE3;
	public UserMasterSns() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserMasterSns(String uSER_EMAIL, String mASTER_INSTAGRAM, String mASTER_TWITTER, String mASTER_BLOG,
			String mASTER_GIT, String mASTER_YOTUBUE1, String mASTER_YOTUBUE2, String mASTER_YOTUBUE3) {
		super();
		USER_EMAIL = uSER_EMAIL;
		MASTER_INSTAGRAM = mASTER_INSTAGRAM;
		MASTER_TWITTER = mASTER_TWITTER;
		MASTER_BLOG = mASTER_BLOG;
		MASTER_GIT = mASTER_GIT;
		MASTER_YOTUBUE1 = mASTER_YOTUBUE1;
		MASTER_YOTUBUE2 = mASTER_YOTUBUE2;
		MASTER_YOTUBUE3 = mASTER_YOTUBUE3;
	}
	public String getUSER_EMAIL() {
		return USER_EMAIL;
	}
	public void setUSER_EMAIL(String uSER_EMAIL) {
		USER_EMAIL = uSER_EMAIL;
	}
	public String getMASTER_INSTAGRAM() {
		return MASTER_INSTAGRAM;
	}
	public void setMASTER_INSTAGRAM(String mASTER_INSTAGRAM) {
		MASTER_INSTAGRAM = mASTER_INSTAGRAM;
	}
	public String getMASTER_TWITTER() {
		return MASTER_TWITTER;
	}
	public void setMASTER_TWITTER(String mASTER_TWITTER) {
		MASTER_TWITTER = mASTER_TWITTER;
	}
	public String getMASTER_BLOG() {
		return MASTER_BLOG;
	}
	public void setMASTER_BLOG(String mASTER_BLOG) {
		MASTER_BLOG = mASTER_BLOG;
	}
	public String getMASTER_GIT() {
		return MASTER_GIT;
	}
	public void setMASTER_GIT(String mASTER_GIT) {
		MASTER_GIT = mASTER_GIT;
	}
	public String getMASTER_YOTUBUE1() {
		return MASTER_YOTUBUE1;
	}
	public void setMASTER_YOTUBUE1(String mASTER_YOTUBUE1) {
		MASTER_YOTUBUE1 = mASTER_YOTUBUE1;
	}
	public String getMASTER_YOTUBUE2() {
		return MASTER_YOTUBUE2;
	}
	public void setMASTER_YOTUBUE2(String mASTER_YOTUBUE2) {
		MASTER_YOTUBUE2 = mASTER_YOTUBUE2;
	}
	public String getMASTER_YOTUBUE3() {
		return MASTER_YOTUBUE3;
	}
	public void setMASTER_YOTUBUE3(String mASTER_YOTUBUE3) {
		MASTER_YOTUBUE3 = mASTER_YOTUBUE3;
	}
	@Override
	public String toString() {
		return "MasterSns [USER_EMAIL=" + USER_EMAIL + ", MASTER_INSTAGRAM=" + MASTER_INSTAGRAM + ", MASTER_TWITTER="
				+ MASTER_TWITTER + ", MASTER_BLOG=" + MASTER_BLOG + ", MASTER_GIT=" + MASTER_GIT + ", MASTER_YOTUBUE1="
				+ MASTER_YOTUBUE1 + ", MASTER_YOTUBUE2=" + MASTER_YOTUBUE2 + ", MASTER_YOTUBUE3=" + MASTER_YOTUBUE3
				+ "]";
	}
	
	
}
