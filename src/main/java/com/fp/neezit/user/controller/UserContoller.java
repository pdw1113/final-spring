package com.fp.neezit.user.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fp.neezit.user.model.service.UserService;
import com.fp.neezit.user.model.vo.User;

@SessionAttributes("loginUser") // Model에 loginUser라는 키값으로 객체가 추가되면 자동으로 세션에 추가하라는 의미의 어노테이션
@Controller
public class UserContoller {
	
	// 원래는 new를 선언해서 가져와야 하는데
	// @Autowired를 걸어줌으로써 자동으로 인스턴스를 사용할 수 있게 된다.(자동할당)
	@Autowired
	private UserService uService;
	
	@RequestMapping("login.do")
	public String login() {
		return "user/login";
	}
	
	@RequestMapping("signUp.do")
	public String signUp() {
		return "user/signUp";
	}
	
	@RequestMapping("findPwd.do")
	public String findPwd() {
		return "user/findPwd";
	}
	
	@RequestMapping("signUpMaster.do")
	public String signUpMaster() {
		return "user/signUpMaster";
	}
	
	@RequestMapping("changePwd.do")
	public String changePwd() {
		return "user/changePwd";
	}
	
	@RequestMapping("profile.do")
	public String profile() {
		return "user/myPage/profile";
	}
	
	@RequestMapping("wallet.do")
	public String wallet() {
		return "user/myPage/wallet";
	}
	
	@RequestMapping("modifyPwd.do")
	public String modifyPwd() {
		return "user/myPage/modifyPwd";
	}
	
	@RequestMapping("deleteUser.do")
	public String deleteUser() {
		return "user/myPage/deleteUser";
	}
	
	@RequestMapping("wishList.do")
	public String wishList() {
		return "user/myPage/wishList";
	}
	
	@RequestMapping("buyList.do")
	public String buyList() {
		return "user/myPage/buyList";
	}
	
	@RequestMapping("charge.do")
	public String charge() {
		return "user/myPage/charge";
	}
	
	@RequestMapping("walletDetail.do")
	public String walletDetail() {
		return "user/myPage/walletDetail";
	}
	
	/*
	 * 	Alt + Shift + J : 메소드에 주석 달기
	 * 
	 * 	1. Model 객체 사용하는 방법
	 * 	커맨드 객체로 Model을 사용하게 되면 뷰(view)로 전달하고자 하는 데이터를 맵 형식(key, value)로 담을 때 사용한다.
	 *  scope는 request이다.
	 */
	/**
	 * 로그인 세션 메소드
	 * @param u
	 * @param model
	 * @return 
	 */
	@RequestMapping(value="login.do",method=RequestMethod.POST)
	public String memberLogin(User u, Model model) { // view에 전달하는 데이터를 Model에 담는다.
		User loginUser = uService.loginUser(u);
		
		if(loginUser != null) {
			// model은 request영역이다. 그것을 상단의 @SessionAttributes가 session영역으로 바꿔준다.
			// request → session
			model.addAttribute("loginUser",loginUser); 
			return "redirect:index.do";
		}else {
			model.addAttribute("msg", "로그인 실패!");
			return "common/errorPage";
		}
	}
	
	/**
	 * 휴대폰번호 중복체크 AJAX
	 * @param phone
	 * @return
	 * @throws IOException
	 */
	@ResponseBody
	@RequestMapping("phoneCheck.do")
	public String idCheck(String phone) throws IOException  {
		
		int result = uService.phoneCheck(phone);
		
		if(result > 0) { // 중복 존재
			return "fail";
		}else {
			return "ok";
		}
	}
	
    @Inject    //서비스를 호출하기 위해서 의존성을 주입
    JavaMailSender mailSender;     //메일 서비스를 사용하기 위해 의존성을 주입함.
	
	// EMAIL 인증
	@RequestMapping(value = "signUp.do", method=RequestMethod.POST)
    public String mailSending(String email, Model model, HttpServletResponse response_email) throws IOException {

		// 인증번호 난수(랜덤 숫자)
        Random r = new Random();
        
        // 이메일로 받는 인증코드 부분 (난수) (0 ~ 4589361) + 49311;
        int dice = r.nextInt(4589362) + 49311; 
        
        // 보내는 사람 Email
        String setfrom = "cjsehdals0430@gmail.com";
        
        // 받는 사람 Email
        String tomail = email;
        
        // 제목
        String title = "회원가입 인증 이메일 입니다.";
        
        // 내용
        String content =
        
        System.getProperty("line.separator") + // 현재 OS에 맞는 개행 문자를 사용할 수 있다.
        
        System.getProperty("line.separator") +
                
        "안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다" +
        
        System.getProperty("line.separator") +
        
        System.getProperty("line.separator") +

        "인증번호는 " + dice + " 입니다. " +
        
        System.getProperty("line.separator") +
        
        System.getProperty("line.separator") +
        
        "받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다.";
        
        try {
        	// 이메일 메세지 보낼 수 있는 객체 라이브러리
            MimeMessage message = mailSender.createMimeMessage();
            
            // MimeMessage를 도와주는 객체 라이브러리
            MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

            // MimeMessageHelper 양식
            messageHelper.setFrom(setfrom);  // 보내는 사람 E-mail
            messageHelper.setTo(tomail);     // 받는 사람    E-mail
            messageHelper.setSubject(title); // 메일 제목   (생략 가능)
            messageHelper.setText(content);  // 메일 내용
            
            // 인증번호 출력용
            System.out.println(dice);

            // 사진 파일 전송 
            FileSystemResource file = new FileSystemResource(new File("C:\\Users\\drnew\\Pictures\\g.gif"));
            messageHelper.addInline("g.gif", file);
            
            // MimeMessage 전송
            mailSender.send(message);
            
        } catch (Exception e) {
            System.out.println(e);
        }
        
        // 
        model.addAttribute("dice", dice);
        
        response_email.setContentType("text/html; charset=UTF-8");
        PrintWriter out_email = response_email.getWriter();
        out_email.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.');</script>");
        out_email.flush();
        
        return "/user/email";
    }
	
    //이메일로 받은 인증번호를 입력하고 전송 버튼을 누르면 맵핑되는 메소드.
    //내가 입력한 인증번호와 메일로 입력한 인증번호가 맞는지 확인해서 맞으면 회원가입 페이지로 넘어가고,
    //틀리면 다시 원래 페이지로 돌아오는 메소드
    @RequestMapping(value = "{dice}.do", method = RequestMethod.POST)
    public String join_injeung(Model model, String confirm_number, @PathVariable String dice, HttpServletResponse response_equals) throws IOException {
    											   // @PathVaribale : value의 {dice}를 받아온다.
        
        System.out.println("인증번호 : " + dice);
        System.out.println("사용자가 입력한 인증번호 : "+ confirm_number);

        // 인증번호가 일치할 경우 인증번호가 맞다는 창을 출력하고 회원가입창으로 이동함
        if (confirm_number.equals(dice)) {

//            response_equals.setContentType("text/html; charset=UTF-8");
//            PrintWriter out_equals = response_equals.getWriter();
//            out_equals.println("<script>alert('인증번호가 일치하였습니다. 회원가입창으로 이동합니다.');</script>");
//            out_equals.flush();
            
        }else if (confirm_number != dice) {
        	
            model.addAttribute("msg","이메일 인증 실패!");
            
//            response_equals.setContentType("text/html; charset=UTF-8");
//            PrintWriter out_equals = response_equals.getWriter();
//            out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.');</script>");
//            out_equals.flush();

            return "common/errorPage";
            
        }
        return "redirect:index.do";
    }
    
    
}
