package com.fp.neezit.chat.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.neezit.chat.model.dao.ChatDao;
import com.fp.neezit.chat.model.vo.ChatRoom;

@Service
public class ChatServiceImpl implements ChatService{
	
	@Autowired
	private ChatDao cDao;

	@Override
	public ChatRoom selectChatRoom(String roomId) {
		return cDao.selectChatRoom(roomId);
	}
	
	
}
