<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <title>MY TEST PAGE</title>
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
      <style>
         body,html{
         margin:0;
         padding:0;
         width:100%;
         }
         /* 회원가입 폼 가장자리 틀  */
         .signupbox_signup{
         border: 9px solid #fabe00;
         width: 620px;
         height: 770px;
         border-radius: 70px 70px 70px 70px;
         margin: 0 auto;
         text-align: center;
         }
         /* 니즈 잇 로고 이미지 */
         .signup_img_signup{
         padding-top: 20px;
         width: 260px;
         filter: drop-shadow(-4px 5px 3px #808080);
         padding-bottom: 15px;
         }
         /* 정보 텍스트 입력창 */
         .signup_input_signup{
         border: 3px solid #fabe00;
         border-radius: 7px 7px 7px 7px;
         height: 30px;
         width: 550px;
         font-size: 20px;
         margin-bottom: 15px;
         }
         /* 버튼들 DIV (버튼아님 버튼 프레임임) */
         .buttons_signup{
         padding-top: 5px;
         padding-left:20px;
         height: 50px;
         padding-bottom: 10px;
         }
         /* 버튼 */
         .signup_button_signup{
         float:left;
         width: 560px;
         height: 40px;
         text-align: center;
         line-height: 45px;
         margin-left: 10px;
         border-radius: 15px;
         font-size: 25px;
         border-radius: 7px 7px 7px 7px;
         color: white;
         background-color: #fabe00;
         font-family: jua;
         }
         /* 카카오톡으로 회원가입 */
         .kakao_signup{
         height: 70px;
         width: 520px;
         margin: 0 auto 15px;
         background-color: #fbe300;
         font-family: jua;
         font-size: 25px;
         display: inline-table;
         color:#3b1e1e;
         }
         /* 네이버로 회원가입 */
         .naver_signup{
         background-color: #00c73c;
         font-family: jua;
         height: 70px;
         margin: 0 auto 15px;
         font-size: 25px;
         width: 520px;
         display: inline-table;
         color:white;
         }
         /* 시간제한 */
         .timelimit_signup{
         font-size: 25px;
         font-family: jua;
         color:#fabe00;
         }
         .phone_number_signup{
         border: 3px solid #fabe00;
         border-radius: 7px 7px 7px 7px;
         height: 30px;
         width: 550px;
         font-size: 20px;
         margin-bottom: 15px;
         }
         /*인풋 창 검은줄 없애기*/
         input:focus { outline:none; }
         .overlapping_check_number_signup{
         margin-top: 6px;
         margin-right: 230px;
         font-family: jua;
         font-size: 22px;
         }
      </style>
   </head>
   <body>
   
      <%@ include file="../common/header.jsp" %>
      
      <!-- 가장 바깥에 있는 회원가입 창 틀 -->
      <div class="signupbox_signup">
         <!-- 회원가입 이미지 -->
         <img  class="signup_img_signup" src="./resources/img/Login_logo.png">
         <!-- 정보 입력폼 -->
         <input class="signup_input_signup" type="text" placeholder="이름(실명)을 입력하세요.">
         <input class="signup_input_signup" style="width:240px; float: left; margin-left: 30px;" type="text" placeholder=" -를 포함한 휴대폰 번호">
         <div class="overlapping_check_number_signup" id="overlapping_check_number_signup" value="0">
         </div>
         <input class="signup_input_signup" type="text" placeholder="E-MAIL을 입력하세요.">
         <!-- 인증메일 발송 -->
         <div class="buttons_signup">
            <a href="#">
               <div class="signup_button_signup">인증메일 발송</div>
            </a>
         </div>
         <!-- 인증코드 입력 텍스트폼이랑 제한시간 -->
         <input class="signup_input_signup" style="width:240px; float: left; margin-left: 30px;" type="text" placeholder="인증코드를 입력하세요.">
         <span class="timelimit_signup">제한시간 : </span>
         <!-- 비밀번호 입력창 -->
         <input class="signup_input_signup" type="password" placeholder="비밀번호를 입력하세요.">
         <input class="signup_input_signup" type="password" placeholder="비밀번호를 한번 더 입력하세요.">
         <!-- 회원가입 버튼 -->
         <div class="buttons_signup">
            <a href="#">
               <div class="signup_button_signup" style="color:black">회원가입</div>
            </a>
         </div>
         <!-- 카카오톡 회원가입 -->
         <a href="#">
            <div class="kakao_signup">
               <img src="./resources/img/kakaotalk_login_img.png" style="width: 38px; margin-top: 15px; margin-left: 78px;"/>
               <span style="display: table-cell;
                  padding-left: 10px;
                  text-align: left;
                  vertical-align: middle;">카카오톡으로 회원가입</span>
            </div>
         </a>
         <!-- 네이버 회원가입 -->
         <a href="#">
            <div class="naver_signup">
               <img src="./resources/img/naver_login_img.png" style="width: 38px; margin-top: 15px; margin-left: 65px;"> 
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