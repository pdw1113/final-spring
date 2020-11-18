package com.fp.neezit.manager.model.vo;

import java.sql.Date;

public class UserList {
	
	private String name;
	private String phone;
	private String email;
	private String pwd;
	private Date enrollDate;
	private Date updateDate;
	private String status;
	private String marketingT;
	private String marketingE;
	
    private String mRankname;    // 마스터 랭크
    private String mProPicOri;	// 프로필 오리진 이미지
    private String mProPicRe; 	// 프로필 리네임 이미지
    private String mNickname;    // 닉네임
    private String mCategory;    // 카테고리
    private String mIdPicOri;	// 신분증 이미지
    private String mIdPicRe;		// 신분증 이미지
	private String mWorkDay;     // 근무가능 요일
    private String mWorkStyle;   // 자택,출근 스타일
    private String mStartTime;   // 몇시에서
    private String mEndTime;     // 몇시까지
    private double mStar;		// 별점
    
    
    public UserList() {
		super();
	}

	public UserList(String name, String phone, String email, String pwd, Date enrollDate, Date updateDate,
			String status, String marketingT, String marketingE, String mRankname, String mProPicOri, String mProPicRe,
			String mNickname, String mCategory, String mIdPicOri, String mIdPicRe, String mWorkDay, String mWorkStyle,
			String mStartTime, String mEndTime, double mStar) {
		super();
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.pwd = pwd;
		this.enrollDate = enrollDate;
		this.updateDate = updateDate;
		this.status = status;
		this.marketingT = marketingT;
		this.marketingE = marketingE;
		this.mRankname = mRankname;
		this.mProPicOri = mProPicOri;
		this.mProPicRe = mProPicRe;
		this.mNickname = mNickname;
		this.mCategory = mCategory;
		this.mIdPicOri = mIdPicOri;
		this.mIdPicRe = mIdPicRe;
		this.mWorkDay = mWorkDay;
		this.mWorkStyle = mWorkStyle;
		this.mStartTime = mStartTime;
		this.mEndTime = mEndTime;
		this.mStar = mStar;
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
	public String getMarketingT() {
		return marketingT;
	}
	public void setMarketingT(String marketingT) {
		this.marketingT = marketingT;
	}
	public String getMarketingE() {
		return marketingE;
	}
	public void setMarketingE(String marketingE) {
		this.marketingE = marketingE;
	}
	public String getmRankname() {
		return mRankname;
	}
	public void setmRankname(String mRankname) {
		this.mRankname = mRankname;
	}
	public String getmProPicOri() {
		return mProPicOri;
	}
	public void setmProPicOri(String mProPicOri) {
		this.mProPicOri = mProPicOri;
	}
	public String getmProPicRe() {
		return mProPicRe;
	}
	public void setmProPicRe(String mProPicRe) {
		this.mProPicRe = mProPicRe;
	}
	public String getmNickname() {
		return mNickname;
	}
	public void setmNickname(String mNickname) {
		this.mNickname = mNickname;
	}
	public String getmCategory() {
		return mCategory;
	}
	public void setmCategory(String mCategory) {
		this.mCategory = mCategory;
	}
	public String getmIdPicOri() {
		return mIdPicOri;
	}
	public void setmIdPicOri(String mIdPicOri) {
		this.mIdPicOri = mIdPicOri;
	}
	public String getmIdPicRe() {
		return mIdPicRe;
	}
	public void setmIdPicRe(String mIdPicRe) {
		this.mIdPicRe = mIdPicRe;
	}
	public String getmWorkDay() {
		return mWorkDay;
	}
	public void setmWorkDay(String mWorkDay) {
		this.mWorkDay = mWorkDay;
	}
	public String getmWorkStyle() {
		return mWorkStyle;
	}
	public void setmWorkStyle(String mWorkStyle) {
		this.mWorkStyle = mWorkStyle;
	}
	public String getmStartTime() {
		return mStartTime;
	}
	public void setmStartTime(String mStartTime) {
		this.mStartTime = mStartTime;
	}
	public String getmEndTime() {
		return mEndTime;
	}
	public void setmEndTime(String mEndTime) {
		this.mEndTime = mEndTime;
	}
	public double getmStar() {
		return mStar;
	}
	public void setmStar(double mStar) {
		this.mStar = mStar;
	}

	@Override
	public String toString() {
		return "UserList [name=" + name + ", phone=" + phone + ", email=" + email + ", pwd=" + pwd + ", enrollDate="
				+ enrollDate + ", updateDate=" + updateDate + ", status=" + status + ", marketingT=" + marketingT
				+ ", marketingE=" + marketingE + ", mRankname=" + mRankname + ", mProPicOri=" + mProPicOri
				+ ", mProPicRe=" + mProPicRe + ", mNickname=" + mNickname + ", mCategory=" + mCategory + ", mIdPicOri="
				+ mIdPicOri + ", mIdPicRe=" + mIdPicRe + ", mWorkDay=" + mWorkDay + ", mWorkStyle=" + mWorkStyle
				+ ", mStartTime=" + mStartTime + ", mEndTime=" + mEndTime + ", mStar=" + mStar + "]";
	}

	
}
