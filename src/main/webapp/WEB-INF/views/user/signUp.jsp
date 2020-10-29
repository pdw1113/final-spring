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
         <form action="signUp.do" method="POST">
         
         	 <!-- 이름 -->
	         <input class="signup_in" type="text" placeholder="이름(실명)을 입력하세요." name="name">
	         
         	 <!-- 휴대폰 번호 -->
            <input class="signup_in short_input" type="text" placeholder=" -를 포함한 휴대폰 번호" name="phone" id="phone">
            <div class="ph_cover">
               <input type="hidden" name="idDuplicateCheck" id="phDuplCk" value="0">
               <span class="dpck_ph" id="dpck_ph">
               </span>
            </div>
	                  
         	 <!-- 이메일  -->
         	 <input class="signup_in" type="text" placeholder="E-MAIL을 입력하세요." name="email">

	         <!-- 인증메일 발송 -->
	         <div class="buttons_signup">
	            <span>
	               <button class="signup_button_signup">인증번호 발송</button>
	            </span>
	         </div>
	         
	         <!-- 인증코드 입력 텍스트폼이랑 제한시간 -->
	         <input class="signup_in short_input" type="text" placeholder="인증코드를 입력하세요.">
	         <span class="timelimit_signup">제한시간 : </span>
	         
	         <!-- 비밀번호 입력창 -->
	         <input class="signup_in" type="password" placeholder="비밀번호를 입력하세요." name="pwd">
	         <input class="signup_in" type="password" placeholder="비밀번호를 한번 더 입력하세요." name="pwd2">
	         
	         <!-- 회원가입 버튼 -->
	         <div class="buttons_signup">
	            <span>
	               <button class="signup_button_signup color_black" onclick='return validate();'>회원가입</button>
	            </span>
	         </div>
	         
	     </form>
	     
         <!-- 카카오톡 회원가입 -->
         <a href="#">
            <div class="kakao_signup">
               <img src="./resources/img/kakaotalk_login_img.png" class="kakao_img">
               <span class="sns_signUp">카카오톡으로 회원가입</span>
            </div>
         </a>
         <!-- 네이버 회원가입 -->
         <a href="#">
            <div class="naver_signup">
               <img src="./resources/img/naver_login_img.png" class="naver_img"> 
               <span class="sns_signUp">네이버로 회원가입</span>
            </div>
         </a>
      </div>
      </a>
      <%@ include file="../common/footer.jsp" %>
      
   
   <!-- AJAX 핸드폰번호 중복확인 -->
   <script>
   		function validate(){
   			// 12자리보다 작을 때
   			if($("#phone").val().length < 12){
   				alert("휴대폰번호를 입력해주세요.")
				$("#phone").focus();
   				return false;
   				
   			// 중복된 휴대폰번호 일 때
   			}else if($("#phDuplCk").val() == 0){
				alert("이미 사용중인 휴대폰 번호입니다.");
				$("#phone").focus();
				return false;
   			}else{
   				return true;
   			}
   		}
   		
   		$(function(){
   			$("#phone").on("keyup",function(){
   				let phone = $(this).val();
   				
   				if(phone.length < 12){
   					$(".dpck_ph").hide();
   					$("#phDupCk").val(0);
   					return; // 함수 실행 중지.
   				}
   				
   				$.ajax({
   					url:"phoneCheck.do",
   					data:{phone:phone},
   					type:"post",
   					success:function(data){
   						console.log(data);
   						if(data == "ok"){
   			                $('#dpck_ph').css('color','green');
   			                $('#dpck_ph').text("사용가능");
   		   					$(".dpck_ph").show();
   							$("#phDuplCk").val(1);
   						}else{
   			                $('#dpck_ph').css('color','red');
   			                $('#dpck_ph').text("사용불가");
   		   					$(".dpck_ph").show();
   							$("#phDuplCk").val(0);
   						}
   					},
   					error:function(jqxhr, textStatus, errorThrown){
   						console.log("ajax 처리 실패");
   						
   						// 에러 로그
   						console.log(jqxhr);
   						console.log(textStatus);
   						console.log(errorThrown);
   					}
   				});
   			});
   		});
   </script>
   
   </body>
</html>