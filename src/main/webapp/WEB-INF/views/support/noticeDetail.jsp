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
      <style type="text/css">
         /* jua 폰트 */
         .font_jua {  
         font-family: 'Jua', sans-serif;
         color: black;
         }
         /* hanSans 폰트 */
         .font_hanSans {
         font-family: 'Black Han Sans', sans-serif;
         }
         /* noto 폰트 */
         .font_noto {
         font-family: 'Noto Sans KR', sans-serif;
         }
         body {
         margin: 0;
         padding: 0;
         width: 100%;
         height: 100%;
         }
         a {
         text-decoration: none;
         }
         ul,
         li {
         list-style: none;
         text-align: center;
         padding: 0;
         margin: 0;
         }
         /* 최고 부모 div */
         .notice_container {
         overflow: visible;
         position: relative;
         width: 1160px;
         margin: 0.1rem auto;
         clear: both;
         }
         /* 제목 부모 div */
         .title_area {
         float: left;
         width: 300px;
         }
         /* 내용 부모 div */
         .content_area {
         float: right;
         width: 860px;
         }
         .content_area:before{
         content: ' ';
         position: absolute;
         top: 40px;
         left: 250px;
         background-color: rgb(250,190,0);
         width: 3px;
         height: 60px;
         }
         /* h4 타이틀 div */
         .title_text {
         padding: 40px 40px 0 0;
         font-size: 18px;
         line-height: 30px;
         color: #1e1e1e;
         margin: 0;
         vertical-align: top;
         }
         /* 내용 들어갈 div */
         .content_view {
         overflow: hidden;
         padding: 40px 0 60px;
         border-bottom: 3px solid rgb(250,190,0);
         line-height: 26px;
         }
         /* 내용 바로 옆 버튼 div */
         .content_view + .content_btn {
         padding-top: 20px;
         }
         /* 이전 / 다음 a태그*/
         .btn_design{
         border-radius: 10px;    
         border: 2px solid #1b1b1b;
         color: black;
         }
         .btn_move {
         float: left;
         width: 100px;
         height: 2.3rem;
         margin-right: 10px;
         font-size: 1rem;
         line-height: 2.3rem;
         text-align: center;
         text-decoration: none;
         background-color: white;
         }
         .btn_move:hover{
         background-color: rgb(250,190,0);
         }
         /* 목록 a태그 */
         .btn_list {
         float: right;
         width: 100px;
         height: 2.3rem;
         font-size: 1rem;
         line-height: 2.3rem;
         background-color: rgb(250,190,0);
         text-align: center;
         text-decoration: none;
         }
         .btn_list:hover{
         background-color: white;
         }
      </style>
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
               <a href="customer_notice_list.html" class="btn_design btn_list">목록</a>
            </div>
         </div>
      </div>
      <%@ include file="../common/footer.jsp" %>
   </body>
</html>