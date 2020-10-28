<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>공지사항</title>
      <!-- Noto-Sans 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
      <!-- JUA 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
      <!-- JQUERY-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	  <!-- css파일 -->
      <link rel="stylesheet" type="text/css" href="./resources/css/noticeDetail.css">
   </head>
   <body>
   	<%@ include file="../common/header.jsp" %>
	<%@ include file="common/nav.jsp" %>
      <div class="notice_container">
         <div class="title_area">
            <h4 class="title_text">
               개인정보 처리방침 개정안내
            </h4>
            <span class="title_date">
            2020-10-25
            </span>
         </div>
         <div class="content_area">
            <div class="content_view">
               안녕하세요. <br>
               취업팀 업무일정 등의 내부 사정으로 취업담임이 변경되어 공지합니다.<br>
               <br>
               과정명 : 스마트 콘텐츠 융합 응용SW 엔지니어 양성과정(4)_1회차<br>
               변경된 취업담임 : 허은정<br>
               이메일: khjob03@iei.or.kr<br>
               연락처: 070-4827-1613<br>
               <br>
               그럼 10/30(금) 10시 취업특강 때 뵙겠습니다.<br>
               <br>
               취업준비를 위한 중요한 특강이니,<br>
               한 분도 빠짐없이 참석하시기 바랍니다. ^^<br>
            </div>
            <div class="content_btn">
               <a href="" class="btn_design btn_move">이전</a>
               <a href="" class="btn_design btn_move">다음</a>
               <a href="noticeList.do" class="btn_design btn_list">목록</a>
            </div>
         </div>
      </div>
      <div>
      	<%@ include file="../common/footer.jsp" %>
      </div>
   </body>
</html>