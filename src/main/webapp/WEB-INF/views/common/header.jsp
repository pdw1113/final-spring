<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
      <title>HEAD</title>
      <link rel="stylesheet" type="text/css" href="resources/css/header.css">
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