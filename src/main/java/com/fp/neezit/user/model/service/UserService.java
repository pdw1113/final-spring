package com.fp.neezit.user.model.service;

import com.fp.neezit.user.model.vo.User;

public interface UserService {
	
	User loginUser(User u);

	int phoneCheck(String phone);

	int insertMember(User u);

}
