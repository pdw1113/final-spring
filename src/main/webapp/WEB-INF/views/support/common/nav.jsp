<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>Slide Project</title>
      <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      <!-- css파일 -->
	  <link rel="stylesheet" type="text/css" href="./resources/css/nav_support.css">
   </head>
   <body>
      <nav class="contain_mynav">
         <h1>고객센터</h1>
         <div class="container_mynav">
            <div class="dropdown_mynav">
               <button class="dropbtn_mynav" value="1" onclick="location.href='noticeList.do'">공지사항</button>
            </div>
            <div class="dropdown_mynav">
               <button class="dropbtn_mynav" value="2">뭘하죠?
               </button>
            </div>
            <!--로그인 했을경우 환불신청 -->
            <div class="dropdown_mynav">
               <button class="dropbtn_mynav" value="3">FAQ</button>
            </div>
            <div class="dropdown_mynav">
               <button class="dropbtn_mynav" value="4">관리자 니즈톡</button>
            </div>
         </div>
         <div class="display_customercenter">
         </div>
      </nav>
      <script>
         $(".dropbtn_mynav").click(function(){
           if($(this).attr('value')=="1"){
                 $(".dropbtn_mynav").css("background-color","white");
                 $(this).css("background-color","#fabe00");
         
             }else if($(this).attr('value')=="2"){
                 $(".dropbtn_mynav").css("background-color","white");
                 $(this).css("background-color","#fabe00");
         
             }else if($(this).attr('value')=="3"){
                 $(".dropbtn_mynav").css("background-color","white");
                 $(this).css("background-color","#fabe00");
             
             }else if($(this).attr('value')=="4"){
                 $(".dropbtn_mynav").css("background-color","white");
                 $(this).css("background-color","#fabe00");
             }
         });
      </script>
   </body>
</html>