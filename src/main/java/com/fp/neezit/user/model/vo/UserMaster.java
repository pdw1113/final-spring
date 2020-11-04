package com.fp.neezit.user.model.vo;

import java.util.Arrays;

public class UserMaster {
	private String USER_EMAIL;
	private String MASTER_RANKNAME;
	private String MASTER_PROFILE_PIC;
	private String MASTER_NICKNAME;
	private String MASTER_CATEGORY;
	private String MASTER_ID_PIC;
	private String MASTER_WORKDAY;
	private String MASTER_WORKSTYLE;
	private String MASTER_STARTTIME;
	private String MASTER_ENDTIME;
	public UserMaster() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserMaster(String uSER_EMAIL, String mASTER_RANKNAME, String mASTER_PROFILE_PIC, String mASTER_NICKNAME,
			String mASTER_CATEGORY, String mASTER_ID_PIC, String mASTER_WORKDAY, String mASTER_WORKSTYLE,
			String mASTER_STARTTIME, String mASTER_ENDTIME) {
		super();
		USER_EMAIL = uSER_EMAIL;
		MASTER_RANKNAME = mASTER_RANKNAME;
		MASTER_PROFILE_PIC = mASTER_PROFILE_PIC;
		MASTER_NICKNAME = mASTER_NICKNAME;
		MASTER_CATEGORY = mASTER_CATEGORY;
		MASTER_ID_PIC = mASTER_ID_PIC;
		MASTER_WORKDAY = mASTER_WORKDAY;
		MASTER_WORKSTYLE = mASTER_WORKSTYLE;
		MASTER_STARTTIME = mASTER_STARTTIME;
		MASTER_ENDTIME = mASTER_ENDTIME;
	}
	public String getUSER_EMAIL() {
		return USER_EMAIL;
	}
	public void setUSER_EMAIL(String uSER_EMAIL) {
		USER_EMAIL = uSER_EMAIL;
	}
	public String getMASTER_RANKNAME() {
		return MASTER_RANKNAME;
	}
	public void setMASTER_RANKNAME(String mASTER_RANKNAME) {
		MASTER_RANKNAME = mASTER_RANKNAME;
	}
	public String getMASTER_PROFILE_PIC() {
		return MASTER_PROFILE_PIC;
	}
	public void setMASTER_PROFILE_PIC(String mASTER_PROFILE_PIC) {
		MASTER_PROFILE_PIC = mASTER_PROFILE_PIC;
	}
	public String getMASTER_NICKNAME() {
		return MASTER_NICKNAME;
	}
	public void setMASTER_NICKNAME(String mASTER_NICKNAME) {
		MASTER_NICKNAME = mASTER_NICKNAME;
	}
	public String getMASTER_CATEGORY() {
		return MASTER_CATEGORY;
	}
	public void setMASTER_CATEGORY(String mASTER_CATEGORY) {
		MASTER_CATEGORY = mASTER_CATEGORY;
	}
	public String getMASTER_ID_PIC() {
		return MASTER_ID_PIC;
	}
	public void setMASTER_ID_PIC(String mASTER_ID_PIC) {
		MASTER_ID_PIC = mASTER_ID_PIC;
	}
	public String getMASTER_WORKDAY() {
		return MASTER_WORKDAY;
	}
	public void setMASTER_WORKDAY(String mASTER_WORKDAY) {
		MASTER_WORKDAY = mASTER_WORKDAY;
	}
	public String getMASTER_WORKSTYLE() {
		return MASTER_WORKSTYLE;
	}
	public void setMASTER_WORKSTYLE(String mASTER_WORKSTYLE) {
		MASTER_WORKSTYLE = mASTER_WORKSTYLE;
	}
	public String getMASTER_STARTTIME() {
		return MASTER_STARTTIME;
	}
	public void setMASTER_STARTTIME(String mASTER_STARTTIME) {
		MASTER_STARTTIME = mASTER_STARTTIME;
	}
	public String getMASTER_ENDTIME() {
		return MASTER_ENDTIME;
	}
	public void setMASTER_ENDTIME(String mASTER_ENDTIME) {
		MASTER_ENDTIME = mASTER_ENDTIME;
	}
	@Override
	public String toString() {
		return "MasterSignUp [USER_EMAIL=" + USER_EMAIL + ", MASTER_RANKNAME=" + MASTER_RANKNAME
				+ ", MASTER_PROFILE_PIC=" + MASTER_PROFILE_PIC + ", MASTER_NICKNAME=" + MASTER_NICKNAME
				+ ", MASTER_CATEGORY=" + MASTER_CATEGORY + ", MASTER_ID_PIC=" + MASTER_ID_PIC + ", MASTER_WORKDAY="
				+ MASTER_WORKDAY + ", MASTER_WORKSTYLE=" + MASTER_WORKSTYLE + ", MASTER_STARTTIME=" + MASTER_STARTTIME
				+ ", MASTER_ENDTIME=" + MASTER_ENDTIME + "]";
	}
	
	
	
}
