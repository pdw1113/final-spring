//package com.fp.neezit.chat.controller;
//import org.springframework.beans.factory.InitializingBean;
//import org.springframework.stereotype.Component;
//import org.springframework.web.socket.TextMessage;
//import org.springframework.web.socket.WebSocketSession;
//import org.springframework.web.socket.handler.TextWebSocketHandler;
//
//import com.fasterxml.jackson.databind.ObjectMapper;
//import com.fp.neezit.chat.model.vo.ChatMessage;
//import com.fp.neezit.chat.model.vo.ChatRoom; 
//
//@Component
//public class WebSocketChatController2 extends TextWebSocketHandler implements InitializingBean {
//	
//    private ObjectMapper objectMapper;
//
//    @Override
//    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
//        String msg = message.getPayload();
//        ChatMessage chatMessage = objectMapper.readValue(msg,ChatMessage.class);
////        ChatRoom chatRoom = chatRoomRepository.findRoomById(chatMessage.getChatRoomId());
////        chatRoom.handleMessage(session,chatMessage,objectMapper);
//    }
//
//	@Override
//	public void afterPropertiesSet() throws Exception {
//		// TODO Auto-generated method stub
//		
//	}
//	
//}