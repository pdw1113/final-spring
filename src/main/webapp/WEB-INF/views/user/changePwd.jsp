<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <title>MY TEST PAGE</title>
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
	  <link rel="stylesheet" type="text/css" href="resources/css/changePwd.css">
   </head>
   <body>
      <%@ include file="../common/header.jsp" %>
      <!-- 가장 바깥에 있는 로그인 창 틀 -->
      <div class="form_changePwd">
         <!-- 로그인 이미지 -->
         <img  class="logo_changePwd" src="./resources/img/Login_logo.png">
         <br><br><br>
         <h2>비밀번호 변경</h2>
         <br><br>
         <!-- 새로운 비번 입력폼 -->
         <input class="input_changePwd" id="pwd1_changePwd" type="password" placeholder=" 새 비밀번호">
         <input class="input_changePwd" id="pwd2_changePwd" type="password" placeholder=" 비밀번호 확인">
         <div class="alert-success_changePwd" id="alert-success_changePwd">※ 비밀번호 확인이 완료되었습니다.</div>
         <div class="alert-danger_changePwd" id="alert-danger_changePwd">※ 비밀번호가 맞지 않습니다.</div>
         <!-- Button to Open the Modal -->
         <div class="button_changePwd">
            <div class="login_button_changePwd" onclick="emailCheck()">
               비밀번호 변경
            </div>
         </div>
      </div>
      <br><br><br>
      <script>
	      // var pwd1 = 변경할 비밀번호
	      // var pwd2 = 변경할 비밀번호 재확인
	      /*
	         var checked = pwd1,pwd2 일치 여부
	         1) checked = 0 이면 불일치
	         2) checked = 1 이면 일치
	      */ 
	      var pwd1;
	      var pwd2;
	      var checked = 0;
	      
	      // 비밀번호 재확인 일치 여부
	      $(document).ready(function () {
	          $('#alert-success_changePwd').hide();
	          $('#alert-danger_changePwd').hide();
	      
	          // inform_myModifyPwd div에서 del키나 백스페이스를 누르고 떼어냈을 시 체크,
	          $('.form_changePwd').keyup(function (event) {
	              if (event.keyCode === 8 || event.keyCode === 46) {
	                  if ($("#pwd1_changePwd").val() != $("#pwd2_changePwd").val()) {
	                      notsame();
	                  }
	              }
	          });
	      
	          //  keyup() - 키보드에서 손을 떼어냈을때 실행됨
	          $(".input_changePwd").keyup(function (event) {
	              
	              // var user_pw == "DB에서 가져온 기존 비밀번호"
	              pwd1 = $("#pwd1_changePwd").val();
	              pwd2 = $("#pwd2_changePwd").val();
	      
	              if (pwd1 != '' && pwd2 != '') {
	                  if (pwd1 == pwd2) {
	                      same();
	                  } else if (pwd1 != pwd2) {
	                      notsame();
	                  }
	              }
	          });
	      });
         /* pwd1 != pwd2 */
         function notsame() {
             $("#alert-success_changePwd").hide();
             $("#alert-danger_changePwd").show();
             checked = 0;
         }
         /* pwd1 == pwd2 */
         function same(){
             $("#alert-success_changePwd").show();
             $("#alert-danger_changePwd").hide();
              checked = 1;
         }
      </script>
      <%@ include file="../common/footer.jsp" %>
   </body>
</html>