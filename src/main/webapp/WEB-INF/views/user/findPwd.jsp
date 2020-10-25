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
         .e-mail_find_pw{
         border: 3px solid #fabe00;
         border-radius: 7px 7px 7px 7px;
         height: 30px;
         width: 550px;
         font-size: 20px;
         margin-bottom: 15px;
         }
         input:focus { outline:none; }
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
         .guid_find_pw{
         margin-top : 40px;
         font-family: jua;
         font-size: 23px;
         color: rgb(78, 78, 78);
         }
         h4{
         font-family: 'Black Han Sans';
         }
      </style>
   </head>
   <body>
   
      <%@ include file="../common/header.jsp" %>
      
      <!-- 가장 바깥에 있는 로그인 창 틀 -->
      <div class="loginbox_login">
         <!-- 로그인 이미지 -->
         <img  class="login_img_login" src="./resources/img/Login_logo.png">
         <br><br><br>
         <div class="guid_find_pw">
            <small>니즈잇 가입 시 등록했던 이메일 입력시, 비밀번호 변경 URL이 전송됩니다.</small>
         </div>
         <br>
         <!-- 아이디 비번 입력폼 -->
         <input class="e-mail_find_pw" type="text" placeholder=" E-MAIL을 입력하세요">
         <!-- Button to Open the Modal -->
         <div class="button_login">
            <div type="button" class="login_button_login" data-toggle="modal" onclick="window.location.href='changePwd.do'">
               비밀번호 변경 URL 전송
            </div>
         </div>
         <!-- The Modal -->
         <div class="modal fade" id="findPwd_x">
            <div class="modal-dialog">
               <div class="modal-content">
                  <!-- Modal Header -->
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                  </div>
                  <!-- Modal body -->
                  <div class="modal-body" >
                     <img src="resources/img/findPwd_x.png" width="45px" height="45px" style="margin-bottom: 20px;"/>
                     <h4>E-MAIL ERROR</h4>
                     <p>해당 이메일은 니즈잇에 가입되어 있지 않습니다.</p>
                  </div>
                  <!-- Modal footer -->
                  <div class="modal-footer">
                     <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="modal fade" id="findPwd_o">
            <div class="modal-dialog">
               <div class="modal-content">
                  <!-- Modal Header -->
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                  </div>
                  <!-- Modal body -->
                  <div class="modal-body">
                     <img src="resources/img/findPwd_o.png" width="45px" height="45px" style="margin-bottom: 20px;"/>
                     <h4>SEND SUCCESS</h4>
                     <p>입력하신 이메일 주소로 비밀번호 변경 URL을 발송하였습니다.</p>
                  </div>
                  <!-- Modal footer -->
                  <div class="modal-footer">
                     <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <br><br><br>
      <!-- test용으로 test@naver.com 을 했을뿐 나중엔 DB값으로 비교하여 있으면 전송 성공. -->
      <script>
         function emailCheck(){
              var text = $(".e-mail_find_pw").val();
         
              if(text=="test@naver.com"){
                 $('#findPwd_o').modal().show();
              }else{
                 $('#findPwd_x').modal().show();
              }
         }
      </script>
      <%@ include file="../common/footer.jsp" %>
   </body>
</html>