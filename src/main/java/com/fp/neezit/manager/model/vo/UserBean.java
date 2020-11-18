package com.fp.neezit.manager.model.vo;

import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserMaster;


public class UserBean {
	private User user;
	private UserMaster userMaster;
	

	public UserBean() {
		super();
	}

	public UserBean(User user, UserMaster userMaster) {
		super();
		this.user = user;
		this.userMaster = userMaster;
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

	@Override
	public String toString() {
		return "UserBean [user=" + user + ", userMaster=" + userMaster + "]";
	}
	
	
	
	
}
