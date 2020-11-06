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
		<!-- css -->
	  <link rel="stylesheet" type="text/css" href="resources/css/mUserList.css">
   </head>
   <body>
      <div class="header">
         <%@ include file="../common/mheader.jsp" %>
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