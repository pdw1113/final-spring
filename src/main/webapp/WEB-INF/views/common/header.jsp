<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
      <title>HEAD</title>
      <style>
         body,
         html {
         width: 100%;
         margin: 0;
         padding: 0;
         }
         /* 헤드 전체 */
         .index_head_Mainhead {
         height: 65px;
         background-color: #fabe00;
         margin-bottom: 2rem;
         }
         /* 로고 이미지 */
         .head_logo_Mainhead {
         width: 150px;
         float: left;
         margin-left: 21px;
         margin-top: 8px;
         margin-right: 25px;
         object-fit: cover;
         }
         /* 로그인,회원가입 프레임 */
         .login_box_Mainhead {
         float: right;
         margin-top: 1rem;
         }
         /* 로그인, 회원가입 감싸고있는 테두리 */
         .head_login_Mainhead {
         float: left;
         border: 3px solid white;
         width: 80px;
         height: 30px;
         text-align: center;
         margin-left: 10px;
         border-radius: 15px;
         font-size: 20px;
         color: white;
         font-family: jua;
         opacity: 0.9;
         transition: all 1s;
         }
         .head_login_Mainhead:hover {
         opacity: 1;
         box-shadow: 0 0 10px 2px rgb(0, 0, 0, 0.2);
         }
         /* 관리자 페이지 글자 css  */
         .main_manager_Mainhead {
         color: white;
         font-size: 25px;
         float: left;
         line-height: 65px;
         font-family: jua;
         }
         .user_Mainhead {
         float: right;
         line-height: 63px;
         font-size: 20px;
         margin-right: 15px;
         color: black;
         font-weight: 600;
         }
         /* 요거 <>  */
         .main_search_Mainhead {
         color: white;
         font-size: 45px;
         float: left;
         line-height: 55px;
         }
         /* 검색박스 */
         .main_searchbox_Mainhead {
         background-color: #fabe00;
         border-bottom: 2px solid white;
         font-size: 30px;
         float: left;
         margin-top: 0px;
         width: 380px;
         }
         /* 검색 인풋텍스트 */
         .main_searchtext_Mainhead {
         border: none;
         background-color: #fabe00;
         font-size: 25px;
         width: 350px;
         }
         /* 가로 1200 이상 줄었을때 검색창 미디어 쿼리 */
         @media (max-width: 1200px) {
         .main_searchbox_Mainhead {
         background-color: #fabe00;
         border-bottom: 2px solid white;
         font-size: 30px;
         float: left;
         margin-top: 8px;
         width: 280px;
         }
         .main_searchtext_Mainhead {
         border: none;
         background-color: #fabe00;
         font-size: 25px;
         width: 250px;
         }
         }
         /* 가로 780 이상 줄었을때 검색창 미디어 쿼리 */
         @media (max-width: 780px) {
         .main_searchbox_Mainhead {
         background-color: #fabe00;
         border-bottom: 2px solid white;
         font-size: 30px;
         float: left;
         margin-top: 8px;
         width: 200px;
         }
         .main_searchtext_Mainhead {
         border: none;
         background-color: #fabe00;
         font-size: 25px;
         width: 170px;
         }
         }
         /* 가로 670 이상 줄었을때 검색창 미디어 쿼리 */
         @media (max-width: 670px) {
         .main_searchbox_Mainhead {
         display: none;
         }
         .main_searchtext_Mainhead {
         display: none;
         }
         }
         /*인풋 창 검은줄 없애기*/
         input:focus {
         outline: none;
         }
      </style>
   </head>
   <body>
         <div class="index_head_Mainhead">
            <!-- 메인로고 -->
            <a href="index.do"><img class="head_logo_Mainhead" src="resources/img/LOGO.png"></a>
            <div class="head_search_div">
               <!-- 검색창 폼 -->
               <div class="main_search_Mainhead">
                  < <!-- 이거 그냥 텍스트로 쓴거 빨간색 신경 ㄴㄴ -->
               </div>
               <div class="main_searchbox_Mainhead">
                  <input class="main_searchtext_Mainhead" type="text">
                  <a href="#"><img style="float: right; width: 23px; margin-top: 21px;"
                     src="resources/img/SearchGlass.png"></a>
               </div>
               <div class="main_search_Mainhead">
                  >
               </div>
            </div>
            <!-- 로그아웃 -->
            <div>
               <div class="login_box_Mainhead">
                  <a href="profile.do">
                     <div class="head_login_Mainhead" style="width: 100px;">마이페이지</div>
                  </a>
               </div>
               <div class="login_box_Mainhead">
                  <a href="signUpMaster.do">
                     <div class="head_login_Mainhead" style="width: 100px;">능력자등록</div>
                  </a>
               </div>
               <div class="login_box_Mainhead">
                  <a href="login.do">
                     <div class="head_login_Mainhead" style="margin-right: 10px;">로그인</div>
                  </a>
               </div>
               <div class="login_box_Mainhead">
                  <a href="signUp.do">
                     <div class="head_login_Mainhead" style="width: 100px;">회원가입</div>
                  </a>
               </div>
               <div class="login_box_Mainhead">
                  <a href="supportnav.do" id="manager_href">
                     <div class="head_login_Mainhead" id="manager_page">고객센터</div>
                  </a>
               </div>
               <div class="login_box_Mainhead">
                  <a href="productInsert.do" id="manager_href">
                     <div class="head_login_Mainhead" id="manager_page">상품등록</div>
                  </a>
               </div>
            </div>
            <span class="user_Mainhead"></span>
         </div>
      <script>
         $(document).ready(function () {
             // 사용자 아이디
             var id = "admin";
         
             // 관리자 페이지 스위치 1이면 관리자페이지 0이면 아님..
             var adminpage = 0;
         
             // 아이디 값이 있으면
             if (id != "") {
                 $(".user_Mainhead").append(id + "님 환영합니다.")
             }
         
             if (id == "admin") {
                 $("#manager_page").empty();
                 $("#manager_page").append("관리자");
                 $(".manager_page").show();
                $("#manager_href").attr("href","mStatistics.do")
                 // 관리자 페이지일 경우
                 if (adminpage == 1) {
                     $(".head_search_div").empty();
                     $(".head_search_div").append("<span class='main_manager_Mainhead'>관리자 페이지</span>");
                     $(".manager_page").hide();
                 }
             }
             $('body').css("font-family","Apple Color Emoji").css("line-height","1.6");
             
         });
      </script>
   </body>
</html>