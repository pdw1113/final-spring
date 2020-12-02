package com.fp.neezit.chat.model.vo;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component("cSession")
public class ChatSession {
	
	private static ArrayList<String> loginUser = new ArrayList<String>();
	
	public void addLoginUser(String email) {
		loginUser.add(email);
	}
	
	public void removeLoginUser(String email) {
		loginUser.remove(email);
	}

	public static ArrayList<String> getLoginUser() {
		return loginUser;
	}

	public static void setLoginUser(ArrayList<String> loginUser) {
		ChatSession.loginUser = loginUser;
	}
}
