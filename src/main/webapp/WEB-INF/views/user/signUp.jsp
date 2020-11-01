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
               <button class="signup_button_signup" type="button" onclick="emailNum();">인증번호 발송</button>
               </span>
            </div>
            
            <!-- 인증코드 입력 텍스트폼이랑 제한시간 -->
            <div class="confirmCon">
               <input class="signup_in short_input" type="text" placeholder="인증코드를 입력하세요."  id="ranNum" name="ranNum">
               <button class="cfBtn" type="button" onclick="numCheck();">확인</button>
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
      
      <!-- AJAX 이메일 인증 -->
      <script>
         // 이메일 인증번호 전송
         function emailNum(){
	         let email = $("#email").val();
	          	$(".signupbox_signup").prepend(
   						"<div class='loading-container'><div class='loading'></div><div id='loading-text'>loading</div></div>"
   				);
	         $.ajax({
		         url:"emailNum.do",
		         data:{email:email},
		         type:"post",
		         success:function(data){
		         if(data !== "fail"){
		         	 $(".loading-container").remove();
		         	 alert("메일이 발송되었습니다. 인증번호를 입력해 주세요.");
					 $("#email").attr("readonly",true);
					 $("#email").css("background-color","rgb(225,225,225)");
					 $("#ranNum").focus();
		         }else{
		         	alert("메일 발송에 실패하였습니다.");
		         	$(".loading-container").remove();
		         	 $("#email").focus();
		         }
	         },
	         error:function(jqxhr, textStatus, errorThrown){
		         console.log("ajax 처리 실패");
		         
		         // 에러 로그
		         console.log(jqxhr);
		         console.log(textStatus);
		         console.log(errorThrown);
		         $("#email").focus();
		         }
	         });

         };
         
         // 이메일 인증번호 체크
         function numCheck(){
	         
	         let userNum = $("#ranNum").val();
	         
	         $.ajax({
		         url: "dice.do",
		         data:
		         {confirm_number : userNum},
		         type:"post",
		         success:function(data){
		         console.log(data);
		         if(data !== "fail"){
		         	alert("번호가 인증되었습니다.");
		       	 	$("#ranNum").attr("readonly",true);
					$("#ranNum").css("background-color","rgb(225,225,225)");
		         }else{
		         	alert("이메일 인증에 실패하였습니다.");
		         	$("#ranNum").focus();
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
         }
         
         // 회원가입 버튼 눌렀을 때
         function validate(){
        	 
        	 let check = true;
        	 let userNum = "a";
        	 
	         // 12자리보다 작을 때
	         if($("#phone").val().length < 12){
	         	alert("휴대폰번호를 입력해주세요.")
	         	$("#phone").focus();
	         	return false;
	         	
	         // 중복된 휴대폰번호일 때
	         }else if($("#phDuplCk").val() == 0){
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
			         console.log(data);
			         if(data == "ok"){
			         }else{
			         	alert("이메일 인증을 완료해주세요.");
			         	check = false;
			         }
			         },
			         error:function(jqxhr, textStatus, errorThrown){
				         console.log("ajax 처리 실패");
				         
				         // 에러 로그
				         console.log(jqxhr);
				         console.log(textStatus);
				         console.log(errorThrown);
				         check = false;
			         }
		         });
	        	 console.log(check);
	        	 return check;
	         }
         }
         
      	 // 휴대폰 번호 중복체크 AJAX
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
      
      <!-- 정규표현식 / 유효성검사 -->
      <script>
      
        function regExp(){
           var vName    = document.getElementById('name');
           var vPhone   = document.getElementById('phone');
           var vEmail   = document.getElementById('email');

           /* 이름 검사*/
           // 2글자이상, 한글만
           if(!chk(/^[가-힣]{2,}$/,vName,"이름은 한글로 2글자 이상을 넣으세요!")){
               return false;
           }

           /* 전화번호 검사*/
           // 전화번호 앞자리는 2 ~ 3자리 숫자
           // 두번째 자리는 3 ~ 3자리 숫자
           // 세번째 자리는 4자리 숫자
           if(!chk(/^\d{3}-\d{3,4}-\d{4}$/,vPhone,"휴대폰 번호를 확인해주세요.")){
               return false;
           }

           /* 이메일 검사 */
           // 4글자 이상 + @ + 1글자이상 주소.글자1~3
           if(!chk(/^[\w]{4,}@[\w]+(\.[\w]+){1,3}$/,vEmail,"이메일형식에 어긋납니다.")){
                return false;
           }
           
           chkPW();
        } 

        function chk(re,ele,msg){
            if(!re.test(ele.value)){
                alert(msg);   // ex) 이름은 한글이여야 합니다.
                ele.select(); // 드래그
                return false; // 넘어가지 않게 한다.
            }
            return true;      // 위의 값이 아니면 넘긴다.
        }
        
        function chkPW(){

        	 var pw = $("#pwd").val();
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
        	  console.log("통과"); 
        	  return true;
        	 }
        }
        

    	function vali() {
      		if(validate() && regExp()){
      			return true;
      		}else{
      			return false;
      		}
    	}
    </script>
   </body>
</html>