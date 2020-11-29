package com.fp.neezit.chat.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.neezit.chat.model.vo.ChatRoom;

@Repository
public class ChatDao{	
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public void createRoom(ChatRoom vo){
		sqlSession.insert("chatMapper.createRoom", vo);
	}
	public ChatRoom selectChatRoom(String roomId) {
		return sqlSession.selectOne("chatMapper.selectChatRoom", roomId);
	};

}
