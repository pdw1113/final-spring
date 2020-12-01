package com.fp.neezit.support.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fp.neezit.support.model.service.SupportService;
import com.fp.neezit.support.model.vo.Notice;
import com.fp.neezit.user.model.vo.PageInfo;
import com.fp.neezit.user.model.vo.Pagination;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserBuyList;

@Controller
public class SupportController {
	
	@Autowired
	private SupportService sService;
	
	@RequestMapping("introduction.do")
	public String supportnav() {
		return "support/introduction";
	}
	
	@RequestMapping("noticeInsert.do")
	public String noticeInsert() {
		return "support/noticeInsert";
	}
	
	@RequestMapping("recruit.do")
	public String recruit() {
		return "support/recruit";
	}
	
	@RequestMapping("provision.do")
	public String provision() {
		return "support/provision";
	}
	
	@RequestMapping("privacy.do")
	public String privacy() {
		return "support/privacy";
	}
	
	/**
	 * 01. 공지 등록
	 * @param no
	 * @return
	 */
	@RequestMapping("nInsert.do")
	public String noticeInsert(Notice notice) {
		int result = sService.noticeInsert(notice);
		
		if(result==1) {
			return "redirect:noticeList.do";
		}else {
			System.out.println("공지등록 실패");
			return "redirect:noticeList.do";
		}
	}
	
	/**
	 * 02. 공지 리스트
	 * @param currentPage
	 * @param model
	 * @return
	 */
	@RequestMapping("noticeList.do") 
	public String noticeList(@RequestParam(value="currentPage"
			, required=false, defaultValue="1")int currentPage,Model model,String search_sel,String search_text) {
		
		  HashMap<String, String> map = new HashMap<String, String>();
		  
		  if(search_sel==null&&search_text == null){
			  search_sel="";
			  search_text = "";
		  }else{
			  search_text = "%"+search_text+"%";
		  }
		  
		  map.put("search_sel",search_sel);
		  
		  map.put("search_text",search_text);
		  
		  int listCount = sService.getNoticeCount(map); 
		  
		  PageInfo pi = Pagination.getPageInfo(currentPage, listCount,5);
		
		  ArrayList<Notice> notice = sService.getNoticeList(pi,map);
		  
		  model.addAttribute("notice",notice);
		  model.addAttribute("pi",pi);
		  model.addAttribute("search_sel",search_sel);
		  model.addAttribute("search_text",search_text);
		  
		return "support/noticeList";
	}
	
	/**
	 * 03. 공지 내용
	 * @param getNnum
	 * @return
	 */
	@RequestMapping("noticeDetail.do")
	public String noticeDetail(int getNnum,Model model) {
		  HashMap<String, String> map = new HashMap<String, String>();
		  map.put("search_sel","");
		  map.put("search_text","");
		  
		  int listCount = sService.getNoticeCount(map); 
		  
		if(getNnum==0) {
			model.addAttribute("msg","가장 마지막 글 입니다.");
			model.addAttribute("num",getNnum);
			
			return "support/noticeDetail";
		}else if(listCount<getNnum){
			model.addAttribute("msg","가장 최신 글 입니다.");
			model.addAttribute("num",getNnum);
			
			return "support/noticeDetail";
		}else {
			int ncount = sService.nCountup(getNnum);
			
			Notice notice = sService.getNotice(getNnum);
				
			model.addAttribute("notice",notice);
				
			return "support/noticeDetail";
		}
	}
}
