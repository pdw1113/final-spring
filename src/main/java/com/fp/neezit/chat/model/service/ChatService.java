package com.fp.neezit.chat.model.service;

import com.fp.neezit.chat.model.vo.ChatRoom;

public interface ChatService {

	/**
	 * 방 번호를 선택하는 메소드
	 * @param roomId
	 * @return
	 */
	ChatRoom selectChatRoom(String roomId);

}
