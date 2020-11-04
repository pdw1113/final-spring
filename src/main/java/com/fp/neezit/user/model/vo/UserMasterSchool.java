package com.fp.neezit.user.model.vo;

public class UserMasterSchool {
	private String USER_EMAIL;
	private String MASTER_HIGH;
	private String MASTER_UNIV;
	private String MASTER_UNIV_DEPT;
	private String MASTER_UNIV_PIC;
	private String MASTER_UNIV2;
	private String MASTER_UNIV2_DEPT;
	private String MASTER_UNIV2_PIC;
	public UserMasterSchool() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserMasterSchool(String uSER_EMAIL, String mASTER_HIGH, String mASTER_UNIV, String mASTER_UNIV_DEPT,
			String mASTER_UNIV_PIC, String mASTER_UNIV2, String mASTER_UNIV2_DEPT, String mASTER_UNIV2_PIC) {
		super();
		USER_EMAIL = uSER_EMAIL;
		MASTER_HIGH = mASTER_HIGH;
		MASTER_UNIV = mASTER_UNIV;
		MASTER_UNIV_DEPT = mASTER_UNIV_DEPT;
		MASTER_UNIV_PIC = mASTER_UNIV_PIC;
		MASTER_UNIV2 = mASTER_UNIV2;
		MASTER_UNIV2_DEPT = mASTER_UNIV2_DEPT;
		MASTER_UNIV2_PIC = mASTER_UNIV2_PIC;
	}
	public String getUSER_EMAIL() {
		return USER_EMAIL;
	}
	public void setUSER_EMAIL(String uSER_EMAIL) {
		USER_EMAIL = uSER_EMAIL;
	}
	public String getMASTER_HIGH() {
		return MASTER_HIGH;
	}
	public void setMASTER_HIGH(String mASTER_HIGH) {
		MASTER_HIGH = mASTER_HIGH;
	}
	public String getMASTER_UNIV() {
		return MASTER_UNIV;
	}
	public void setMASTER_UNIV(String mASTER_UNIV) {
		MASTER_UNIV = mASTER_UNIV;
	}
	public String getMASTER_UNIV_DEPT() {
		return MASTER_UNIV_DEPT;
	}
	public void setMASTER_UNIV_DEPT(String mASTER_UNIV_DEPT) {
		MASTER_UNIV_DEPT = mASTER_UNIV_DEPT;
	}
	public String getMASTER_UNIV_PIC() {
		return MASTER_UNIV_PIC;
	}
	public void setMASTER_UNIV_PIC(String mASTER_UNIV_PIC) {
		MASTER_UNIV_PIC = mASTER_UNIV_PIC;
	}
	public String getMASTER_UNIV2() {
		return MASTER_UNIV2;
	}
	public void setMASTER_UNIV2(String mASTER_UNIV2) {
		MASTER_UNIV2 = mASTER_UNIV2;
	}
	public String getMASTER_UNIV2_DEPT() {
		return MASTER_UNIV2_DEPT;
	}
	public void setMASTER_UNIV2_DEPT(String mASTER_UNIV2_DEPT) {
		MASTER_UNIV2_DEPT = mASTER_UNIV2_DEPT;
	}
	public String getMASTER_UNIV2_PIC() {
		return MASTER_UNIV2_PIC;
	}
	public void setMASTER_UNIV2_PIC(String mASTER_UNIV2_PIC) {
		MASTER_UNIV2_PIC = mASTER_UNIV2_PIC;
	}
	@Override
	public String toString() {
		return "MasterSchool [USER_EMAIL=" + USER_EMAIL + ", MASTER_HIGH=" + MASTER_HIGH + ", MASTER_UNIV="
				+ MASTER_UNIV + ", MASTER_UNIV_DEPT=" + MASTER_UNIV_DEPT + ", MASTER_UNIV_PIC=" + MASTER_UNIV_PIC
				+ ", MASTER_UNIV2=" + MASTER_UNIV2 + ", MASTER_UNIV2_DEPT=" + MASTER_UNIV2_DEPT + ", MASTER_UNIV2_PIC="
				+ MASTER_UNIV2_PIC + "]";
	}
	
	
}
