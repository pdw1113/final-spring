package com.fp.neezit.chat.controller;
import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler; 

public class WebSocketChatController extends TextWebSocketHandler implements InitializingBean {
	
	/* 
	 * HashSet : 
	 * 1) 중복을 허용하지 않는다.
	 * 2) 순서를 고려하지 않는다.
	 */
	// WebSocketSession의 Set을 하나 만들어준다. WebSocketSession객체에는 session의 [id, uri]가 담겨져있다.
	private Set<WebSocketSession> sessionSet = new HashSet<WebSocketSession>();
	
	private static int i = 0;

	public WebSocketChatController (){
		super();
	}
	
	/**
	 * WebSocket 연결이 열리고 사용이 준비될 때 호출
	 */
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		super.afterConnectionEstablished(session);
		sessionSet.add(session);
		System.out.println("세션 : " + session.getId() + " 입장");
		i++;
		System.out.println( i + "명의 웹소켓 연결 성공!");
		System.out.println(sessionSet);
	}

	/**
	 * 클라이언트로부터 메시지가 도착했을 때 호출
	 */
	@Override
	public void handleMessage(WebSocketSession session, WebSocketMessage<?> message) throws Exception {
		super.handleMessage(session, message);
		
		// 클라이언트가 전송한 메세지
		String msg = (String)message.getPayload();
		
		// 모든 세션에 뿌려주기
		for(WebSocketSession s : sessionSet) {
			s.sendMessage(new TextMessage(msg));
		}
		
		// 메세지 확인
		System.out.println("클라이언트로부터 전달받은 메세지 : " + msg);
	}

	/**
	 * 전송 에러 발생할 때 호출
	 */
	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		
	}

	/**
	 * WebSocketHandler가 부분 메시지를 처리할 때 호출
	 */
	@Override
	public boolean supportsPartialMessages() {
		return super.supportsPartialMessages();
	}

	
	public void sendMessage (String message){
		for (WebSocketSession session: this.sessionSet){
			if (session.isOpen()){
				try{
					session.sendMessage(new TextMessage(message));
				}catch (Exception ignored){
				}
			}
		}
	}

	/**
	 * WebSocket 연결이 닫혔을 때 호출
	 */
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		super.afterConnectionClosed(session, status);
		sessionSet.remove(session);
		System.out.println("세션 : " + session.getId() + " 퇴장");
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		
//		Thread thread = new Thread(){
//
//			int i = 0;
//			
//			@Override
//			public void run() {
//				while (true){
//					try {
//						sendMessage ("채팅 지속 시간 :  "+i++);
//						Thread.sleep(1000);
//					} catch (InterruptedException e) {
//						e.printStackTrace();
//						break;
//					}
//				}
//			}
//		};
//		thread.start();
	}
}