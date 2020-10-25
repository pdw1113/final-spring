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
         /* 로그인 폼 가장자리 틀 a*/
         .loginbox_login{
         border: 9px solid #fabe00;
         width: 620px;
         height: 500px;
         border-radius: 70px 70px 70px 70px;
         margin: 0 auto;
         text-align: center;
         }
         /* 니즈 잇 로고 이미지 */
         .login_img_login{
         padding-top: 20px;
         width: 260px;
         filter: drop-shadow(-4px 5px 3px #808080);
         padding-bottom: 15px;
         }
         /* 로그인, 비밀번호 입력창 */
         .login_input_login{
         border: 3px solid #fabe00;
         border-radius: 7px 7px 7px 7px;
         height: 30px;
         width: 550px;
         font-size: 20px;
         margin-bottom: 15px;
         }
         /* ID찾기, PWD찾기, 로그인 버튼 DIV (버튼아님 버튼 프레임임) */
         .button_login{
         padding-top: 5px;
         padding-left:20px;
         height: 50px;
         padding-bottom: 10px;
         }
         /* ID찾기 PWD찾기 로그인 버튼 */
         .login_button_login{
         float:left;
         width: 105px;
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
         /* 카카오톡으로 로그인 */
         .kakao_login{
         height: 70px;
         width: 520px;
         margin: 0 auto 15px;
         background-color: #fbe300;
         font-family: jua;
         font-size: 25px;
         display: inline-table;
         color:#3b1e1e;
         }
         /* 네이버로 로그인 */
         .naver_login{
         background-color: #00c73c;
         font-family: jua;
         height: 70px;
         margin: 0 auto 15px;
         font-size: 25px;
         width: 520px;
         display: inline-table;
         color:white;
         }
         /*인풋 창 검은줄 없애기*/
         input:focus { outline:none; }
      </style>
   </head>
   <body>
      <%@ include file="../common/header.jsp" %>
      <!-- 가장 바깥에 있는 로그인 창 틀 -->
      <div class="loginbox_login">
         <!-- 로그인 이미지 -->
         <img  class="login_img_login" src="./resources/img/Login_logo.png">
         <!-- 아이디 비번 입력폼 -->
         <input class="login_input_login" type="text" placeholder="E-MAIL을 입력하세요">
         <input class="login_input_login" type="password" placeholder="비밀번호를 입력하세요">
         <!-- 버튼폼 -->
         <div class="button_login">
            <a href="#">
               <div class="login_button_login" style="width: 130px;">PWD 찾기</div>
            </a>
            <a href="#">
               <div class="login_button_login" style="float: right; margin-right: 30px;">로그인</div>
            </a>
         </div>
         <!-- 카톡로그인 -->
         <a href="#">
            <div class="kakao_login">
               <img src="./resources/img/kakaotalk_login_img.png" style="width: 38px; margin-top: 15px; margin-left: 78px;"/>
               <span style="display: table-cell;
                  padding-left: 10px;
                  text-align: left;
                  vertical-align: middle;">카카오톡으로 로그인</span>
            </div>
         </a>
         <!-- 네이버 로그인 -->
         <a href="#">
            <div class="naver_login">
               <img src="./resources/img/naver_login_img.png" style="width: 38px; margin-top: 15px; margin-left: 65px;"> 
               <span style="display: table-cell;
                  padding-left: 10px;
                  text-align: left;
                  vertical-align: middle;">네이버로 로그인</span>
            </div>
      </div>
      </a>
      <%@ include file="../common/footer.jsp" %>
   </body>
</html>