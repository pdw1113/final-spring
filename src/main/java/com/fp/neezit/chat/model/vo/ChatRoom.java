package com.fp.neezit.chat.model.vo;

public class ChatRoom {
	
	private String roomId;		// 방 번호
	
	private String userEmail;	// 사용자 이메일
	private String userName;	// 사용자 이름
	private String userPic;		// 사용자 사진
	
	private String masterEmail; // 능력자 이메일
	private String masterName;	// 능력자 이름
	private String masterPic;	// 능력자 사진
	
	public ChatRoom() {
		super();
	}

	public ChatRoom(String roomId, String userEmail, String userName, String userPic, String masterEmail,
			String masterName, String masterPic) {
		super();
		this.roomId = roomId;
		this.userEmail = userEmail;
		this.userName = userName;
		this.userPic = userPic;
		this.masterEmail = masterEmail;
		this.masterName = masterName;
		this.masterPic = masterPic;
	}

	public String getRoomId() {
		return roomId;
	}

	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPic() {
		return userPic;
	}

	public void setUserPic(String userPic) {
		this.userPic = userPic;
	}

	public String getMasterEmail() {
		return masterEmail;
	}

	public void setMasterEmail(String masterEmail) {
		this.masterEmail = masterEmail;
	}

	public String getMasterName() {
		return masterName;
	}

	public void setMasterName(String masterName) {
		this.masterName = masterName;
	}

	public String getMasterPic() {
		return masterPic;
	}

	public void setMasterPic(String masterPic) {
		this.masterPic = masterPic;
	}

	@Override
	public String toString() {
		return "ChatRoom [roomId=" + roomId + ", userEmail=" + userEmail + ", userName=" + userName + ", userPic="
				+ userPic + ", masterEmail=" + masterEmail + ", masterName=" + masterName + ", masterPic=" + masterPic
				+ "]";
	}
}
