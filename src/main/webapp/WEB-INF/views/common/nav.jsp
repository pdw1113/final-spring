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
      <style>
         html,
         body {
         padding: 0;
         margin: 0;
         /*overflow-x:hidden;*/
         }
         /* Nav background */
         .wrapper_Nav {
         height: 80px;
         text-align: center;
         background: linear-gradient(rgb(255, 211, 66), rgb(250, 190, 0));
         }
         /* Nav 아이콘 부분 div */
         .wrapper_NavIcon {
         display: block;
         margin: 0 auto;
         text-align: center;
         font-size: 1.5vw;
         }
         /* nav bar */
         nav li {
         list-style: none;
         height: 80px;
         padding-top: 10px;
         box-sizing: border-box;
         display: inline-block;
         background: linear-gradient(rgb(255, 211, 66), rgb(250, 190, 0));
         margin: 0 auto;
         width: 86px;
         }
         nav ul {
         overflow: hidden;
         }
         .nav_img {
         width: 35px;
         height: 35px;
         }
         .nav_icon,
         .nav_font {
         font-size: 30px;
         }
         /* a 링크 디자인효과 없애기 */
         nav li a {
         text-decoration: none;
         }
         /* Nav 아이콘 마우스 올릴 때 효과 (hover) */
         .web_icon:hover {
         content: url(resources/img/webDev-removebg_white.png);
         }
         .db_icon:hover {
         content: url(resources/img/database_white.png);
         }
         .phone_icon:hover {
         content: url(resources/img/cell-phone_white.png);
         }
         .embed_icon:hover {
         content: url(resources/img/embedded_bold2_white.png);
         }
         .chain_icon:hover {
         content: url(resources/img/blockchain_white.png);
         }
         .devlop_icon:hover {
         content: url(resources/img/development_white.png);
         }
         .server_icon:hover {
         content: url(resources/img/server_white.png);
         }
         .game_icon:hover {
         content: url(resources/img/game_white.png);
         }
         .security_icon:hover {
         content: url(resources/img/security_white.png);
         }
         .shop_icon:hover {
         content: url(resources/img/shop_icon_white.png);
         }
         .analysis_icon:hover {
         content: url(resources/img/analysis_white.png);
         }
         .quality_icon:hover {
         content: url(resources/img/QA2_white.png);
         }
         .chatbot_icon:hover {
         content: url(resources/img/PngItem_white.png);
         }
         .etc_icon:hover {
         content: url(resources/img/etc_white.png);
         }
         nav li p {
         color: black;
         font-size: 14px;
         margin-top: 0px;
         }
      </style>
   </head>
   <body>
      <!-- Nav 영역 -->
      <div class="wrapper_Nav">
         <nav class="wrapper_NavIcon">
            <li>
               <a href="productList.do">
                  <img class="nav_img web_icon" src="resources/img/webDev-removebg-preview.png"><br>
                  <p>웹개발</p>
               </a>
            </li>
            <li>
               <a href="#">
                  <img class="nav_img db_icon" src="resources/img/database_black.png"><br>
                  <p>데이터베이스</p>
               </a>
            </li>
            <li>
               <a href="#">
                  <img class="nav_img phone_icon" src="resources/img/cell-phone.png"><br>
                  <p>모바일앱</p>
               </a>
            </li>
            <li>
               <a href="#">
                  <img class="nav_img embed_icon" src="resources/img/embedded_bold2.png"><br>
                  <p>임베디드</p>
               </a>
            </li>
            <li>
               <a href="#">
                  <img class="nav_img chain_icon" src="resources/img/blockchain.png"><br>
                  <p>블록체인</p>
               </a>
            </li>
            <li>
               <a href="#">
                  <img class="nav_img server_icon" src="resources/img/server.png"><br>
                  <p>서버</p>
               </a>
            </li>
            <li>
               <a href="#">
                  <img class="nav_img shop_icon" src="resources/img/shop_icon.png"><br>
                  <p>쇼핑몰</p>
               </a>
            </li>
            <li>
               <a href="#">
                  <img class="nav_img devlop_icon" src="resources/img/development.png"><br>
                  <p>프로그램개발</p>
               </a>
            </li>
            <li>
               <a href="#">
                  <img class="nav_img game_icon" src="resources/img/game.png"><br>
                  <p>게임</p>
               </a>
            </li>
            <li>
               <a href="#">
                  <img class="nav_img analysis_icon" src="resources/img/analysis.png"><br>
                  <p>데이터분석</p>
               </a>
            </li>
            <li>
               <a href="#">
                  <img class="nav_img security_icon" src="resources/img/security.png"><br>
                  <p>보안</p>
               </a>
            </li>
            <li>
               <a href="#">
                  <img class="nav_img quality_icon" src="resources/img/QA2_black.png"><br>
                  <p>품질보증</p>
               </a>
            </li>
            <li>
               <a href="#">
                  <img class="nav_img chatbot_icon" src="resources/img/PngItem_5002858.png"><br>
                  <p>챗봇</p>
               </a>
            </li>
            <li>
               <a href="#">
                  <img class="nav_img etc_icon" src="resources/img/etc.png"><br>
                  <p>기타</p>
               </a>
            </li>
         </nav>
      </div>
   </body>
</html>