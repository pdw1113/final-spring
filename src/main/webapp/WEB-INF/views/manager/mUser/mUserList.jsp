<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- datePicker CDN -->
      <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet"
         type="text/css" />
      <!-- JUA 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
      <!-- Date Picker 관련-->
      <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
      <title>Document</title>
      <style>
         html,
         body {
         width: 100%;
         padding: 0;
         margin: 0;
         }
         /* 달력 date-picker */
         label {
         margin-left: 20px;
         }
         #datepicker {
         width: 180px;
         margin: 0 20px 20px 20px;
         }
         #datepicker>span:hover {
         cursor: pointer;
         }
          .header{    
         width: 100%;
         height: 6.2rem;
         }
         .left-bar{
         float: left;
         width: 13%;
         height: 92rem;
         border-right: 1px solid gainsboro;
         }
         .section{
         width: 87%;
         float: left;
         height: 92rem;
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
         .searchhbox_MemberManager {
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
         .date>span:hover {
         cursor: pointer;
         }
         .date{
         display: table-cell;
         vertical-align: middle;
         }
         /* 비밀번호 입력 div */
         .dataInform_MemberManager .inform_MemberManager {
         width: 100%;
         overflow: hidden;
         }
         /*검색버튼*/
         .searchhBtn_MemberManager {
         margin: -3px 14px 0px 0;
         padding-bottom: 8px;
         }
         .main-section {
         margin: 0 auto;
         }
         .searchhBtn_MemberManager .btn_searchh_MemberManager:hover {
         background-color: #fabe00;
         font-weight: 600;
         color: white;
         }
         /* 회원 리스트 table */
         table.type07 {
         border-collapse: collapse;
         text-align: left;
         line-height: 1.5;
         margin: 20px auto;
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
         width: 180px;
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
         .content_MemberManager .layoutSubbox_MemberManager,
         .main-section {
         width: auto;
         margin: 0 20px;
         }
         }
         table,
         td {
         text-align: center;
         vertical-align: middle;
         }
         #shot_table_MemberManager {
         width: 70px;
         }
         #midle_table_MemberManager {
         width: 90px;
         }
         #long_table_MemberManager {
         width: 270px;
         }
         .caption_MemberManager {
         text-align: left;
         margin-bottom: 10px;
         }
         /* 검색결과 숫자 */
         .caption_text_MemberManabger {
         color: red;
         }
         /* 검색 테이블 */
         .searchhbox_table_PersnalAccess {
         margin: 15px auto 20px;
         border-top: 1px solid rgb(173, 173, 173);
         border-collapse: collapse;
         }
         /* 검색테이블 td */
         .searchhbox_table_MemberManager td {
         height: 45px;
         }
         /* 검색테이블 th,td */
         .searchhbox_table_MemberManager th,
         td {
         border-bottom: 1px solid rgb(173, 173, 173);
         border-collapse: collapse;
         }
         /* 검색 테이블 주제 */
         .searchtable_title_MemberManager {
         width: 140px;
         text-align: left;
         padding-left: 10px;
         font-size: 20px;
         background-color: rgb(236, 236, 236);
         }
         /* 검색 테이블 요소*/
         .searchtable_content_MemberManager {
         width: 1130px;
         text-align: left;
         padding-left: 10px;
         }
         /* 아이디,등급,이름,닉네임 목록 */
         .bdbox_MemberManager {
         width: 140px;
         font-size: 17px;
         height: 30px;
         outline-style: none;
         }
         /* 검색창 */
         .searchtext_MemberManager {
         width: 450px;
         font-size: 17px;
         height: 25px;
         margin-left: 20px;
         outline-style: none;
         }
         /* 체크박스 */
         .checkbox_MemberManager {
         font-size: 22px;
         float: left;
         margin-left: 10px;
         }
         .checkboxes_MemberManager {
         zoom: 1.5;
         }
         .Admin_grant_Managerheader {
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         .Admin_grant_button_Managerheader {
         width: 180px;
         font-size: 19px;
         background-color: rgb(252, 230, 253);
         border-radius: 5px;
         text-shadow: 0px -1px 1px rgba(0, 0, 0, 3);
         border: 1px solid black;
         box-shadow: inset 0 1px 0 rgba(255, 255, 255, 3), inset 0 0 2px rgba(255, 255, 255, 3), 0 1px 2px rgba(0, 0, 0, 29);
         font-family: sans-serif;
         outline-style: none;
         cursor:pointer;
         }
         .form_control_MemberManager{
         margin-left: 10px;
         height: 25px;
         font-size: 18px;
         cursor:pointer;
         }
         .wave_MemberManager {
         width: 23px;
         font-size: 15px;
         color: #6c6d70;
         font-weight: 300;
         line-height: 38px;
         text-align: center;
         }
         .datepicker_warp_MemberManager{
         display: table;
         }
         .seaerch_button_PersnalAccess{
         width: 180px;
         font-size: 19px;
         background-color: rgb(219, 219, 219);
         border-radius: 5px;
         text-shadow: 0px -1px 1px rgba(0, 0, 0, 3);
         border: 1px solid black;
         box-shadow: inset 0 1px 0 rgba(255, 255, 255, 3), inset 0 0 2px rgba(255, 255, 255, 3), 0 1px 2px rgba(0, 0, 0, 29);
         font-family: sans-serif;
         outline-style: none;
         cursor:pointer;
         margin-top: 25px;
         margin-bottom: 10px;
         margin-left: 14px;
         }
         .manager_button_PersnalAccess{
         width: 180px;
         font-size: 19px;
         background-color: rgb(247, 167, 233);
         border-radius: 5px;
         text-shadow: 0px -1px 1px rgba(0, 0, 0, 3);
         border: 1px solid black;
         box-shadow: inset 0 1px 0 rgba(255, 255, 255, 3), inset 0 0 2px rgba(255, 255, 255, 3), 0 1px 2px rgba(0, 0, 0, 29);
         font-family: sans-serif;
         outline-style: none;
         cursor:pointer;
         margin-top: 25px;
         margin-bottom: 10px;
         margin-right: 35px;
         float: right;
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
         <!-- 내용 안의 헤더 부분 -->
         <div class="mian-header">
            <div class="cate_Managerheader">회원 관리 > <U>회원 리스트</U></div>
            <div class="title_Managerheader">회원 리스트</div>
         </div>
         <div class="main-section">
            <div class="searchhbox_MemberManager">
               <!-- 검색 테이블 -->
               <table class="searchhbox_table_MemberManager">
                  <tr>
                     <!-- 검색어 -->
                     <td class="searchtable_title_MemberManager">검색어</td>
                     <td class="searchtable_content_MemberManager">
                        <div class="select_mybuylist">
                           <select class="bdbox_MemberManager">
                              <option value="">아이디</option>
                              <option value="">등급</option>
                              <option value="">이름</option>
                              <option value="">닉네임</option>
                           </select>
                           <input type="text" class="searchtext_MemberManager"></input>
                        </div>
                     </td>
                  </tr>
                  <!-- 회원구분 -->
                  <tr>
                     <td class="searchtable_title_MemberManager">회원구분</td>
                     <td><span class="checkbox_MemberManager"><input class="checkboxes_MemberManager" type="checkbox"
                        value="1">일반회원</span>
                        <span class="checkbox_MemberManager"><input class="checkboxes_MemberManager" type="checkbox"
                           value="1">능력자</span>
                        <span class="checkbox_MemberManager"><input class="checkboxes_MemberManager" type="checkbox"
                           value="1">관리자</span>
                        <span class="checkbox_MemberManager"><input class="checkboxes_MemberManager" type="checkbox"
                           value="1">탈퇴회원</span>
                     </td>
                  </tr>
                  <!-- 회원가입일 -->
                  <tr>
                     <td class="searchtable_title_MemberManager">회원가입일</td>
                     <td>
                        <div class="datepicker_warp_MemberManager">
                           <div id="datepicker" class="input-group date" data-date-format="yyyy-mm-dd">
                              <input class="form_control_MemberManager" type="text" readonly />
                              <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                           </div>
                           <div class="wave_MemberManager">~</div>
                           <div id="datepicker2" class="input-group date" data-date-format="yyyy-mm-dd">
                              <input class="form_control_MemberManager" type="text" readonly />
                              <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                           </div>
                        </div>
                     </td>
                  </tr>
                  <!-- 회원등급 -->
                  <tr>
                     <td class="searchtable_title_MemberManager">회원등급</td>
                     <td><span class="checkbox_MemberManager"><input class="checkboxes_MemberManager" type="checkbox"
                        value="1">흙손</span>
                        <span class="checkbox_MemberManager"><input class="checkboxes_MemberManager" type="checkbox"
                           value="1">동손</span>
                        <span class="checkbox_MemberManager"><input class="checkboxes_MemberManager" type="checkbox"
                           value="1">은손</span>
                        <span class="checkbox_MemberManager"><input class="checkboxes_MemberManager" type="checkbox"
                           value="1">금손</span>
                        <span class="checkbox_MemberManager"><input class="checkboxes_MemberManager" type="checkbox"
                           value="1">다이아손</span>
                        <span class="checkbox_MemberManager"><input class="checkboxes_MemberManager" type="checkbox"
                           value="1">타노스</span>
                     </td>
                  </tr>
               </table>
            </div>
            <div class="Admin_grant_Managerheader ">
               <button class="seaerch_button_PersnalAccess">검색</button>
               <button class="manager_button_PersnalAccess">관리자 권한 부여</button>
            </div>
            <!-- 검색결과 -->
            <div class="layoutSubbox_MemberManager">
               <table class="type07">
                  <caption class="caption_MemberManager"> 검색
                     <span class="caption_text_MemberManabger">1</span>건 / 전체 <span class="caption_text_MemberManabger">
                     1</span>명
                  </caption>
                  <thead>
                     <tr>
                        <th scope="cols">체크</th>
                        <th scope="cols">번호</th>
                        <th scope="cols">구분</th>
                        <th scope="cols">아이디/닉네임</th>
                        <th scope="cols">이름</th>
                        <th scope="cols">등급</th>
                        <th scope="cols">회원가입일</th>
                        <th scope="cols">최종로그인</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td id="shot_table_MemberManager"><input type="checkbox" value="1"></td>
                        <td id="shot_table_MemberManager">1</td>
                        <td id="midle_table_MemberManager">일반회원</td>
                        <td id="long_table_MemberManager"><span class="id_text_MemberManager">test_id_2</span> / <span
                           class="nickname_text_MemberManager">지존파워동민</span></td>
                        <td id="midle_table_MemberManager">천동민</td>
                        <td id="midle_table_MemberManager">은손</td>
                        <td>10-09-01</td>
                        <td>20-10-20</td>
                     </tr>
                  </tbody>
               </table>
            </div>
         </div>
      </div>
      <script>
         //데이트 픽커
         $(function () {
             $("#datepicker").datepicker({ 
                     autoclose: true, 
                     todayHighlight: true,
             }).datepicker('update', new Date());
         
             $("#datepicker2").datepicker({ 
                     autoclose: true, 
                     todayHighlight: true,
             }).datepicker('update', new Date());
         });
      </script>
   </body>
</html>