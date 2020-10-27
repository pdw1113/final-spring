<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- JUA 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
           <!-- 합쳐지고 최소화된 최신 CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
      <!-- 부가적인 테마 -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
      <style>
         html,
         body {
         width: 100%;
         padding: 0;
         margin: 0;
         }
         .header{    
         width: 100%;
         height: 6.5rem;
         }
         .left-bar{
         float: left;
         width: 13%;
         height: 100vh;
         border-right: 1px solid gainsboro;
         }
         .section{
         width: 87%;
         float: left;
         height: 100vh;
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
         .content_mUserList {
         width: 100%;
         padding: 57px 0 125px 0;
         }
         .content_mUserList .layoutSubbox_mUserList {
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         .searchhbox_mUserList {
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         .content_mUserList .layoutSubbox_mUserList:after {
         content: "";
         display: block;
         clear: both;
         }
         /* 비밀번호 입력 div */
         .dataInform_mUserList .inform_mUserList {
         width: 100%;
         overflow: hidden;
         }
         /*검색버튼*/
         .searchhBtn_mUserList {
         margin: -3px 14px 0px 0;
         padding-bottom: 8px;
         }
         .main-section {
         margin: 0 auto;
         }
         .searchhBtn_mUserList .btn_searchh_mUserList:hover {
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
         .id_text_mUserList {
         font-size: 12px;
         }
         .nickname_text_mUserList {
         color: cornflowerblue;
         font-size: 13px;
         }
         /* 반응형~ */
         @media (max-width: 1360px) {
         /* 사이드 여백 */
         .content_mUserList .layoutSubbox_mUserList,
         .main-section {
         width: auto;
         margin: 0 20px;
         }
         }
         #shot_table_mUserList {
         width: 70px;
         }
         #midle_table_mUserList {
         width: 90px;
         }
         #long_table_mUserList {
         width: 270px;
         }
         .caption_mUserList {
         text-align: left;
         margin-bottom: 10px;
         }
         /* 검색결과 숫자 */
         .caption_text_mUserList {
         color: red;
         }
         /* 검색 테이블 */
         .searchhbox_table_mUserList {
         margin: 15px auto 20px;
         border-top: 1px solid rgb(173, 173, 173);
         border-collapse: collapse;
         }
         /* 검색테이블 td */
         .searchhbox_table_mUserList td {
         height: 45px;
         }
         /* 검색테이블 th,td */
         .searchhbox_table_mUserList th,
         td {
         border-bottom: 1px solid rgb(173, 173, 173);
         border-collapse: collapse;
         }
         /* 검색 테이블 주제 */
         .searchtable_title_mUserList {
         width: 140px;
         text-align: left;
         padding-left: 10px;
         font-size: 20px;
         background-color: rgb(236, 236, 236);
         }
         /* 검색 테이블 요소*/
         .searchtable_content_mUserList {
         width: 1130px;
         text-align: left;
         padding-left: 10px;
         }
         /* 아이디,등급,이름,닉네임 목록 */
         .bdbox_mUserList {
         width: 140px;
         font-size: 17px;
         height: 30px;
         outline-style: none;
         }
         /* 검색창 */
         .searchtext_mUserList {
         width: 450px;
         font-size: 17px;
         height: 28px;
         margin-left: 20px;
         outline-style: none;
         }
         /* 체크박스 */
         .checkbox_mUserList {
         font-size: 22px;
         float: left;
         margin-left: 16px;
         }
         /* 체크박스 크기 */
         .checkboxes_mUserList {
         zoom: 1.5;
         padding-right: 5px;
         }
         .Admin_grant_Managerheader {
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         /* 검색버튼 */
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
         /* 관리자 권한부여 버튼 */
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
         /* 날짜폼 */
         .dateform_mUserList{
         font-size: 18px;
         font-family: sans-serif;
         height:25px;
         margin-right:15px;
         margin-left:15px;
         }
         /* 아이디 검색창 */
         .select_mybuylist{
         margin-left : 5px;
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
         <div class="mainheader_mUserList">
            <div class="cate_Managerheader">회원 관리 > <U>회원 리스트</U></div>
            <div class="title_Managerheader">회원 리스트</div>
         </div>
         <div class="mainsection_mUserList">
            <div class="searchhbox_mUserList">
               <!-- 검색 테이블 -->
               <table class="searchhbox_table_mUserList">
                  <tr>
                     <!-- 검색어 -->
                     <td class="searchtable_title_mUserList">검색어</td>
                     <td class="searchtable_content_mUserList">
                        <div class="select_mybuylist">
                           <select class="bdbox_mUserList">
                              <option value="">아이디</option>
                              <option value="">등급</option>
                              <option value="">이름</option>
                              <option value="">닉네임</option>
                           </select>
                           <input type="text" class="searchtext_mUserList"></input>
                        </div>
                     </td>
                  </tr>
                  <!-- 회원구분 -->
                  <tr>
                     <td class="searchtable_title_mUserList">회원구분</td>
                     <td>
                        <span class="checkbox_mUserList">
                        <input class="checkboxes_mUserList" type="checkbox"value="1">
                        <span>일반회원</span>
                        <input class="checkboxes_mUserList" type="checkbox"value="1">
                        <span>능력자</span>
                        <input class="checkboxes_mUserList" type="checkbox"value="1">
                        <span>관리자</span>
                        <input class="checkboxes_mUserList" type="checkbox"value="1">
                        <span>탈퇴회원</span>
                        </span>
                     </td>
                  </tr>
                  <!-- 회원가입일 -->
                  <tr>
                     <td class="searchtable_title_mUserList">회원가입일</td>
                     <td>
                        <div class="input_date_mUserList">
                           <input type="date" class="dateform_mUserList"> ~ <input type="date" class="dateform_mUserList">
                        </div>
                     </td>
                  </tr>
                  <!-- 회원등급 -->
                  <tr>
                     <td class="searchtable_title_mUserList">회원등급</td>
                     <td> 
                        <span class="checkbox_mUserList">
                        <input class="checkboxes_mUserList" type="checkbox"value="1">
                        <span>흙손</span>
                        <input class="checkboxes_mUserList" type="checkbox"value="1">
                        <span>동손</span>
                        <input class="checkboxes_mUserList" type="checkbox"value="1">
                        <span>은손</span>
                        <input class="checkboxes_mUserList" type="checkbox"value="1">
                        <span>금손</span>
                        <input class="checkboxes_mUserList" type="checkbox"value="1">
                        <span>다이아손</span>
                        <input class="checkboxes_mUserList" type="checkbox"value="1">
                        <span>타노스</span>
                        </span>
                     </td>
                  </tr>
               </table>
            </div>
            <div class="Admin_grant_Managerheader ">
               <button class="seaerch_button_PersnalAccess">검색</button>
               <button class="manager_button_PersnalAccess">관리자 권한 부여</button>
            </div>
            <!-- 검색결과 -->
            <div class="layoutSubbox_mUserList">
               <table class="type07">
                  <caption class="caption_mUserList"> 검색
                     <span class="caption_text_mUserList">1</span>건 / 전체 <span class="caption_text_mUserList">
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
                        <td id="shot_table_mUserList"><input type="checkbox" value="1"></td>
                        <td id="shot_table_mUserList">1</td>
                        <td id="midle_table_mUserList">일반회원</td>
                        <td id="long_table_mUserList"><span class="id_text_mUserList">test_id_2</span> / <span
                           class="nickname_text_mUserList">지존파워동민</span></td>
                        <td id="midle_table_mUserList">천동민</td>
                        <td id="midle_table_mUserList">은손</td>
                        <td>10-09-01</td>
                        <td>20-10-20</td>
                     </tr>
                  </tbody>
               </table>
            </div>
         </div>
      </div>
   </body>
</html>