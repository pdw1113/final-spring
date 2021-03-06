<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <title>NeeziT</title>
      <link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@300&display=swap" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="resources/css/footer.css">
   </head>
   <body>
      <footer>
         <div class="footerDiv">
            <table class="footerTable">
               <tr class="footerFirstRow">
                  <td>ABOUT</td>
                  <td>POLICY</td>
                  <td>CUSTOMER SERVICE</td>
                  <td>CONTACT</td>
                  <td>YOUTUBE</td>
               </tr>
               <tr>
                  <td><a href="introduction.do" class="footerA">회사소개</a></td>
                  <td><a href="provision.do" class="footerA">이용약관</a></td>
                  <td><a href="noticeList.do" class="footerA">고객지원</a></td>
                  <td>운영시간</td>
                  <td rowspan="2"><a href="#" class="footerA"><img src="resources/img/youtubeimg.jpg" alt="youtube_image" class="footeryoutubeimg"></a></td>
               </tr>
               <tr>
                  <td><a href="recruit.do" class="footerA">채용안내</a></td>
                  <td><a href="privacy.do" class="footerA">개인정보 처리방침</a></td>
                  <td></td>
                  <td>평일 09:00 ~ 18:30</td>
               </tr>
            </table>
            <p class="footerP">
               상호 : (주)니즈잇 | 주소 : 서울특별시 강남구 테헤란로14길 6 | 사업자등록번호 : 123-45-00000 | 대표자명 : 정상뉴
               <br>
               통신판매업 신고번호 : 제 2020-서울강남-00000
               <br>
               Copyright © 2020 neezit inc, ltd. All rights reserved
            </p>
         </div>
      </footer>
   </body>
   
   <c:if test="${ !empty sessionScope.loginUser }">
   <%@ include file="talk.jsp" %>
   </c:if>
</html>