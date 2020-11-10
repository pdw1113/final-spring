package com.fp.neezit;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

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
import com.fp.neezit.user.model.vo.User;

/**
 * Handles requests for the application home page.
 */
@SessionAttributes("master3")
@Controller
public class IndexController {
	@Autowired
	private UserService uService;
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String index() {
		
		return "index";
	}

	@RequestMapping(value = "index2.do", method = RequestMethod.GET)
	public String index2(User u, Model model, @RequestParam int count) {
		int master = count;
		System.err.println("index2 : " + master );
		if(master == 1) {
			model.addAttribute("master3", master);
		}
		return "index";
	}
	
	@RequestMapping("logout2.do")
	public String logout(SessionStatus status) {

		status.setComplete();

		return "redirect:index.do";
	}
}
