<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>비밀번호변경</title>
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
	  <link rel="stylesheet" type="text/css" href="resources/css/modifyPwd.css">
   </head>
   <body>
      <!-- header 영역 -->
      <%@ include file="../../common/header.jsp" %>
      <!-- nav 영역 -->
      <%@ include file="../myPage/common/nav.jsp" %>
      <form action="modifyPwd.do" method="post">
         <div class="content_myModifyPwd">
            <div class="dataInform_myModifyPwd">
               <div class="tit2_myModifyPwd">비밀번호 변경</div>
               <div class="inform_myModifyPwd">
                  <ul>
                     <li><input type="password" class="new_pw_myModifyPwd" name="originalPwd" id="user_pw_myModifyPwd" placeholder="기존 비밀번호를 입력해 주십시오."></li>
                     <li><input type="password" class="new_pw_myModifyPwd" name="newPwd" id="pwd1_myModifyPwd" placeholder="변경할 비밀번호를 입력해 주십시오."></li>
                     <!-- 정규표현식을 통해 일치한 해당 <span>태그에 color:#009BFA 으로 변화 -->
                     <p class="guid_my_modifyPwd">※ 비밀번호는 <span>최소 8자리 이상,</span> <span>영문+숫자 조합이며,</span><span>특수기호 1개 이상</span> 입력하셔야 합니다.</p>
                     <!-- 정규표현식에 맞으면 활성화 되는 기능 필요...(정규표현식할 때 구현) -->
                     <li><input type="password" class="new_pw_myModifyPwd" id="pwd2_myModifyPwd" placeholder="변경할 비밀번호를 한번 더 입력해 주십시오."></li>
                     <div class="alert-success_myModifyPwd" id="alert-success_myModifyPwd">※ 비밀번호 확인이 완료되었습니다.</div>
                     <div class="alert-danger_myModifyPwd" id="alert-danger_myModifyPwd">※ 비밀번호가 맞지 않습니다.</div>
                  </ul>
               </div>
               <button class="pdBtn_myModifyPwd" id="submit_myModifyPwd" onclick="return chkPW();">
                  <h2>비밀번호 변경</h2>
               </button>
            </div>
         </div>
      </form>
	  
      <script>
      
      let msg = "${msg}"
      if(msg !== ""){
    	  alert(msg);
      }
      
      // 유효성 검사
      function chkPW(){
	     // 비밀번호
      	 var pw = $("#user_pw_myModifyPwd").val();
		 // 비밀번호 재입력
      	 var pw2 = $("#pwd1_myModifyPwd").val();
      	 var pw3 = $("#pwd2_myModifyPwd").val();
      	 
      	 var num = pw.search(/[0-9]/g);
      	 var eng = pw.search(/[a-z]/ig);
      	 var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
      	 
      	 var num2 = pw2.search(/[0-9]/g);
      	 var eng2 = pw2.search(/[a-z]/ig);
      	 var spe2 = pw2.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

      	 if(pw.length < 8 || pw.length > 20 || pw2.length < 8 || pw2.length > 20){
      	  alert("비밀번호는 8자리 ~ 20자리 이내로 입력해주세요.");
      	  return false;
      	 }else if(pw.search(/\s/) != -1 || pw2.search(/\s/) != -1){
      	  alert("비밀번호는 공백 없이 입력해주세요.");
      	  return false;
      	 }else if(num < 0 || eng < 0 || spe < 0 || num2 < 0 || eng2 < 0 || spe2 < 0){
      	  alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
      	  return false;
      	 }else if(pw2 != pw3){
            alert("비밀번호 확인!");
            return false;
      	 }else {
      	  return true;
      	 }
      }
      </script>
      
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
             $('#alert-success_myModifyPwd').hide();
             $('#alert-danger_myModifyPwd').hide();
         
             // inform_myModifyPwd div에서 del키나 백스페이스를 누르고 떼어냈을 시 체크,
             $('.inform_myModifyPwd').keyup(function (event) {
                 if (event.keyCode === 8 || event.keyCode === 46) {
                     if ($("#pwd1_myModifyPwd").val() != $("#pwd2_myModifyPwd").val()) {
                         notsame();
                     }
                 }
             });
         
             //  keyup() - 키보드에서 손을 떼어냈을때 실행됨
             $(".new_pw_myModifyPwd").keyup(function (event) {
                 
                 // var user_pw == "DB에서 가져온 기존 비밀번호"
                 pwd1 = $("#pwd1_myModifyPwd").val();
                 pwd2 = $("#pwd2_myModifyPwd").val();
         
                 if (pwd1 != '' && pwd2 != '') {
                     if (pwd1 == pwd2) {
                         same();
                     } else if (pwd1 != pwd2) {
                         notsame();
                     }
                 }
             });
         
         
/*              // 기존 비밀번호 일치 여부 && 비밀번호 재확인 일치 여부 success 될 때
             $('#submit_myModifyPwd').click(function () {
                 // user_pw = 기존비밀번호 저장
                 var user_pw = $("#user_pw_myModifyPwd").val();
                 if (user_pw != '') {
                     if (user_pw == "qwer1234!" && checked == 1) {
                         alert("변경되었습니다.");
                     } else if(pwd1 != pwd2){
                         alert("변경할 비밀번호가 맞지않습니다.");
                     } else{
                         alert("기존 비밀번호가 다릅니다.");
                     }
                 } else {
                     alert("기존 비밀번호를 입력해 주십시오.");
                 }
             }); */
         });
         
         /* pwd1 != pwd2 */
         function notsame() {
             $("#alert-success_myModifyPwd").hide();
             $("#alert-danger_myModifyPwd").show();
             $('.pdBtn_myModifyPwd a').css('pointer-events', 'none');
             checked = 0;
         }
         
         /* pwd1 == pwd2 */
         function same(){
             $("#alert-success_myModifyPwd").show();
             $("#alert-danger_myModifyPwd").hide();
              // 일치하면 a 태그 활성화 (css에서 비활성화함)
              $('.pdBtn_myModifyPwd a').css('pointer-events', 'auto');
              checked = 1;
         }
      </script>
      
      <!-- footer 영역 -->
      <%@ include file="../../common/footer.jsp" %>
   </body>
</html>