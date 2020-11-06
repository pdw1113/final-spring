<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
      <title>HEAD</title>
      <link rel="stylesheet" type="text/css" href="resources/css/mheader.css">
   </head>
   <body>
      <div class="index_head_Mainhead">
         <!-- 메인로고 -->
         <a href="index.do"><img class="head_logo_Mainhead" src="resources/img/LOGO.png"></a>
         <div class="head_search_div">
            <span class='main_manager_Mainhead'>관리자 페이지</span> 
         </div>
         	 <div>
	            <div class="login_box_Mainhead">
	               <a href="logout.do">
	                  <div class="head_login_Mainhead" style="margin-right: 0.7rem;">로그아웃</div>
	               </a>
	            </div>
	         </div>
      </div>
   </body>
</html>