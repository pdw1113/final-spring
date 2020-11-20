package com.fp.neezit.manager.model.vo;

import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserAccess;
import com.fp.neezit.user.model.vo.UserMaster;


public class UserBean {
	private User user;
	private UserMaster userMaster;
	private UserAccess userAccess;
	
	public UserBean() {
		super();
	}

	public UserBean(User user, UserMaster userMaster, UserAccess userAccess) {
		super();
		this.user = user;
		this.userMaster = userMaster;
		this.userAccess = userAccess;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserMaster getUserMaster() {
		return userMaster;
	}

	public void setUserMaster(UserMaster userMaster) {
		this.userMaster = userMaster;
	}

	public UserAccess getUserAccess() {
		return userAccess;
	}

	public void setUserAccess(UserAccess userAccess) {
		this.userAccess = userAccess;
	}

	@Override
	public String toString() {
		return "UserBean [user=" + user + ", userMaster=" + userMaster + ", userAccess=" + userAccess + "]";
	}
	
	
}
