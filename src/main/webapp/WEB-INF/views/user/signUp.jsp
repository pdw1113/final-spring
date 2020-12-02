<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <title>MY TEST PAGE</title>
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
      <link rel="stylesheet" type="text/css" href="resources/css/signUp.css">
      <link rel="stylesheet" type="text/css" href="resources/css/loading.css">
   </head>
   <body>
      <%@ include file="../common/header.jsp" %>
      <!-- 가장 바깥에 있는 회원가입 창 틀 -->
      <div class="signupbox_signup">
      
         <!-- 회원가입 이미지 -->
         <img  class="signup_img_signup" src="./resources/img/Login_logo.png">
         
         <!-- 정보 입력폼 -->
         <form action="uinsert.do" method="POST" autocomplete="off">  
         
            <!-- 이름 -->
            <input class="signup_in" type="text" placeholder="이름(실명)을 입력하세요." id="name" name="name">
            
            <!-- 휴대폰 번호 -->
            <input class="signup_in short_input" type="text" placeholder=" -를 포함한 휴대폰 번호" id="phone" name="phone">
            <div class="ph_cover">
               <input type="hidden" name="idDuplicateCheck" id="phDuplCk" value="0">
               <span class="dpck_ph" id="dpck_ph">
               </span>
            </div>
            
            <!-- 이메일  -->
            <input class="signup_in" type="text" placeholder="E-MAIL을 입력하세요."  id="email" name="email">
            
            <!-- 인증메일 발송 -->
            <div class="buttons_signup">
               <span>
               <button class="signup_button_signup sendmail_signup" type="button" onclick="emailNum();">인증번호 발송</button>
               </span>
            </div>
            
            <!-- 인증코드 입력 텍스트폼이랑 제한시간 -->
            <div class="confirmCon">
               <input class="signup_in short_input" type="text" placeholder="인증코드를 입력하세요."  id="ranNum" name="ranNum">
               <button class="cfBtn" type="button" onclick="numCheck();" disabled="disabled">확인</button>
               <span class="timelimit_signup">제한시간 : </span>
            </div>
            
            <!-- 비밀번호 입력창 -->
            <input class="signup_in" type="password" placeholder="비밀번호를 입력하세요." id="pwd" name="pwd">
            <input class="signup_in" type="password" placeholder="비밀번호를 한번 더 입력하세요." id="pwd2" name="pwd2">
            
            <!-- 회원가입 버튼 -->
            <div class="buttons_signup">
               <span>
               <button class="signup_button_signup color_black" onclick='return vali();'>회원가입</button>
               </span>
            </div>
         </form>
      </div>
      <%@ include file="../common/footer.jsp" %>
      
      <script>
	      $(document).ready(function(){
	    	  $(".timelimit_signup").hide();
	      });
      </script>
      
      <!-- AJAX 이메일 인증 -->
      <script>
      	var sw = 0;
         // 이메일 인증번호 전송
         function emailNum(){
        	 // EMAIL
	         let email = $("#email").val();
	         // 로딩 DIV
	         let loadingDiv = "<div class='loading-container'><div class='loading'></div><div id='loading-text'>loading</div></div>";
	         // 로딩 DIV 생성
	         $(".signupbox_signup").prepend(loadingDiv);
	         // 이메일 인증번호 전송 AJAX
	         $.ajax({
		         url:"emailNum.do",
		         data:{email:email},
		         type:"post",
		         success:function(data){
			       	 // 성공했을 때
			         if(data === "ok"){
			         	 $(".loading-container").remove();
			         	 alert("메일이 발송되었습니다. 인증번호를 입력해 주세요.");
						 $("#ranNum").focus();
						 $(".timelimit_signup").show();
						 // 제한시간 함수
						 timelimit();
				     // 이메일 중복 될 때
			         }else if(data === "duplicate"){
			         	 $(".loading-container").remove();
			        	 alert("이미 존재하는 이메일이 있습니다.");
						 $("#ranNum").focus();
					 // 전송실패 시
			         }else{
			         	 alert("메일 발송에 실패하였습니다.");
			         	 $(".loading-container").remove();
			         	 $("#email").focus();
			         }
		         },
		         error:function(jqxhr, textStatus, errorThrown){
			         console.log("ajax 처리 실패");
			         $("#email").focus();
			         }
		         });
         	};
         
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
						$("#email").attr("readonly",true);
						$("#email").css("background-color","rgb(225,225,225)");
						$(".cfBtn").attr('disabled', true);
						$(".cfBtn").css({
							cursor : "default",
							background : "rgb(225,225,225)",
							opacity: "1"
						});
						$(".sendmail_signup").attr('disabled', true);
						$(".sendmail_signup").css({
							cursor: "default",
							background : "rgb(225,225,225)",
							opacity: "1"
						});
						
						sw=1;
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
        
         
         // 회원가입 버튼 종합 검사
         function validate(){

        	 // 확인 버튼 안눌렀을 시
        	 let userNum = "a";
        	 // AJAX Boolean 값
        	 let check = true;
	         // 중복된 휴대폰번호일 때
	         if($("#phDuplCk").val() == 0){
	         	alert("이미 사용중인 휴대폰 번호입니다.");
	         	$("#phone").focus();
	         	return false;
	         //	numCheck()의 활성화 되었을 때
	         }else{
	        	 $.ajax({
			         url: "dice.do",
			         async:false,
			         data:
			         {confirm_number : userNum},
			         type:"post",
			         success:function(data){
				         if(data == "ok"){
				         }else{
				         	alert("이메일 인증을 완료해주세요.");
				         	check = false;
				         }
			         },
			         error:function(jqxhr, textStatus, errorThrown){
				         console.log("ajax 처리 실패");
				         check = false;
			         }
		         });
	        	 return check;
	         }
         }
         
      	 // 휴대폰 번호 중복체크 AJAX
         $(function(){
        	 // 핸드폰번호 입력 시마다 AJAX 통신
	         $("#phone").on("keyup",function(){
	        	// #phone의 값
	         	let phone = $(this).val();
	         	// 12자리보다 작을 때는 AJAX 통신 X
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
	         			// 중복되지 않았을 때
	         			if(data == "ok"){
	                         $('#dpck_ph').css('color','green');
	                         $('#dpck_ph').text("사용가능");
	           			     $(".dpck_ph").show();
	         				 $("#phDuplCk").val(1);
	         			// 중복됐을 때
	         			}else{
	                         $('#dpck_ph').css('color','red');
	                         $('#dpck_ph').text("사용불가");
	           			     $(".dpck_ph").show();
	         				 $("#phDuplCk").val(0);
	         			}
	         		},
	         		error:function(jqxhr, textStatus, errorThrown){
	         			console.log("ajax 처리 실패");
	         		}
	         	});
	         });
         });
      </script>
      
      <!-- 정규표현식 / 유효성검사 -->
      <script>
        // 유효성검사
        function regExp(){
           var vName  = document.getElementById('name');
           var vPhone = document.getElementById('phone');
           var vEmail = document.getElementById('email');

           /* 이름 검사 : 2글자 이상, 한글*/
           if(!chk(/^[가-힣]{2,}$/,vName,"이름은 한글로 2글자 이상을 넣으세요!")){
               return false;
           }
           /* 핸드폰 검사 */
           if(!chk(/^\d{3}-\d{3,4}-\d{4}$/,vPhone,"휴대폰 번호를 확인해주세요.")){
               return false;
           }
           /* 이메일 검사 : 4글자 이상 + @ + 1글자이상 주소.글자1~3 */
           if(!chk(/^[\w]{4,}@[\w]+(\.[\w]+){1,3}$/,vEmail,"이메일형식에 어긋납니다.")){
                return false;
           }
           /* 비밀번호 검사 */
           return chkPW();
        } 
		
        // 유효성 검사 콜백 함수
        function chk(re,ele,msg){
            if(!re.test(ele.value)){
            	// alert 메시지
                alert(msg);   
             	// 드래그
                ele.select(); 
             	// 넘어가지 않게 한다.
                return false; 
            }
            // 위의 값이 아니면 넘긴다.
            return true;
        }
        
        // 비밀번호 검사
        function chkPW(){
			 // 비밀번호
        	 var pw = $("#pwd").val();
			 // 비밀번호 재입력
        	 var pw2 = $("#pwd2").val();
        	 var num = pw.search(/[0-9]/g);
        	 var eng = pw.search(/[a-z]/ig);
        	 var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

        	 if(pw.length < 8 || pw.length > 20){
        	  alert("비밀번호는 8자리 ~ 20자리 이내로 입력해주세요.");
        	  return false;
        	 }else if(pw.search(/\s/) != -1){
        	  alert("비밀번호는 공백 없이 입력해주세요.");
        	  return false;
        	 }else if(num < 0 || eng < 0 || spe < 0 ){
        	  alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
        	  return false;
        	 }else if(pw != pw2){
              alert("비밀번호 확인!");
              return false;
        	 }else {
        	  return true;
        	 }
        }
        
	    // 회원가입 버튼 클릭 시
    	function vali() {
	    	// 정규표현식, 휴대폰 검사, 이메일 검사를 동시에 검사한다.
      		if(regExp() && validate()){
      			return true;
      		}else{
      			return false;
      		}
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
    	      // 초기화
    	  	  clearInterval(timelimit);
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
    	    }else if(sw==1){
    	    	$(".timelimit_signup").empty();
    	    	$(".timelimit_signup").prepend("인증이 완료되었습니다.");
    	    	$(".timelimit_signup").css('color','green');
    	    	clearInterval(timelimit);
    	    	return false;
    	    }
    	    // 1초마다 1초씩 감소
    	    count--; //카운트 감소
    	  }, 1000);
    	}

    </script>
   </body>
</html>