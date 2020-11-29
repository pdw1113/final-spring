package com.fp.neezit.chat.model.vo;

public class ChatRoom {
	
	private String roomId;		// 방 번호
	private String userEmail;	// 사용자 이메일
	private String masterEmail; // 능력자 이메일
	
	public ChatRoom() {
		super();
	}

	public ChatRoom(String roomId, String userEmail, String masterEmail) {
		super();
		this.roomId = roomId;
		this.userEmail = userEmail;
		this.masterEmail = masterEmail;
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

	public String getMasterEmail() {
		return masterEmail;
	}

	public void setMasterEmail(String masterEmail) {
		this.masterEmail = masterEmail;
	}

	@Override
	public String toString() {
		return "ChatRoom [roomId=" + roomId + ", userEmail=" + userEmail + ", masterEmail=" + masterEmail + "]";
	}
}
