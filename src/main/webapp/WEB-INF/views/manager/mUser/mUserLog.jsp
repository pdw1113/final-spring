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
      <!-- css -->
	  <link rel="stylesheet" type="text/css" href="resources/css/mUserLog.css">
      <title>Document</title>
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