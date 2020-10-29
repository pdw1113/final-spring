<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      
      <title>MY TEST PAGE</title>
      
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
      
      <link rel="stylesheet" type="text/css" href="resources/css/signUp.css">
    
   </head>
   <body>
   
      <%@ include file="../common/header.jsp" %>
      
      <!-- 가장 바깥에 있는 회원가입 창 틀 -->
      <div class="signupbox_signup">
         <!-- 회원가입 이미지 -->
         <img  class="signup_img_signup" src="./resources/img/Login_logo.png">
         <!-- 정보 입력폼 -->
         <input class="signup_input_signup" type="text" placeholder="이름(실명)을 입력하세요.">
         <input class="signup_input_signup short_input" type="text" placeholder=" -를 포함한 휴대폰 번호">
         <div class="overlapping_check_number_signup" id="overlapping_check_number_signup" value="1">
         </div>
         <form action="signUp.do" method="post">
         	<input class="signup_input_signup" type="text" placeholder="E-MAIL을 입력하세요." name="email">

	         <!-- 인증메일 발송 -->
	         <div class="buttons_signup">
	            <span>
	               <button class="signup_button_signup">인증메일 발송</button>
	            </span>
	         </div>
         </form>
         <!-- 인증코드 입력 텍스트폼이랑 제한시간 -->
         <input class="signup_input_signup short_input" type="text" placeholder="인증코드를 입력하세요.">
         <span class="timelimit_signup">제한시간 : </span>
         <!-- 비밀번호 입력창 -->
         <input class="signup_input_signup" type="password" placeholder="비밀번호를 입력하세요.">
         <input class="signup_input_signup" type="password" placeholder="비밀번호를 한번 더 입력하세요.">
         <!-- 회원가입 버튼 -->
         <div class="buttons_signup">
            <a href="#">
               <div class="signup_button_signup color_black">회원가입</div>
            </a>
         </div>
         <!-- 카카오톡 회원가입 -->
         <a href="#">
            <div class="kakao_signup">
               <img src="./resources/img/kakaotalk_login_img.png" class="kakao_img">
               <span style="display: table-cell;
                  padding-left: 10px;
                  text-align: left;
                  vertical-align: middle;">카카오톡으로 회원가입</span>
            </div>
         </a>
         <!-- 네이버 회원가입 -->
         <a href="#">
            <div class="naver_signup">
               <img src="./resources/img/naver_login_img.png" class="naver_img"> 
               <span style="display: table-cell;
                  padding-left: 10px;
                  text-align: left;
                  vertical-align: middle;">네이버로 회원가입</span>
            </div>
         </a>
      </div>
      </a>
      <%@ include file="../common/footer.jsp" %>
   </body>
   <script>
      (function() { 
          if($('#overlapping_check_number_signup').attr("value")==1){
              $('#overlapping_check_number_signup').css('color','green');
              $('#overlapping_check_number_signup').text("사용가능");
          }else if($('#overlapping_check_number_signup').attr("value")==2){
              $('#overlapping_check_number_signup').css('color','red');
              $('#overlapping_check_number_signup').text("사용불가");
          }
          }());
      
   </script>
</html>