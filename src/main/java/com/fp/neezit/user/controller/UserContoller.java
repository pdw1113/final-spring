package com.fp.neezit.user.controller;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.user.model.service.UserService;
import com.fp.neezit.user.model.vo.Dice;
import com.fp.neezit.user.model.vo.User;

import net.sf.json.JSONArray;

@SessionAttributes("loginUser") // Model에 loginUser라는 키값으로 객체가 추가되면 자동으로 세션에 추가하라는 의미의 어노테이션
@Controller
public class UserContoller {
	
	// 원래는 new를 선언해서 가져와야 하는데
	// @Autowired를 걸어줌으로써 자동으로 인스턴스를 사용할 수 있게 된다.(자동할당)
	@Autowired
	private UserService uService;
	
	// 이메일 인증 비밀번호
	@Autowired
	private Dice diceObj;
	
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
	
	@RequestMapping(value = "signUpMaster.do" , method = RequestMethod.GET)
	public String signUpMaster(Model model) throws Exception {
		
		
		// 상품 카테고리 3분류
				List<ProductCategory> category = null;
				category = uService.category();
				model.addAttribute("category", JSONArray.fromObject(category));
		
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
	 * 1. 로그인 세션 메소드
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
	 * 2. 휴대폰번호 중복체크 AJAX
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
		
		// @ReponseBody
		// 클라이언트에서 서버로 필요한 데이터를 전송하기 위해서 JSON이라는 데이터를 요청 본문에 담아서 서버로 보내면, 
		// 서버에서는 @RequestBody 어노테이션을 사용하여 HTTP 요청 본문에 담긴 값들을 자바 객체로 변환 시켜, 객체에 저장시킵니다.
		// 서버에서 클라이언트로 응답 데이터를 전송하기 위해서 @ResponseBody 를 사용하여 
		// 자바 객체를 HTTP 응답 본문의 객체로 변환하여 클라이언트로 전송시키는 역할을 합니다.
	}
	
    @Inject    					// 서비스를 호출하기 위해서 의존성을 주입
    JavaMailSender mailSender;	// 메일 서비스를 사용하기 위해 의존성을 주입함.
	
    /**
     * 3. EMAIL 인증
     * @param email
     * @return
     * @throws IOException
     */
    @ResponseBody
	@RequestMapping(value = "emailNum.do", method=RequestMethod.POST)
    public String mailSending(String email) throws IOException {
    	
		int result = uService.emailCheck(email);
		
		// 이메일 중복 존재 할 때
		if(result > 0) {
			return "duplicate";
			
		// 이메일 중복 X
		}else {
			
			// 인증번호 난수(랜덤 숫자)
	        Random r = new Random();
	        
	        // 이메일로 받는 인증코드 부분 (난수) (0 ~ 4589361) + 49311;
	        int diceInt = r.nextInt(4589362) + 49311; 
	        
	        // String으로 바꿔준다.
	        String dice = Integer.toString(diceInt);
	        
	        diceObj.setDice(dice);
	        
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
	            System.out.println("랜덤 생성된 인증번호 :" + dice);
	
	            // 사진 파일 전송 
	//            FileSystemResource file = new FileSystemResource(new File("C:\\Users\\drnew\\Pictures\\g.gif"));
	//            messageHelper.addInline("g.gif", file);
	            
	            // MimeMessage 전송
	            mailSender.send(message);
	            
	            return "ok";
	            
	        } catch (Exception e) {
	        	
	            System.out.println(e);
	            return "fail";
	        }
		}
    }

    /**
     * 3─1. EMAIL 인증번호 비교 메소드 
     * @param model
     * @param confirm_number
     * @param dice
     * @return
     * @throws IOException
     */
    @ResponseBody
    @RequestMapping(value = "dice.do", method = RequestMethod.POST)
    public String join_injeung(Model model, String confirm_number) throws IOException {
    											   // @PathVaribale : value의 {dice}를 받아온다.
    	String dice = diceObj.getDice();
        System.out.println("인증번호 : " + dice);
        System.out.println("사용자가 입력한 인증번호 : " + confirm_number);
        
        // 인증번호가 일치할 경우 인증번호가 맞다는 창을 출력하고 회원가입창으로 이동함
        if(dice != null) {
        	
        	// 확인버튼 누를 때
	        if (confirm_number.equals(dice)) {
	        	
	        	// 확인 버튼 눌렀는지 체크용
	        	diceObj.setBtn("ok");
		        return "ok";
	        }
	        
	        // 회원가입 버튼 누를 때 ( 확인 버튼 누른 후에 회원가입 버튼 눌러야 회원가입이 될 수 있도록)
	        else if(!confirm_number.equals(dice)) {
	        	
	        	// 확인 버튼 눌르면 getBtn()이 ok
	        	if(diceObj.getBtn() == "ok") {
	        		return "ok";
	        		
	        	// 확인 버튼 안누르면 getBtn()이 null
	        	}else {
	        		return "fail";
	        	}
	        }
        }
        return "fail";
    }
    
    // 예전 로직
//    @ResponseBody
//    @RequestMapping(value = "{dice}.do", method = RequestMethod.POST)
//    public String join_injeung(Model model, String confirm_number, @PathVariable String dice, Dice diceObj) throws IOException {
//    											   // @PathVaribale : value의 {dice}를 받아온다.
//    	System.out.println(diceObj.getDice());
//        System.out.println("인증번호 : " + dice);
//        System.out.println("사용자가 입력한 인증번호 : " + confirm_number);
//
//        // 인증번호가 일치할 경우 인증번호가 맞다는 창을 출력하고 회원가입창으로 이동함
//        if (confirm_number.equals(dice)) return "ok";
//        
//        return "fail";
//    }
    
	// 암호화 처리
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
    
 	/**
 	 * 4. 회원가입 메소드
 	 * @param u
 	 * @param model
 	 * @return
 	 */
 	@RequestMapping("uinsert.do")
 	public String insertMember(User u, Model model) {

 		System.out.println("암호화 전 : " + u);
 		u.setPwd(bcryptPasswordEncoder.encode(u.getPwd()));
 		System.out.println("암호화 후 " + u);
 		
 		// 이제 서비스로 이동
 		int result = uService.insertMember(u);
 		if(result > 0) {
 			return "redirect:index.do";
 		}else {
 			model.addAttribute("msg","회원가입실패");
 			return "common/errorPage";
 		}
 	}
}
