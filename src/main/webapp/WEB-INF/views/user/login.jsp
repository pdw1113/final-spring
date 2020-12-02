<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      
      <title>MY TEST PAGE</title>
      
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
      
      <link rel="stylesheet" type="text/css" href="resources/css/login.css">

	<!-- JUA 폰트-->
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    
   </head>
   <body>
      <%@ include file="../common/header.jsp" %>
      <form action="login.do" method="post">
      <!-- 가장 바깥에 있는 로그인 창 틀 -->
      <div class="loginbox_login">
         <!-- 로그인 이미지 -->
         <img  class="login_img_login" src="./resources/img/Login_logo.png">
         <!-- 아이디 비번 입력폼 -->
         <input class="login_input_login" type="text" placeholder="E-MAIL을 입력하세요" name="email">
         <input class="login_input_login" type="password" placeholder="비밀번호를 입력하세요" name="pwd">
         <!-- 버튼폼 -->
         <div class="button_login">
            <a href="signUp.do">
               <div class="login_button_login">회원가입</div>
            </a>
            <a href="findPwd.do">
               <div class="login_button_login">PWD 찾기</div>
            </a>
            <span>
               <button class="login_button_form">로그인</button>
            </span>
         </div>
         <!-- 카톡로그인 -->
       	<a id="kakao-login-btn"></a>
	    <script type='text/javascript'>
	        //<![CDATA[
	        // 사용할 앱의 JavaScript 키를 설정해 주세요.
	        // Kakao.init('d9e38ce6222396ec9c46084186906ad7'); 헤더 영역에 넣어줌
	        // 카카오 로그인 버튼을 생성합니다.
	        Kakao.Auth.createLoginButton({
	            container: '#kakao-login-btn',
	            success: function (authObj) {
	                //console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력
					
	                // 사용자정보 요청받는 ajax
	                Kakao.API.request({
						url:"/v2/user/me",
						success : function(res){
							$("#token").val(Kakao.Auth.getAccessToken()); 	// 로그아웃에 활용할 토큰
	                        $("#email").val(res.kakao_account && res.kakao_account.email);
	                        $("#name").val(res.properties.nickname);		// 회원 닉네임(이름)
	                        $("#pwd").val(res.id); 							// (res.id=회원 고유 번호)를 비번으로 지정
	                        $('.login_button_form').trigger("click");
						},
						
						fail: function (err) {
			                alert(JSON.stringify(err));
			            }
					})
					var token = authObj.access_token;
	            },
	            fail: function (err) {
	                alert(JSON.stringify(err));
	            }
	        });
	        
	      //]]>
		</script>
		</form>
      
		<form action="kakaoLogin.do" method="post">
		 	<input style="visibility: hidden;" name="email" id="email" value="">
		 	<input style="visibility: hidden;" name="name" id="name" value="">
		 	<input style="visibility: hidden;" name="pwd" id="pwd" value="">
			<button class="login_button_form" style="visibility: hidden;"></button>
		</form>

      <script>
    	let msg = "${msg}";
      	if(msg!=null){
      		if(msg==1){
      			alert("등록되지 않은 회원입니다.");
      			location.href="loginPage.do";
      		}else if(msg==2){
      			alert("이미 존재하는 이메일 입니다.");
      			location.href="loginPage.do";
      		}
      	}
      </script>
      </div>
      <%@ include file="../common/footer.jsp" %>
   </body>
</html>