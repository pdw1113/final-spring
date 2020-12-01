package com.fp.neezit;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.fp.neezit.user.model.service.UserService;
import com.fp.neezit.user.model.vo.Thanos;
import com.fp.neezit.user.model.vo.User;
import com.fp.neezit.user.model.vo.UserMaster;

/**
 * Handles requests for the application home page.
 */
@SessionAttributes({"master3","mRankPic"})
@Controller
public class IndexController {
	@Autowired
	private UserService uService;
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String index(User u,Model model,HttpServletRequest request) {
		
		
		List<Thanos> th = uService.thanosList();

		model.addAttribute("thanos", th);
		return "index";
	}

	@RequestMapping(value = "index2.do", method = RequestMethod.GET)
	public String index2(User u, Model model, @RequestParam int count) {
		int master = count;
		System.err.println("index2 : " + master );
		if(master == 1) {
			String mRankPic = "test";
			String thanosHand = "타노스손";
			model.addAttribute("thanosHand", thanosHand);
			model.addAttribute("mRankPic", mRankPic);
			model.addAttribute("master3", master);
			
			List<Thanos> th = uService.thanosList();
			model.addAttribute("thanos", th);
		}
		return "index";
	}

	// session master3을 종료시켜주기 위함.
	@RequestMapping("logout2.do")
	public String logout(SessionStatus status) {

		status.setComplete();

		return "redirect:index.do";
	}
}
