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
      <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
      <!-- JUA 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
      <!--제이쿼리CDN-->
      <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
      <title>Document</title>
      <style>
         html,
         body {
         width: 100%;
         padding: 0;
         margin: 0;
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
         /* 전체 div */
         .content_mUserLog {
         width: 100%;
         padding: 57px 0 125px 0;
         }
         .content_mUserLog .layoutSubbox_mUserLog {
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         .searchhbox_mUserLog {
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         .content_mUserLog .layoutSubbox_mUserLog:after {
         content: "";
         display: block;
         clear: both;
         }
         /*검색버튼*/
         .searchhBtn_mUserLog {
         margin: -3px 14px 0px 0;
         padding-bottom: 8px;
         }
         .main-section {
         margin: 0 auto;
         }
         .searchhBtn_mUserLog .btn_searchh_mUserLog:hover {
         background-color: #fabe00;
         font-weight: 600;
         color: white;
         }
         /* 검색결과 table */
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
         .id_text_mUserLog {
         font-size: 14px;
         }
         .nickname_text_mUserLog {
         color: cornflowerblue;
         font-size: 14px;
         }
         /* 반응형~ */
         @media (max-width: 1360px) {
         /* 사이드 여백 */
         .content_mUserLog .layoutSubbox_mUserLog,
         .main-section {
         width: auto;
         margin: 0 20px;
         }
         }
         #shot_table_mUserLog {
         width: 70px;
         }
         #midle_table_mUserLog {
         width: 90px;
         }
         #long_table_mUserLog {
         width: 270px;
         }
         .caption_mUserLog {
         text-align: left;
         margin-bottom: 10px;
         }
         /* 검색결과 숫자 */
         .caption_text_mUserLog {
         color: red;
         }
         /* 검색 테이블 */
         .searchhbox_table_mUserLog {
         margin: 15px auto 20px;
         border-top: 1px solid rgb(173, 173, 173);
         border-collapse: collapse;
         }
         /* 검색테이블 td */
         .searchhbox_table_mUserLog td {
         height: 45px;
         }
         /* 검색테이블 th,td */
         .searchhbox_table_mUserLog th,
         td {
         border-bottom: 1px solid rgb(173, 173, 173);
         border-collapse: collapse;
         }
         /* 검색 테이블 주제 */
         .searchtable_title_mUserLog {
         width: 140px;
         text-align: left;
         padding-left: 10px;
         font-size: 20px;
         background-color: rgb(236, 236, 236);
         }
         /* 검색 테이블 요소*/
         .searchtable_content_mUserLog {
         width: 1130px;
         text-align: left;
         padding-left: 10px;
         }
         /* 아이디,등급,이름,닉네임 목록 */
         .bdbox_mUserLog {
         width: 140px;
         font-size: 17px;
         height: 30px;
         outline-style: none;
         }
         /* 검색창 */
         .searchtext_mUserLog {
         width: 450px;
         font-size: 17px;
         height: 28px;
         margin-left: 20px;
         outline-style: none;
         }
         /* 체크박스 */
         .checkbox_mUserLog {
         font-size: 22px;
         float: left;
         margin-left: 10px;
         }
         .checkboxes_mUserLog {
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
         .form_control_mUserLog{
         margin-left: 10px;
         height: 25px;
         font-size: 18px;
         cursor:pointer;
         }
         .test {
         width: 23px;
         font-size: 15px;
         color: #6c6d70;
         font-weight: 300;
         line-height: 38px;
         text-align: center;
         }
         .datepicker_warp_mUserLog{
         display: table;
         }
         .day_button_div_mUserLog{
         display: flex;
         }
         .day_button_mUserLog{
         border: 1px solid gray;
         margin-left: 15px;
         width: 50px;
         height: 25px;
         text-align: center;
         vertical-align: middle;
         float: left;
         border-radius: 5px;
         padding-top: 2px;
         box-shadow: inset 0 1px 0 rgba(255, 255, 255, 3), inset 0 0 2px rgba(255, 255, 255, 3), 0 1px 2px rgba(0, 0, 0, 29);
         cursor:pointer;
         line-height: 18px;
         }
         .seaerch_button_mUserLog{
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
         margin-top: 10px;
         margin-bottom: 10px;
         margin-left: 14px;
         }
         .dateform_mUserLog{
         font-size: 18px;
         font-family: sans-serif;
         height:27px;
         margin-right:15px;
         margin-left:9px;
         }
         /*!!헤더css 깨짐으로 부트스트랩 쓴 페이지에만 적용하는 코드!!*/
         .header div.login_box_Mainhead{
         margin-top: 1.5rem;
         line-height: 3rem;
         margin-right: 0.3rem;
         transition-duration:0s;
         }
         .header div.login_box_Mainhead .head_login_Mainhead{
         height: 3.6rem;
         width: 8.6rem;
         transition-duration:0s;
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
            <div class="cate_Managerheader">회원 관리 > <U>개인정보 접속기록 조회</U></div>
            <div class="title_Managerheader">개인정보 접속기록 조회</div>
         </div>
         <div class="main-section">
            <div class="searchhbox_mUserLog">
               <!-- 검색 테이블 -->
               <table class="searchhbox_table_mUserLog">
                  <tr>
                     <!-- 검색어 -->
                     <td class="searchtable_title_mUserLog">검색어</td>
                     <td class="searchtable_content_mUserLog">
                        <div class="select_mybuylist">
                           <select class="bdbox_mUserLog">
                              <option value="">아이디</option>
                              <option value="">등급</option>
                              <option value="">이름</option>
                              <option value="">닉네임</option>
                           </select>
                           <input type="text" class="searchtext_mUserLog"></input>
                        </div>
                     </td>
                  </tr>
                  <!-- 검색 기간 -->
                  <tr>
                     <td class="searchtable_title_mUserLog">검색기간</td>
                     <td>
                        <div class="datepicker_warp_mUserLog">
                           <div class="day_button_div_mUserLog">
                              <input type="date" class="dateform_mUserLog"> ~ <input type="date" class="dateform_mUserLog">
                              <div class="day_button_mUserLog">
                                 오늘
                              </div>
                              <div class="day_button_mUserLog">
                                 7일
                              </div>
                              <div class="day_button_mUserLog">
                                 15일
                              </div>
                              <div class="day_button_mUserLog">
                                 1개월
                              </div>
                              <div class="day_button_mUserLog">
                                 3개월
                              </div>
                              <div class="day_button_mUserLog">
                                 6개월
                              </div>
                           </div>
                        </div>
                     </td>
                  </tr>
               </table>
            </div>
            <div class="Admin_grant_Managerheader ">
               <button class="seaerch_button_mUserLog">검색</button>
            </div>
            <!-- 검색결과 -->
            <div class="layoutSubbox_mUserLog">
               <table class="type07">
                  <caption class="caption_mUserLog"> 검색
                     <span class="caption_text_mUserLog">1</span>건 / 전체 <span class="caption_text_mUserLog">
                     1</span>명
                  </caption>
                  <thead>
                     <tr>
                        <th scope="cols">접속일시</th>
                        <th scope="cols">접속IP</th>
                        <th scope="cols">아이디/닉네임</th>
                        <th scope="cols">이름</th>
                        <th scope="cols">구분</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td id="long_table_mUserLog">2020-09-28 15:30:41</td>
                        <td id="long_table_mUserLog">182.226.35.175</td>
                        <td id="long_table_mUserLog">
                           <span class="id_text_mUserLog">test_id_2</span>  
                           <span class="nickname_text_mUserLog">지존파워동민</span>
                        </td>
                        <td id="midle_table_mUserLog">천동민</td>
                        <td id="midle_table_mUserLog">은손</td>
                     </tr>
                  </tbody>
               </table>
            </div>
         </div>
      </div>
      <script> 
         $('.day_button_mUserLog').click(function(event){
             $('.day_button_mUserLog').css('background-color','white');
             $(this).css('background-color','rgb(219, 219, 219)');
         });
      </script>
   </body>
</html>