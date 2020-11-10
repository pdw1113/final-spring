package com.fp.neezit.user.model.vo;

public class UserMasterSchool {
	private String email;
	private String sHigh;
	private String sUniv;
	private String sUnivDept;
	private String sUnivPicOri;
	private String sUnivPicRe;
	private String sUniv2;
	private String sUniv2Dept;
	private String sUniv2PicOri;
	private String sUniv2PicRe;
	
	public UserMasterSchool() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserMasterSchool(String email, String sHigh, String sUniv, String sUnivDept, String sUnivPicOri,
			String sUnivPicRe, String sUniv2, String sUniv2Dept, String sUniv2PicOri, String sUniv2PicRe) {
		super();
		this.email = email;
		this.sHigh = sHigh;
		this.sUniv = sUniv;
		this.sUnivDept = sUnivDept;
		this.sUnivPicOri = sUnivPicOri;
		this.sUnivPicRe = sUnivPicRe;
		this.sUniv2 = sUniv2;
		this.sUniv2Dept = sUniv2Dept;
		this.sUniv2PicOri = sUniv2PicOri;
		this.sUniv2PicRe = sUniv2PicRe;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getsHigh() {
		return sHigh;
	}

	public void setsHigh(String sHigh) {
		this.sHigh = sHigh;
	}

	public String getsUniv() {
		return sUniv;
	}

	public void setsUniv(String sUniv) {
		this.sUniv = sUniv;
	}

	public String getsUnivDept() {
		return sUnivDept;
	}

	public void setsUnivDept(String sUnivDept) {
		this.sUnivDept = sUnivDept;
	}

	public String getsUnivPicOri() {
		return sUnivPicOri;
	}

	public void setsUnivPicOri(String sUnivPicOri) {
		this.sUnivPicOri = sUnivPicOri;
	}

	public String getsUnivPicRe() {
		return sUnivPicRe;
	}

	public void setsUnivPicRe(String sUnivPicRe) {
		this.sUnivPicRe = sUnivPicRe;
	}

	public String getsUniv2() {
		return sUniv2;
	}

	public void setsUniv2(String sUniv2) {
		this.sUniv2 = sUniv2;
	}

	public String getsUniv2Dept() {
		return sUniv2Dept;
	}

	public void setsUniv2Dept(String sUniv2Dept) {
		this.sUniv2Dept = sUniv2Dept;
	}

	public String getsUniv2PicOri() {
		return sUniv2PicOri;
	}

	public void setsUniv2PicOri(String sUniv2PicOri) {
		this.sUniv2PicOri = sUniv2PicOri;
	}

	public String getsUniv2PicRe() {
		return sUniv2PicRe;
	}

	public void setsUniv2PicRe(String sUniv2PicRe) {
		this.sUniv2PicRe = sUniv2PicRe;
	}

	@Override
	public String toString() {
		return "UserMasterSchool [email=" + email + ", sHigh=" + sHigh + ", sUniv=" + sUniv + ", sUnivDept=" + sUnivDept
				+ ", sUnivPicOri=" + sUnivPicOri + ", sUnivPicRe=" + sUnivPicRe + ", sUniv2=" + sUniv2 + ", sUniv2Dept="
				+ sUniv2Dept + ", sUniv2PicOri=" + sUniv2PicOri + ", sUniv2PicRe=" + sUniv2PicRe + "]";
	}

	
}
