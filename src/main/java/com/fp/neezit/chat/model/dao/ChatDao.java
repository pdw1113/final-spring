package com.fp.neezit.chat.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.neezit.chat.model.vo.ChatMessage;
import com.fp.neezit.chat.model.vo.ChatRoom;
import com.fp.neezit.product.model.vo.ProductCategory;

@Repository
public class ChatDao{	
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public ChatRoom selectChatRoom(String roomId) {
		return sqlSession.selectOne("chatMapper.selectChatRoom", roomId);
	}
	
	public int insertMessage(ChatMessage chatMessage) {
		return sqlSession.insert("chatMapper.insertMessage", chatMessage);
	}
	
	public List<ProductCategory> messageList(String roomId) {
		return sqlSession.selectList("chatMapper.messageList", roomId);
	}

	public int createChat(ChatRoom room) {
		return sqlSession.insert("chatMapper.createChat", room);
	}

	public ChatRoom searchChatRoom(ChatRoom room) {
		return sqlSession.selectOne("chatMapper.searchChatRoom", room);
	}

	public List<ProductCategory> chatRoomList(String userEmail) {
		return sqlSession.selectList("chatMapper.chatRoomList", userEmail);
	};

}
