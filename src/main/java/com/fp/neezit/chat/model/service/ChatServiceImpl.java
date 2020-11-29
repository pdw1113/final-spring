package com.fp.neezit.chat.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.neezit.chat.model.dao.ChatDao;
import com.fp.neezit.chat.model.vo.ChatMessage;
import com.fp.neezit.chat.model.vo.ChatRoom;
import com.fp.neezit.product.model.vo.ProductCategory;

@Service
public class ChatServiceImpl implements ChatService{
	
	@Autowired
	private ChatDao cDao;

	@Override
	public ChatRoom selectChatRoom(String roomId) {
		return cDao.selectChatRoom(roomId);
	}

	@Override
	public int insertMessage(ChatMessage chatMessage) {
		return cDao.insertMessage(chatMessage);
	}

	@Override
	public List<ProductCategory> messageList(String roomId) {
		return cDao.messageList(roomId);
	}

	@Override
	public int createChat(ChatRoom room) {
		return cDao.createChat(room);
	}

	@Override
	public ChatRoom searchChatRoom(ChatRoom room) {
		return cDao.searchChatRoom(room);
	}

	@Override
	public List<ProductCategory> chatRoomList(String userEmail) {
		return cDao.chatRoomList(userEmail);
	}
	
	
}
