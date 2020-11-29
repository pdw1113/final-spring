//package com.fp.neezit.chat.controller;
//
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Map;
//import java.util.concurrent.ConcurrentHashMap;
//
//import org.springframework.beans.factory.InitializingBean;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.socket.CloseStatus;
//import org.springframework.web.socket.TextMessage;
//import org.springframework.web.socket.WebSocketSession;
//import org.springframework.web.socket.handler.TextWebSocketHandler;
//
//import com.fp.neezit.chat.model.service.ChatService;
//import com.fp.neezit.chat.model.vo.ChatMessage;
//import com.fp.neezit.chat.model.vo.ChatRoom;
//
//@Controller
//public class WebSocketChatController3 extends TextWebSocketHandler implements InitializingBean {
//	
//	@Autowired
//	ChatService cService;
//
//	// 현재 연결된 session List배열
//	private List<WebSocketSession> connectedUsers;
//
//	public WebSocketChatController3() {
//		connectedUsers = new ArrayList<WebSocketSession>();
//	}
//
//	// session의 id와 session을 저장
//	private Map<String, WebSocketSession> users = new ConcurrentHashMap<String, WebSocketSession>();
//
//	/**
//	 * websocket 연결 성공 시
//	 */
//	@Override
//	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
//		// Map에 저장
//		users.put(session.getId(), session);
//		// List에 저장
//		connectedUsers.add(session);
//		System.out.println(session.getId() + "연결 성공");
//	}
//
//	/**
//	 * websocket 연결 종료 시
//	 */
//	@Override
//	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
//		// List에서 제거
//		connectedUsers.remove(session);
//		// Map에서 제거
//		users.remove(session.getId());
//		System.out.println(session.getId() + "연결 종료");
//	}
//
//	@Override
//	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
//
//		// User로부터 전송받은 메세지
//		System.out.println(message.getPayload());
//
//		// Map 객체 생성
//		Map<String, Object> map = null;
//		
//		// SocketMessage를 vo에 담는다.
//		ChatMessage messageVO = ChatMessage.convertMessage(message.getPayload());
//
//		System.out.println("1 : " + messageVO.toString());
//		
//		// 채팅방 vo 생성
//		ChatRoom roomVO = new ChatRoom();
//		
//		// 전달받은 메세지의 유저와 마스터를 담는다.
//		roomVO.setUserEmail(messageVO.getUserEmail()); 	   // 유저
//		roomVO.setMasterEmail(messageVO.getMasterEmail()); // 마스터
//		
//		ChatRoom croom = null;
//		for(WebSocketSession s : connectedUsers) {
//		s.sendMessage(new TextMessage(messageVO.getUserEmail() + "," +  messageVO.getMsgContent()));
//		System.out.println(messageVO.getUserEmail() + "," +  messageVO.getMsgContent());
//		}
//	}
//	
//	@Override
//	public void afterPropertiesSet() throws Exception {}
//}