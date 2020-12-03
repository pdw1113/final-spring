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
      <!-- css파일 -->
      <link rel="stylesheet" type="text/css" href="./resources/css/introduction.css">
      <title>NeeziT</title>
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
                  <img src="resources/img/정호_PIC.jpg">
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