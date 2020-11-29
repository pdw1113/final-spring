package com.fp.neezit.chat.model.service;

import java.util.List;

import com.fp.neezit.chat.model.vo.ChatMessage;
import com.fp.neezit.chat.model.vo.ChatRoom;
import com.fp.neezit.product.model.vo.ProductCategory;

public interface ChatService {

	/**
	 * 방 번호를 선택하는 메소드
	 * @param roomId
	 * @return
	 */
	ChatRoom selectChatRoom(String roomId);

	/**
	 * 채팅 메세지 DB 저장
	 * @param chatMessage
	 * @return 
	 */
	int insertMessage(ChatMessage chatMessage);

	/**
	 * 메세지 내용 리스트 출력
	 * @param roomId
	 * @return
	 */
	List<ProductCategory> messageList(String roomId);

	/**
	 * 채팅 방 DB 저장
	 * @param room
	 * @return
	 */
	int createChat(ChatRoom room);

	/**
	 * DB에 채팅 방이 있는지 확인
	 * @param room
	 * @return
	 */
	ChatRoom searchChatRoom(ChatRoom room);

	/**
	 * 채팅 방 리스트 출력
	 * @param userEmail
	 * @return
	 */
	List<ProductCategory> chatRoomList(String userEmail);

}
