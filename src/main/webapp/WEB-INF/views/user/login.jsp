<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      
      <title>MY TEST PAGE</title>
      
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
      
      <link rel="stylesheet" type="text/css" href="resources/css/login.css">

   </head>
   <body>
      <%@ include file="../common/header.jsp" %>
      <form action="login.do" method="post">
      <!-- 가장 바깥에 있는 로그인 창 틀 -->
      <div class="loginbox_login">
         <!-- 로그인 이미지 -->
         <img  class="login_img_login" src="./resources/img/Login_logo.png">
         <!-- 아이디 비번 입력폼 -->
         <input class="login_input_login" type="text" placeholder="E-MAIL을 입력하세요" name="email">
         <input class="login_input_login" type="password" placeholder="비밀번호를 입력하세요" name="pwd">
         <!-- 버튼폼 -->
         <div class="button_login">
            <a href="findPwd.do">
               <div class="login_button_login">PWD 찾기</div>
            </a>
            <span>
               <button class="login_button_form">로그인</button>
            <span>
         </div>
         <!-- 카톡로그인 -->
         <a href="#">
            <div class="kakao_login">
               <img src="./resources/img/kakaotalk_login_img.png" class="img_css_1">
               <span class="span_kakao">카카오톡으로 로그인</span>
            </div>
         </a>
         <!-- 네이버 로그인 -->
         <a href="#">
            <div class="naver_login">
               <img src="./resources/img/naver_login_img.png" class="img_css_2"> 
               <span class="span_naver">네이버로 로그인</span>
            </div>
	      </div>
	      </a>
      </form>
      
      <script>
    	let msg = "${msg}";
      	if(msg!=null){
      		if(msg==1){
      			alert("등록되지 않은 회원입니다.");
      			location.href="loginPage.do";
      		}
      	}
      </script>
      <%@ include file="../common/footer.jsp" %>
   </body>
</html>