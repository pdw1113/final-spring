<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <!--폰트-->
      <!-- BLACK HAN SANS 폰트 -->
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
      <!-- JUA 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
      <!--제이쿼리CDN-->
      <script src="https://code.jquery.com/jquery-3.5.1.js"
         integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
      <!--부트스트랩CDN-->
      <!-- 합쳐지고 최소화된 최신 CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
      <!-- 부가적인 테마 -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
      <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
      <link rel="stylesheet" type="text/css" href="resources/css/mLeftBar.css">

   </head>
   <body>
      <frame name="content" src="contents_of_frame.html" />
      <ul class="font_jua Admin-leftbar">
         <li class="Admin-leftbar-li">
            <a href="#" class="Admin-fistAtag">통계</a>
            <a href="mStatistics.do" class="Admin-Atag">통계</a>
         </li>
         <li class="Admin-leftbar-li">
            <a href="#" class="Admin-fistAtag">회원 관리</a>
            <a href="mUserList.do"  class="Admin-Atag">회원 리스트</a>
            <a href="mUserLog.do" class="Admin-Atag">개인정보 접속 기록조회</a>
         </li>
         <li class="Admin-leftbar-li">
            <a href="#" class="Admin-fistAtag">결제</a>
            <a href="myBuyList.do"  class="Admin-Atag">구매확정 리스트</a>
            <a href="mPayRefundList.do"  class="Admin-Atag">환불 리스트</a>
            <a href="mPayExchange.do"  class="Admin-Atag">출금내역</a>
         </li>
         <li class="Admin-leftbar-li">
            <a href="#" class="Admin-fistAtag">게시판 관리</a>
            <a href="mBoardForbidden.do"  class="Admin-Atag">금칙어 관리</a>
         </li>
         <li class="Admin-leftbar-li">
            <a href="#" class="Admin-fistAtag">알림,상담</a>
            <a href="mNoticeMail.do" class="Admin-Atag">메일 발송</a>
            <a href="mNoticeTalk.do" class="Admin-Atag">1:1채팅상담</a>
         </li>
      </ul>
      <script>
         var acc = $(".Admin-fistAtag");
         var i;
         
         $(document).ready(function () {
             $(".Admin-Atag").hide(); /* 아코디언 메뉴 숨기기*/
             $(".Admin-fistAtag").eq(0).trigger("click");
         
         
             for (i = 0; i < acc.length; i++) {
         
                 acc.eq(i).click(function () {
         
                     if (!$(this).hasClass("active")) {
                         acc.removeClass("active");
         
                         $(this).nextAll().slideToggle(300);
                         $(".Admin-fistAtag").not(this).nextAll().slideUp(300);
         
                         acc.next().css("display", "none");
         
                         $(this).addClass("active");
         
                         $(this).next().toggle();
         
                     } else {
                         $(this).nextAll().slideUp();
                         $(this).removeClass("active");
                     }
                 });
             }
         });
         
         
         if (acc.eq(i).before() == acc.eq(i).click()) {
             acc.eq(i).toggleClass("active");
         }
         
         
         
      </script>
   </body>
</html>