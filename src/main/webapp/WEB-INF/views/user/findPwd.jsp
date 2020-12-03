<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <title>NeeziT</title>
      <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
      
      <link rel="stylesheet" type="text/css" href="resources/css/findPwd.css">
	  <link rel="stylesheet" type="text/css" href="resources/css/loading.css">
   </head>
   <body>
      <%@ include file="../common/header.jsp" %>
      <div class="findPwdbox">
      </div>
      <!-- 가장 바깥에 있는 로그인 창 틀 -->
      <form autocomplete="off">
      <div class="container_find_pw">
         <!-- 로그인 이미지 -->
         <img  class="logoImg_find_pw" src="./resources/img/Login_logo.png">
         <br><br><br>
         <div class="guid_find_pw">
            <small>니즈잇 가입 시 등록했던 이메일 입력시, 비밀번호 변경 URL이 전송됩니다.</small>
         </div>
         <br>
         <!-- 이메일 입력폼 -->
         <input class="e-mail_find_pw" type="text" placeholder=" E-MAIL을 입력하세요" id="email" name="email">
         
         <!-- Button to Open the Modal, 인증메일 발송 -->
         <div class="button_find_pw">
            <button class="emailSend_find_pw" id="emailCheck" type="button" onclick="emailNum();">
               인증번호 발송
            </button>
         </div>
         <!-- 인증코드 입력 텍스트폼이랑 제한시간 -->
         <div class="confirmCon">
            <input class="signup_in short_input" type="text" placeholder="인증코드를 입력하세요."  id="ranNum" name="ranNum">
            <button class="cfBtn" type="button" onclick="numCheck();" disabled="disabled">확인</button>
            <span class="timelimit_signup">제한시간 : </span>
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
                  <div class="close_find_pw" onclick="close_pop();">
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
      </form>
      <!-- test용으로 test@naver.com 을 했을뿐 나중엔 DB값으로 비교하여 있으면 전송 성공. -->
      <script>
         $(document).ready(function () {
             $('#findPwd_o').hide();
             $('#findPwd_x').hide();
           });
         
           $('#emailCheck').click(function () {
	       	  // 이메일 검증 스크립트 작성
	       	  var email = $("#email").val();
	       	  
	       	  // 검증에 사용할 정규식 변수 regExp에 저장
	       	  var regExp = /^[\w]{4,}@[\w]+(\.[\w]+){1,3}$/;
	       	  
	         // 로딩 DIV
	         let loadingDiv = "<div class='loading-container'><div class='loading'></div><div id='loading-text'>loading</div></div>";
	         // 로딩 DIV 생성
	         $(".findPwdbox").prepend(loadingDiv);
	       	 
	         if (email.match(regExp) != null) {
	       		$.ajax({
	            	 url: "emailCheck.do",
	            	 data: {email : email},
	            	 type: "post",
	            	 success:function(data){
	            		 if(data=="ok"){
	            			 $(".loading-container").remove();
	            			 $('#findPwd_o').show();
							 $("#email").attr("readonly",true);
							 $("#email").css("background-color","rgb(225,225,225)");
							 $("#emailCheck").attr("disabled","disabled");
							 $("#ranNum").focus();
							 // 제한시간 함수
							 timelimit();
	            		 }else{
	            			 $(".loading-container").remove();
	            			 $('#findPwd_x').show();
	            			 $("#email").focus();
	            		 }
	            	 },
	            	 error:function(jqxhr, textStatus, errorThrown){
		         			console.log("ajax 처리 실패");
	            	 }
	             });
	       	  }
	       	  else {
	       		$(".loading-container").remove();
	       	    alert('Error');
	       	    return false;
	       	  }
           });
         
           // 모달 팝업 Close 기능
           function close_pop(flag) {
             $('.modal_find_pw').hide();
           };
      </script>
      <script>
         // 이메일 인증번호 체크
          function numCheck(){
        	 // 입력한 인증번호
	         let userNum = $("#ranNum").val();
	         // 인증번호 비교 AJAX
	         $.ajax({
		         url: "dice.do",
		         data:
		         {confirm_number : userNum},
		         type:"post",
		         success:function(data){
			         // 번호 비교 성공 시
			         if(data === "ok"){
			         	alert("번호가 인증되었습니다.");
			       	 	$("#ranNum").attr("readonly",true);
						$("#ranNum").css("background-color","rgb(225,225,225)");
						location.href="changePwd.do?email="+$("#email").val(); 
					// 번호 비교 실패 시
			         }else{
			         	alert("이메일 인증에 실패하였습니다.");
			         	$("#ranNum").focus();
			         }
		         },
		         error:function(jqxhr, textStatus, errorThrown){
			         console.log("ajax 처리 실패");
			         $("#ranNum").focus();
		         }
	         });
         }

         
      // 인증번호 시간초
     	function timelimit() {
     	  // 5분 300초
     	  count = 300;
     	  // 버튼 디자인 변경
     	  $(".cfBtn").attr("disabled", false);
     	  $(".cfBtn").css("background-color", "#fabe00");
     	  $(".cfBtn").css("pointer-events", "auto");
     	  // 1초마다 실행
     	  var countdown = setInterval(function () {
     		// 제한시간 비우기
     	    $(".timelimit_signup").empty();
     		// 분
     	    var min = parseInt((count % 3600) / 60);
     		// 초
     	    var sec = count % 60;
     	    // 10초 이하일 때 09, 08, 07 식으로 표기.
     	    if (sec < 10) {
     	      sec = "0" + sec;
     	    }
     	    // 제한시간에다가 시간 텍스트
     	    $(".timelimit_signup").prepend("제한시간 : " + min + ":" + sec);
     	    // 0초면 초기화 후 작동되는 조건문
     	    if (count == 0) {
     	      // 카운트 끝
     	      clearInterval(countdown);
     	      // 버튼 디자인 변경
     	      $(".timelimit_signup").empty();
     	      $(".timelimit_signup").prepend("제한시간 만료");
     	      $(".cfBtn").attr("disabled", true);
     	      $(".cfBtn").css("background-color", "#e2e2e2");
     	      $(".cfBtn").css("pointer-events", "none");
     	      
 	         	$.ajax({
 	         		url:"diceReset.do",
 	         		type:"post",
 	         		success:function(data){
 	         			alert("인증번호가 만료되었습니다. 새로고침 후 다시 시도해주세요.");
 	         		}
 	         	});
     	    }
     	    // 1초마다 1초씩 감소
     	    count--; //카운트 감소
     	  }, 1000);
     	}
      </script>
      <%@ include file="../common/footer.jsp" %>
   </body>
</html>