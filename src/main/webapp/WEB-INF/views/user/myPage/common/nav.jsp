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
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      <style>
         html, body {
         padding: 0;
         margin: 0;
         }
         ul, li{
         list-style: none;
         margin: 0px;
         padding:0px;
         }
         h1 {
         background: white;
         font-size:2.4rem;
         text-align: center;
         font-family: jua;
         margin: 32px auto 32px auto;
         width:100%;
         z-index: 222;
         }
         a {
         font-size: 1em;
         }
         /* 주메뉴 */
         .container_mynav{
         background-color: #ffff;
         border:1px #e5e5e5 solid;
         border-top: solid rgb(250, 190, 0) 2px;
         width: 82.5rem;
         display: flex;
         /*가로 row*/
         flex-direction: row;
         /* 한줄에 가득차면 다음줄로 이동 안하겠다.*/
         flex-wrap: nowrap;
         justify-content: space-between;
         margin: 0 auto;
         font-family: jua;
         }
         /* 주메뉴 hover */
         .container_mynav li:hover{
         background-color: #fabe00;
         }
         .container_mynav ul{
         background:white; 
         opacity:0; 
         position: absolute;
         transition: opacity 0.4s;
         z-index: -1;
         pointer-events: none;
         box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
         border : 1px lightgray;
         }
         .container_mynav:after{
         content:'';
         display: block;
         clear:both;
         }
         .container_mynav > li{
         background-color: white;
         list-style: none; 
         line-height: 35px; 
         color:black;
         text-align: center;
         flex: auto;
         }
         .container_mynav > li ul li{
         text-align: center;
         width: 440px;
         }
         .container_mynav > li ul li:hover{
         background-color: white;
         color: orange;
         cursor: pointer;
         }
         .container_mynav > li:hover ul{
         opacity: 1;
         pointer-events:auto;
         }
         .container_mynav ul li{
         white-space: nowrap;
         }
         /* 반응형~ */
         @media (max-width: 1360px) {
         /* 사이드 여백 */
         .contain_mynav {
         width: auto;
         margin: 0 20px;
         }
         }
      </style>
   </head>
   <body>
      <nav class="contain_mynav">
         <h1>마이페이지</h1>
         <ul class="container_mynav">
            <li>
               계정설정 <i class="fa fa-caret-down"></i>
               <ul>
                  <li>프로필</li>
                  <li>보유 니즈머니</li>
                  <li>비밀번호 변경</li>
                  <li>회원탈퇴</li>
               </ul>
            </li>
            <li>
               구매정보 <i class="fa fa-caret-down"></i>
               <ul>
                  <li>관심상품</li>
                  <li>구매내역</li>
               </ul>
            </li>
            <li>
               고객지원 <i class="fa fa-caret-down"></i>
               <ul>
                  <li>공지사항</li>
                  <li>자주하는 질문(FAQ)</li>
                  <li>니즈머니 환불신청</li>
                  <li>문의/신고 등록</li>
                  <li>나의 문의/신고내역</li>
               </ul>
            </li>
         </ul>
      </nav>
   </body>
</html>