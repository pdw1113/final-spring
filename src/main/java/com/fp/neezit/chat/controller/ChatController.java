package com.fp.neezit.chat.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fp.neezit.chat.model.service.ChatService;
import com.fp.neezit.chat.model.vo.ChatRoom;
import com.fp.neezit.product.model.service.ProductService;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.user.model.vo.UserMaster;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;

@Controller
public class ChatController {
	
	@Autowired
	ChatService cService;
	
	@Autowired
	ProductService pService;
	
	/**
	 * 해당 채팅방의 채팅 메세지 불러오기
	 * @param roomId
	 * @param model
	 * @param response
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping(value="{roomId}.do")
    public void messageList(@PathVariable String roomId, Model model, HttpServletResponse response) throws JsonIOException, IOException {
		
		List<ProductCategory> mList = cService.messageList(roomId);
		response.setContentType("application/json; charset=utf-8");

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(mList,response.getWriter());
    }
	
	/**
	 * 채팅 방이 없을 때 생성
	 * @param room
	 * @param userEmail
	 * @param masterNickname
	 * @return
	 */
	@ResponseBody
	@RequestMapping("createChat.do")
	public String createChat(ChatRoom room, String userName, String userEmail, String masterNickname){
		
		UserMaster m = pService.getProductDetail(masterNickname);
		
		room.setUserEmail(userEmail);
		room.setUserName(userName);
		room.setMasterEmail(m.getEmail());
		room.setMasterName(m.getmNickname());
		room.setMasterPic(m.getmProPicRe());

		ChatRoom exist  = cService.searchChatRoom(room);
		
		// DB에 방이 없을 때
		if(exist == null) {
			System.out.println("방이 없다!!");
			int result = cService.createChat(room);
			if(result == 1) {
				System.out.println("방 만들었다!!");
				return "success";
			}else {
				return "fail";
			}
		}
		// DB에 방이 있을 때
		else{
			System.out.println("방이 있다!!");
			return "aru";
		}
	}
	
	/**
	 * 채팅 방 목록 불러오기
	 * @param room
	 * @param userEmail
	 * @param response
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("chatRoomList.do")
	public void createChat(ChatRoom room, String userEmail, HttpServletResponse response) throws JsonIOException, IOException{
		List<ProductCategory> cList = cService.chatRoomList(userEmail);
		response.setContentType("application/json; charset=utf-8");

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(cList,response.getWriter());
	}
	
}
