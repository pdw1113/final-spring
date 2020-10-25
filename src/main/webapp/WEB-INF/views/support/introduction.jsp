<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- BLACK HAN SANS 폰트 -->
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
      <!-- Noto-Sans 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
      <!-- JUA 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
      <title>Document</title>
      <style>
         /* jua 폰트 */
         .font_jua{ 
         font-family: 'Jua', sans-serif;
         color: black;
         }
         /* hanSans 폰트 */
         .font_hanSans{
         font-family: 'Black Han Sans', sans-serif;
         }
         /* noto 폰트 */
         .font_noto{
         font-family: 'Noto Sans KR', sans-serif;
         }
         body, ul, h2, p{
         margin: 0;
         padding: 0;
         }
         li{
         list-style-type: none;
         }
         .wrapper{
         display: flex;
         width:100%;
         height: 100vh;
         justify-content: center;
         align-items: center;
         }
         .team{
         display: flex;
         justify-content: center;
         align-items: center;
         }
         .team-item{
         flex-basis: 16rem;
         flex-shrink: 0;
         margin: 0 10px;
         box-shadow: 0 0 6px 3px rgba(0,0,0,0.6);
         transition: all .4s;
         }
         .team-item:hover{
         flex-basis: 20rem;
         margin: 0 3rem;
         }
         .team-item img{
         width: 100%;
         object-fit: cover;
         object-position: center;
         }
         .profile{
         background-color: #222;
         position: relative;
         overflow: hidden;
         }
         .profile:before{
         content: ' ';
         position: absolute;
         left: 0;
         bottom: 0;
         right: 0;
         height: 13rem;
         /* Permalink - use to edit and share this gradient: https://colorzilla.com/gradient-editor/#000000+0,000000+100&0+0,0.95+100 */
         background: -moz-linear-gradient(top,  rgba(0,0,0,0) 0%, rgba(0,0,0,0.95) 100%); /* FF3.6-15 */
         background: -webkit-linear-gradient(top,  rgba(0,0,0,0) 0%,rgba(0,0,0,0.95) 100%); /* Chrome10-25,Safari5.1-6 */
         background: linear-gradient(to bottom,  rgba(0,0,0,0) 0%,rgba(0,0,0,0.95) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
         filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00000000', endColorstr='#f2000000',GradientType=0 ); /* IE6-9 */
         }
         .profile_red{
         color: rgb(204, 59, 59);
         }
         .profile_beige{
         color: beige;
         }
         .profile_green{
         color: skyblue;
         }
         .profile_pink{
         color: pink;
         }
         .profile_purple{
         color: violet;
         }
         .profile-contents{
         position: absolute;
         left: 0;
         bottom: 0;
         padding: 10px;
         }
         .profile-contents h2{
         font-size: 1.5rem;
         }
         .profile-contents h2 span{
         display: block;
         font-size: 1.2rem;
         }
         .profile-contents p{
         color: white;
         font-size: 1rem;
         min-width: 140px;
         max-height: 0;
         overflow: hidden;
         line-height: 1.2;
         transition: all .4s;
         opacity: 0;
         transition-delay: .4s;
         }
         .team-item:hover .profile-contents p{
         max-height: 6em;
         opacity: 1;
         margin-top: 0.5em;
         }
      </style>
   </head>
   <body>
      <!-- 임시로 넣어놓은 헤더 아이프레임 -->
   	<%@ include file="../common/header.jsp" %>
      <div style="text-align: center; margin-bottom: -14rem; ">
         <h2 style="display: inline-block; font-size: 3rem;border-bottom: 3px solid rgb(250,190,0);" class="font_noto">
            회사 대표 및 운영진
         </h2>
      </div>
      <div class="wrapper">
         <ul class="team">
            <li class="team-item">
               <div class="profile profile_red">
                  <img src="resources/img/상뉴_PIC.jpg">
                  <div class="profile-contents">
                     <h2>Jeong SangNyu <span>팀장</span></h2>
                     <p>
                        * KH정보교육원 H반 오전반 반장 <br>
                        * 미니프로젝트 팀장 <br>
                        * 세미프로젝트 팀장 <br>
                        * 파이널프로젝트 팀장 <br>
                        * JLPT N1 / 일본 거주 3년 <br>
                     </p>
                  </div>
               </div>
            </li>
            <li class="team-item">
               <div class="profile profile_beige">
                  <img src="resources/img/승백_PIC.jpg">
                  <div class="profile-contents">
                     <h2>Lee SeungBaek <span>전차</span></h2>
                     <p>
                        * 서울대학교 컴퓨터공학과 <br>
                        * ROTC 중위 전역 <br>
                        * 정보처리기사 2019 취득 <br>
                        * TOEIC 990 <br>
                        * 유재하 통기타 대회 우승 <br>
                     </p>
                  </div>
               </div>
            </li>
            <li class="team-item">
               <div class="profile profile_green">
                  <img src="resources/img/동민_PIC.jpg">
                  <div class="profile-contents">
                     <h2>Cheon DongMin <span>천동벌거숭이</span></h2>
                     <p>
                        * NCsoft 기획팀장 <br>
                        * 부트캠프 C++ 과정 수료 <br>
                        * 개철이 주인 <br>
                        * 나루토 미안하다 어그로의 주인공 <br>
                        * THUG LIFE <br>
                     </p>
                  </div>
               </div>
            </li>
            <li class="team-item">
               <div class="profile profile_pink">
                  <img src="resources/img/혜란_PIC.jpg">
                  <div class="profile-contents">
                     <h2>Moon HyeRan <span>갓혜란</span></h2>
                     <p>
                        * 東京大学 工学部 <br>
                        * KH정보교육원 보안과정 수료 <br>
                        * 천동민과 듀엣 <br>
                        * 뉴욕 맥도날드 간 적 있음 <br>
                        * 백악관 보안 담당 <br>
                     </p>
                  </div>
               </div>
            </li>
            <li class="team-item">
               <div class="profile profile_purple">
                  <img src="resources/img/정호_PIC.PNG">
                  <div class="profile-contents">
                     <h2>Jo JungHoe <span>모사꾼</span></h2>
                     <p>
                        * SKT T1 미드 라이너 <br>
                        * 암사의 팬티 <br>
                        * 황철순한테 PT 받음 <br>
                        * KH H반 대표 미남 <br>
                        * 잉 기모링~ <br>
                     </p>
                  </div>
               </div>
            </li>
         </ul>
      </div>
      <!-- 임시 풋터 아이프레임 -->
      <%@ include file="../common/footer.jsp" %>
   </body>
</html>