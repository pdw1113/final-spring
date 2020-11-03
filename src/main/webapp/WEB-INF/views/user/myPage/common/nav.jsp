<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>Slide Project</title>
      <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
      <link rel="stylesheet" type="text/css" href="resources/css/nav_myPage.css">
      <style>

      </style>
   </head>
   <body>
      <nav class="contain_mynav">
         <h1 class="h1_mynav">마이페이지</h1>
         <ul class="container_mynav">
            <li>
               계정설정 <i class="fa fa-caret-down"></i>
               <ul>
                  <li><a class="a_mynav" href="profile.do">프로필</a></li>
                  <li><a class="a_mynav" href="wallet.do">보유 니즈머니</a></li>
                  <li><a class="a_mynav" href="modifyPwdPage.do">비밀번호 변경</a></li>
                  <li><a class="a_mynav" href="deleteUser.do">회원탈퇴</a></li>
               </ul>
            </li>
            <li>
               구매정보 <i class="fa fa-caret-down"></i>
               <ul>
                  <li><a class="a_mynav" href="wishList.do">관심상품</a></li>
                  <li><a class="a_mynav" href="buyList.do">구매내역</a></li>
               </ul>
            </li>
         </ul>
      </nav>
   </body>
</html>