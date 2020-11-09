package com.fp.neezit.user.model.vo;

public class UserMaster {
   private String email;       // 유저 이메일
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
   private String mStar;		// 별점
   
   public UserMaster() {
      super();
      // TODO Auto-generated constructor stub
   }

	public UserMaster(String email, String mRankname, String mProPicOri, String mProPicRe, String mNickname,
			String mCategory, String mIdPicOri, String mIdPicRe, String mWorkDay, String mWorkStyle, String mStartTime,
			String mEndTime, String mStar) {
		super();
		this.email = email;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getmStar() {
		return mStar;
	}

	public void setmStar(String mStar) {
		this.mStar = mStar;
	}

	@Override
	public String toString() {
		return "UserMaster [email=" + email + ", mRankname=" + mRankname + ", mProPicOri=" + mProPicOri + ", mProPicRe="
				+ mProPicRe + ", mNickname=" + mNickname + ", mCategory=" + mCategory + ", mIdPicOri=" + mIdPicOri
				+ ", mIdPicRe=" + mIdPicRe + ", mWorkDay=" + mWorkDay + ", mWorkStyle=" + mWorkStyle + ", mStartTime="
				+ mStartTime + ", mEndTime=" + mEndTime + ", mStar=" + mStar + "]";
	}
}