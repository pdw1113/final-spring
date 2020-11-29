package com.fp.neezit.chat.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fp.neezit.chat.model.service.ChatService;
import com.fp.neezit.product.model.vo.ProductCategory;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;

@Controller
public class ChatController {
	
	@Autowired
	ChatService cService;
	
	/**
	 * 해당 채팅방의 채팅 메세지 불러오기
	 * @param roomId
	 * @param model
	 * @param response
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping(value="{roomId}.do")
    public void room(@PathVariable String roomId, Model model, HttpServletResponse response) throws JsonIOException, IOException {
		
		List<ProductCategory> mList = cService.messageList(roomId);
		response.setContentType("application/json; charset=utf-8");

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(mList,response.getWriter());
    }
	
	
}
