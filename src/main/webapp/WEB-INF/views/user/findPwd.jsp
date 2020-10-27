<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <title>MY TEST PAGE</title>
      <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
      <style>
         body,html{
         margin:0;
         padding:0;
         width:100%;
         }
         /* 로그인 폼 가장자리 틀  */
         .container_find_pw{
         border: 9px solid #fabe00;
         width: 620px;
         height: 500px;
         border-radius: 70px 70px 70px 70px;
         margin: 0 auto;
         text-align: center;
         }
         /* 니즈 잇 로고 이미지 */
         .logoImg_find_pw{
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
         input.e-mail_find_pw:focus { outline:none; }
         /* ID찾기, PWD찾기, 로그인 버튼 DIV (버튼아님 버튼 프레임임) */
         .button_find_pw{
         padding-top: 5px;
         padding-left:20px;
         height: 50px;
         padding-bottom: 10px;
         }
         /* ID찾기 PWD찾기 로그인 버튼 */
         .emailSend_find_pw{
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
         cursor: pointer;
         }
         .guid_find_pw{
         margin-top : 40px;
         font-family: jua;
         font-size: 23px;
         color: rgb(78, 78, 78);
         }
         /* The Modal (background) */
         .modal_find_pw {
         display: none;
         /* Hidden by default */
         position: fixed;
         /* Stay in place */
         z-index: 1;
         /* Sit on top */
         left: 0;
         top: 0;
         width: 100%;
         /* Full width */
         height: 100%;
         /* Full height */
         overflow: auto;
         /* Enable scroll if needed */
         background-color: rgb(0, 0, 0);
         /* Fallback color */
         background-color: rgba(0, 0, 0, 0.4);
         /* Black w/ opacity */
         }
         .modal_header_find_pw{
         height: 60px;
         }
         /* Modal Content/Box */
         .modal_content_find_pw {
         background-color: #fefefe;
         margin: 15% auto;
         /* 15% from the top and centered */
         padding: 20px;
         border: 1px solid #888;
         width: 25%;
         /* Could be more or less, depending on screen size */
         }
         /* Modal img */
         .img_find_pw {
         width: 45px;
         height: 45px;
         margin-bottom: 20px;
         }
         /* x 버튼 */
         .close_find_pw {
         display: block;
         width: 35px;
         height: 35px;
         outline: none;
         float: right;
         cursor: pointer;
         }
         .x_find_pw{
         font-size: 30px;
         }
      </style>
   </head>
   <body>
      <%@ include file="../common/header.jsp" %>
      <!-- 가장 바깥에 있는 로그인 창 틀 -->
      <div class="container_find_pw">
         <!-- 로그인 이미지 -->
         <img  class="logoImg_find_pw" src="./resources/img/Login_logo.png">
         <br><br><br>
         <div class="guid_find_pw">
            <small>니즈잇 가입 시 등록했던 이메일 입력시, 비밀번호 변경 URL이 전송됩니다.</small>
         </div>
         <br>
         <!-- 아이디 비번 입력폼 -->
         <input class="e-mail_find_pw" type="text" placeholder=" E-MAIL을 입력하세요">
         <!-- Button to Open the Modal -->
         <div class="button_find_pw">
            <div class="emailSend_find_pw" id="emailCheck">
               비밀번호 변경 URL 전송
            </div>
         </div>
         <!-- The Modal DB에 정보가 없을 때 -->
         <div class="modal_find_pw" id="findPwd_x">
            <div class="modal_content_find_pw">
               <div class="modal_header_find_pw">
                  <div class="close_find_pw" onclick="close_pop();">
                     <i class="fas fa-times x_find_pw"></i>
                  </div>
               </div>
               <div class="modal_body_find_pw">
                  <img src="resources/img/findPwd_x.png" class="img_find_pw" />
                  <h2 class="h4_find_pw">E-MAIL ERROR</h2>
                  <p>해당 이메일은 니즈잇에 가입되어 있지 않습니다.</p>
               </div>
            </div>
         </div>
         <!--End Modal-->
         <!-- The Modal DB에 정보가 있을 때 -->
         <div class="modal_find_pw" id="findPwd_o">
            <div class="modal_content_find_pw">
               <div class="modal_header_find_pw">
                  <!-- <div class="close_find_pw" onclick="close_pop();"> -->
                  <div class="close_find_pw" onclick="location.href='changePwd.do';">
                     <i class="fas fa-times x_find_pw"></i>
                  </div>
               </div>
               <div class="modal_body_find_pw">
                  <img src="resources/img/findPwd_o.png" class="img_find_pw" />
                  <h2 class="h4_find_pw">SEND SUCCESS</h2>
                  <p>입력하신 이메일 주소로 <br>비밀번호 변경 URL을 발송하였습니다.</p>
               </div>
            </div>
         </div>
      </div>
      <!-- test용으로 test@naver.com 을 했을뿐 나중엔 DB값으로 비교하여 있으면 전송 성공. -->
      <script>
         $(document).ready(function () {
             $('#findPwd_o').hide();
             $('#findPwd_x').hide();
           });
         
           $('#emailCheck').click(function () {
             var text = $(".e-mail_find_pw").val();
             if (text == "test@naver.com") {
               $('#findPwd_o').show();
             } else {
               $('#findPwd_x').show();
             }
           });
         
           //팝업 Close 기능
           function close_pop(flag) {
             $('.modal_find_pw').hide();
           };
      </script>
      <%@ include file="../common/footer.jsp" %>
   </body>
</html>