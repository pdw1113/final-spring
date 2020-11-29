package com.fp.neezit.chat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fp.neezit.chat.model.vo.ChatRoom;

@Controller
public class ChatController {
	
	ChatRoom chatroom;
	
	// 채팅방으로 연결하는 컨트롤러
	@ResponseBody
	@RequestMapping(value="{roomId}.do")
    public String room(@PathVariable String roomId){
		
		System.out.println("roomId" + roomId);
		
        return roomId;
    }
	
}
