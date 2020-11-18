package com.fp.neezit.user.model.vo;

import javax.servlet.http.HttpServletRequest;

public class Getip {
	public String getClientIP(HttpServletRequest request) {
		String ip = request.getHeader("확인 X-FORWARDED-FOR");
		
		 if(ip == null || ip.length() == 0) {
		        ip = request.getHeader("Proxy-Client-IP");
		    }
		    if(ip == null || ip.length() == 0) {
		        ip = request.getHeader("WL-Proxy-Client-IP");  // 웹로직
		    }
		    if(ip == null || ip.length() == 0) {
		        ip = request.getRemoteAddr();
		    }
		return ip;
	}
}
