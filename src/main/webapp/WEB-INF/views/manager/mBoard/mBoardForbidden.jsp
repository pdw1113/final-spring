<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <!-- 합쳐지고 최소화된 최신 CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
      <!-- 부가적인 테마 -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
      <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
      <style>
         .font_jua {
         font-family: 'Jua', sans-serif;
         color: black;
         }
         html,
         body {
         width: 100%;
         padding: 0;
         margin: 0;
         }
         .header {
         width: 100%;
         height: 6.2rem;
         }
         .left-bar {
         float: left;
         width: 13%;
         height: 917px;
         border-right: 1px solid gainsboro;
         }
         .section {
         width: 87%;
         float: left;
         height: 55.5rem;
         }
         .cate_Managerheader {
         color: rgb(141, 141, 141);
         height: 35px;
         line-height: 35px;
         border-bottom: 1px solid rgb(141, 141, 141);
         padding-left: 15px;
         }
         .title_Managerheader {
         font-size: 30px;
         font-family: jua;
         margin-top: 30px;
         padding-bottom: 10px;
         margin-bottom: 10px;
         margin-left: 20px;
         margin-right: 20px;
         border-bottom: 3px solid black;
         }
         h2 {
         text-align: center;
         font-family: jua;
         }
         ul,
         li {
         list-style: none;
         }
         /* 전체 div */
         .content_MemberManager {
         width: 100%;
         padding: 57px 0 125px 0;
         }
         .content_MemberManager .layoutSubbox_MemberManager {
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         .searchbox_MemberManager {
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         .content_MemberManager .layoutSubbox_MemberManager:after {
         content: "";
         display: block;
         clear: both;
         }
         /* 달력 date-picker */
         label {
         margin-left: 20px;
         }
         .date {
         width: 140px;
         margin: 0 1px 10px 1px;
         }
         .date>span:hover {
         cursor: pointer;
         }
         /* 비밀번호 입력 div */
         .dataInform_MemberManager .inform_MemberManager {
         width: 100%;
         overflow: hidden;
         }
         /*검색버튼*/
         .searchBtn_MemberManager {
         margin: -3px 14px 0px 0;
         padding-bottom: 8px;
         }
         .searchBtn_MemberManager .btn_search_MemberManager {
         background-color: #ddd;
         border: none;
         color: black;
         font-weight: 600;
         padding: 16px 32px;
         text-align: center;
         font-size: 16px;
         margin: 4px 2px;
         transition: 0.3s;
         }
         .searchBtn_MemberManager .btn_search_MemberManager:hover {
         background-color: #fabe00;
         font-weight: 600;
         color: white;
         }
         /* 회원 리스트 table */
         table.type07 {
         border-collapse: collapse;
         text-align: left;
         line-height: 1.5;
         margin-top: 20px;
         }
         table.type07 thead {
         border-right: 1px solid #ccc;
         border-left: 1px solid #ccc;
         background: #bcbcbc;
         }
         table.type07 thead th {
         padding: 10px;
         font-weight: bold;
         vertical-align: top;
         color: #fff;
         border: 1px solid #ccc;
         text-align: center;
         }
         table.type07 td {
         width: 350px;
         padding: 10px;
         vertical-align: top;
         border-bottom: 1px solid #ccc;
         border: 1px solid #ccc;
         text-align: center;
         }
         .id_text_MemberManager {
         font-size: 12px;
         }
         .nickname_text_MemberManager {
         color: cornflowerblue;
         font-size: 13px;
         }
         /* 반응형~ */
         @media (max-width: 1360px) {
         /* 사이드 여백 */
         .content_MemberManager .layoutSubbox_MemberManager {
         width: auto;
         margin: 0 20px;
         }
         }
         table,
         td {
         text-align: center;
         vertical-align: middle;
         }
         .seaerch_save_button {
         width: 80px;
         font-size: 19px;
         background-color: rgb(219, 219, 219);
         border-radius: 5px;
         text-shadow: 0px -1px 1px rgba(0, 0, 0, 3);
         border: 1px solid black;
         box-shadow: inset 0 1px 0 rgba(255, 255, 255, 3), inset 0 0 2px rgba(255, 255, 255, 3), 0 1px 2px rgba(0, 0, 0, 29);
         font-family: sans-serif;
         outline-style: none;
         cursor: pointer;
         position: absolute;
         top: 130px;
         left: 1720px;
         }
         .seaerch_save_button:hover {
         transition: 300ms;
         background-color: rgb(250, 190, 0);
         }
         /* 텍스트 입력 */
         .badText {
         width: 1500px;
         height: 550px;
         border: 1px solid #ddd;
         position: relative;
         left: 50px;
         top: 10px;
         display: block;
         resize: none;
         }
         .second-title {
         font-size: 20px;
         font-family: 'jua';
         margin-left: 30px;
         }
         .third-title {
         font-size: 18px;
         font-family: 'jua';
         margin-left: 50px;
         color: black;
         }
         .introduction {
         font-size: 15px;
         color: darkgray;
         margin-left: 70px;
         }
      </style>
   </head>
   <body>
      <div class="header">
         
         <%@ include file="../../common/header.jsp" %>
      </div>
      <div class="left-bar">
         <%@ include file="../common/mLeftBar.jsp" %>
      </div>
      <div class="section">
         <div class="mian-header">
            <div class="cate_Managerheader">게시판 관리 > <U>금칙어 관리</U></div>
            <button class="seaerch_save_button">저장</button>
            <div class="title_Managerheader">금칙어 관리</div>
         </div>
         <div class="main-section">
            <div class="second-title">게시판 금칙어( ,(콤마)로 구분해서 입력하세요. )</div>
            <textarea class="badText">
            </textarea>
            <div class="third-title"><br>◈안내</div>
            <div class="introduction">
               [금칙어 관리] 금칙어는 어떨때 사용하나요?
               <br>ㆍ게시판에 스팸글 또는 욕설 등의 글이 등록되지 않도록 차단하는 기능입니다.
               <br>ㆍ게시글을 등록할 때 금칙어가 포함되어 있을 경우 게시글이 등록되지 않도록 제한합니다.
               <br>ㆍ금칙어 등록시 단어별 구분은 ',' 콤마(,)로 등록합니다.(예: 운영자,관리자 등)
            </div>
         </div>
      </div>
   </body>
</html>