<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <title>MY TEST PAGE</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      <style>
         body,html{
         margin:0;
         padding:0;
         width:100%;
         }
         /* 로그인 폼 가장자리 틀  */
         .form_newPwd{
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
         .input_newPwd{
         border: 3px solid #fabe00;
         border-radius: 7px 7px 7px 7px;
         height: 30px;
         width: 550px;
         font-size: 20px;
         margin-bottom: 15px;
         }
         input:focus { outline:none; }
         /* ID찾기, PWD찾기, 로그인 버튼 DIV (버튼아님 버튼 프레임임) */
         .button_newPwd{
         padding-top: 5px;
         padding-left:20px;
         height: 50px;
         padding-bottom: 10px;
         }
         /* ID찾기 PWD찾기 로그인 버튼 */
         .login_button_newPwd{
         float:left;
         width: 550px;
         height: 40px;
         text-align: center;
         line-height: 45px;
         margin-left: 5px;
         font-size: 25px;
         border-radius: 7px 7px 7px 7px;
         color: white;
         background-color: #fabe00;
         font-family: jua;
         outline: none;
         }
         h4,h2{
         font-family: 'Black Han Sans';
         }
      </style>
   </head>
   <body>
      <!-- 임시로 넣어놓은 헤더 아이프레임 -->
      <iframe src="Mainhead.html" width="100%" frameborder="0" scrolling="no" ></iframe>
      <!-- 가장 바깥에 있는 로그인 창 틀 -->
      <div class="form_newPwd">
         <!-- 로그인 이미지 -->
         <img  class="login_img_login" src="./resources/img/Login_logo.png">
         <br><br><br>
         <h2>비밀번호 변경</h2>
         <br><br>
         <!-- 새로운 비번 입력폼 -->
         <input class="input_newPwd" type="password" placeholder=" 새 비밀번호">
         <input class="input_newPwd" type="password" placeholder=" 비밀번호 확인">
         <!-- Button to Open the Modal -->
         <div class="button_newPwd">
            <div type="button" class="login_button_newPwd" data-toggle="modal" onclick="emailCheck()">
               비밀번호 변경
            </div>
         </div>
      </div>
      <br><br><br>
      <!-- 임시로 넣어놓은 footer 아이프레임 -->
      <iframe src="footer.html" frameborder="0" style="width: 100%; height: 290px;" scrolling="no"></iframe>
   </body>
</html>