<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- 합쳐지고 최소화된 최신 CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
      <!-- 부가적인 테마 -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
      <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
      <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
      <!-- 폰트 어썸 -->
      <script src="https://kit.fontawesome.com/fef720d792.js" crossorigin="anonymous"></script>
      <!-- Noto-Sans 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
      <!-- Font Awesome Icon Library -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <!-- jQuery-->
      <script src="https://code.jquery.com/jquery-3.5.1.js"
         integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
      <!--Star-->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
      <title>Document</title>
      <style>
         /* div { 
         border: 1px solid var(--color-dark-white);
         } */
         html,
         body {
         padding: 0;
         margin: 0;
         /* overflow-x: hidden; */
         width: 100%;
         }
         h3 {
         font-family: jua;
         }
         h4 {
         font-size: 2rem;
         }
         p {
         font-size: 2rem;
         }
         li {
         list-style: none;
         }
         .frame {
         border: 3px solid rgb(250, 190, 0);
         width: 100%;
         }
         :root {
         /* Color */
         --color-white: #ffffff;
         --color-light-white: #eeeeee;
         --color-dark-white: #bdbdbd;
         --color-pink: #fe918d;
         --color-dark-pink: #ff6863;
         --color-dark-grey: #4d4d4d;
         --color-grey: #616161;
         --color-light-grey: #7c7979;
         --color-blue: #73aace;
         --color-yellow: #fff7d1;
         --color-orange: rgb(250, 190, 0);
         --color-black: #000000;
         /* Font size */
         --font-large: 48px;
         --font-medium: 28px;
         --font-regular: 18px;
         --font-small: 16px;
         --font-micro: 14px;
         /* Font weight */
         --weight-bold: 700;
         --weight-semi-bold: 600;
         --weight-regular: 400;
         /* Size */
         --size-border-radius: 4px;
         /* Animation */
         --animation-duration: 300ms;
         }
         /* Universal tags */
         * {
         box-sizing: border-box;
         }
         /* Section common */
         .section {
         text-align: center;
         }
         button {
         background-color: transparent;
         cursor: pointer;
         border: none;
         outline: none;
         }
         /* Work */
         .line {
         border: 1px solid #c9c8c6;
         width: 600px;
         }
         .work__categories {
         margin: 40 40 0 40px;
         }
         .category__btn {
         border: 1px solid var(--color-dark-white);
         border-radius: var(--size-border-radius);
         font-size: 16px;
         padding: 8px 28px;
         position: relative;
         font-family: jua;
         width: 125px;
         }
         .button1 {
         border: 1px solid var(--color-dark-white);
         border-radius: var(--size-border-radius);
         font-size: var(--font-regular);
         padding: 8px 43px;
         position: relative;
         height: 40px;
         font-family: jua;
         }
         .work__projects {
         display: block;
         opacity: 1;
         transition: all var(--animation-duration) ease-out;
         overflow: hidden;
         }
         .work__projects.anim-out {
         opacity: 0;
         transform: scale(0.96) translateY(40px);
         }
         .project h3 {
         color: var(--color-orange);
         }
         .project__description1 {
         width: 100%;
         box-sizing: border-box;
         }
         .project__description2 {
         width: 100%;
         border-top: 1px solid #c9c8c6;
         box-sizing: border-box;
         }
         .project__description3 {
         width: 100%;
         border-top: 1px solid #c9c8c6;
         box-sizing: border-box;
         }
         .project__description4 {
         width: 100%;
         box-sizing: border-box;
         border-top: 1px solid #c9c8c6;
         }
         .project__description5 {
         width: 100%;
         box-sizing: border-box;
         border-top: 1px solid #c9c8c6;
         }
         .project__description5 p{
         line-height: 30px;
         }
         .project__description h3 {
         color: var(--color-orange);
         }
         /*인풋 창 검은줄 없애기*/
         input:focus {
         outline: none;
         }
         .category_detail {
         border-bottom: 1px solid #c9c8c6;
         margin-bottom: 10px;
         padding-left: 50px;
         }
         .buy_div_detail {
         height: 450px;
         margin-left: 30px;
         box-shadow: 0 6px 6px 0 rgba(0, 0, 0, 0.1);
         }
         .title_detail {
         padding-right: 40px;
         border-bottom: 1px solid #c9c8c6;
         padding: 0 0 0 0px;
         overflow: hidden;
         }
         .title_text_detail {
         font-family: jua;
         height: 200px;
         padding: 0px;
         padding-left: 50px;
         }
         /* 아이프레임 헤더 */
         .headiframe {
         width: 100vw;
         margin-bottom: -180px;
         /* position: fixed; */
         z-index: 100;
         }
         .title_img_div_detail {
         padding: 0px;
         overflow: hidden;
         margin-bottom: 1rem;
         }
         /* 타이틀 이미지 */
         .title_img_detail {
         object-fit: cover;
         margin: 0;
         box-shadow: 0 12px 12px 0 rgba(0, 0, 0, 0.4);
         width: 100%;
         height: 210px;
         }
         .price_div_detail {
         height: 135px;
         margin-top: 30px;
         }
         .price_font_detail {
         font-family: jua;
         font-size: 35px;
         padding-left: 30px;
         }
         .user_image_detail {
         object-fit: cover;
         float: left;
         margin-top: 10px;
         box-shadow: 0 6px 6px 0 rgba(0, 0, 0, 0.2);
         height: 150px;
         }
         .user_title_text {
         margin-top: 10px;
         font-size: 20px;
         font-family: 'Noto Sans KR', sans-serif;
         }
         .user_status_div_detail {
         text-align: center;
         }
         .user_status_detail {
         border-right: 1px solid #c9c8c6;
         font-family: jua;
         font-size: 18px;
         padding-left: 10px;
         }
         .user_star_detail {
         margin-bottom: 25px;
         padding-left: 30px;
         }
         .buy_text_detail {
         font-family: jua;
         float: left;
         margin-right: 4.5rem;
         font-size: 22px;
         }
         .time {
         margin: 0;
         padding: 0;
         float: right;
         }
         .buy_button_detail {
         background-color: white;
         border: 1px solid #c9c8c6;
         }
         .buy_number_detail {
         font-family: jua;
         font-size: 20px;
         margin: 2px;
         }
         .buy_arrow_detail {
         border: 1px solid #c9c8c6;
         }
         .buy_option_detail {
         padding: 20px;
         padding-bottom: 10px;
         }
         .buy_button2_detail {
         margin-top: 40px;
         }
         img {
         object-fit: contain;
         }
         .inputValue {
         border: none;
         width: 30px;
         margin-left: 10px;
         }
         /* 인증이 안되어었을 때 기본적으로 회색 */
         .iclass1 {
         color: var(--color-light-grey);
         font-size: 4.5rem;
         }
         .iclass2 {
         font-family: 'jua';
         font-size: 1.7rem;
         color: var(--color-light-grey);
         }
         /* 손바닥 사진 */
         .main_rank_index {
         width: 18px;
         height: 27px;
         object-fit: cover;
         }
         /* 반응형 없애기 */
         @media (min-width: 0px) {
         .container {
         width: 1170px;
         }
         }
         .container-fluid {
         padding-right: 15px;
         padding-left: 15px;
         margin-right: auto;
         margin-left: auto;
         }
         .row {
         margin-right: -15px;
         margin-left: -15px;
         }
         .col-xs-1,
         .col-sm-1,
         .col-md-1,
         .col-lg-1,
         .col-xs-2,
         .col-sm-2,
         .col-md-2,
         .col-lg-2,
         .col-xs-3,
         .col-sm-3,
         .col-md-3,
         .col-lg-3,
         .col-xs-4,
         .col-sm-4,
         .col-md-4,
         .col-lg-4,
         .col-xs-5,
         .col-sm-5,
         .col-md-5,
         .col-lg-5,
         .col-xs-6,
         .col-sm-6,
         .col-md-6,
         .col-lg-6,
         .col-xs-7,
         .col-sm-7,
         .col-md-7,
         .col-lg-7,
         .col-xs-8,
         .col-sm-8,
         .col-md-8,
         .col-lg-8,
         .col-xs-9,
         .col-sm-9,
         .col-md-9,
         .col-lg-9,
         .col-xs-10,
         .col-sm-10,
         .col-md-10,
         .col-lg-10,
         .col-xs-11,
         .col-sm-11,
         .col-md-11,
         .col-lg-11,
         .col-xs-12,
         .col-sm-12,
         .col-md-12,
         .col-lg-12 {
         position: relative;
         min-height: 1px;
         padding-right: 15px;
         padding-left: 15px;
         }
         .col-xs-1,
         .col-xs-2,
         .col-xs-3,
         .col-xs-4,
         .col-xs-5,
         .col-xs-6,
         .col-xs-7,
         .col-xs-8,
         .col-xs-9,
         .col-xs-10,
         .col-xs-11,
         .col-xs-12 {
         float: left;
         }
         .col-xs-12 {
         width: 100%;
         }
         .col-xs-11 {
         width: 91.66666667%;
         }
         .col-xs-10 {
         width: 83.33333333%;
         }
         .col-xs-9 {
         width: 75%;
         }
         .col-xs-8 {
         width: 66.66666667%;
         }
         .col-xs-7 {
         width: 58.33333333%;
         }
         .col-xs-6 {
         width: 50%;
         }
         .col-xs-5 {
         width: 41.66666667%;
         }
         .col-xs-4 {
         width: 33.33333333%;
         }
         .col-xs-3 {
         width: 25%;
         }
         .col-xs-2 {
         width: 16.66666667%;
         }
         .col-xs-1 {
         width: 8.33333333%;
         }
         .col-xs-pull-12 {
         right: 100%;
         }
         .col-xs-pull-11 {
         right: 91.66666667%;
         }
         .col-xs-pull-10 {
         right: 83.33333333%;
         }
         .col-xs-pull-9 {
         right: 75%;
         }
         .col-xs-pull-8 {
         right: 66.66666667%;
         }
         .col-xs-pull-7 {
         right: 58.33333333%;
         }
         .col-xs-pull-6 {
         right: 50%;
         }
         .col-xs-pull-5 {
         right: 41.66666667%;
         }
         .col-xs-pull-4 {
         right: 33.33333333%;
         }
         .col-xs-pull-3 {
         right: 25%;
         }
         .col-xs-pull-2 {
         right: 16.66666667%;
         }
         .col-xs-pull-1 {
         right: 8.33333333%;
         }
         .col-xs-pull-0 {
         right: auto;
         }
         .col-xs-push-12 {
         left: 100%;
         }
         .col-xs-push-11 {
         left: 91.66666667%;
         }
         .col-xs-push-10 {
         left: 83.33333333%;
         }
         .col-xs-push-9 {
         left: 75%;
         }
         .col-xs-push-8 {
         left: 66.66666667%;
         }
         .col-xs-push-7 {
         left: 58.33333333%;
         }
         .col-xs-push-6 {
         left: 50%;
         }
         .col-xs-push-5 {
         left: 41.66666667%;
         }
         .col-xs-push-4 {
         left: 33.33333333%;
         }
         .col-xs-push-3 {
         left: 25%;
         }
         .col-xs-push-2 {
         left: 16.66666667%;
         }
         .col-xs-push-1 {
         left: 8.33333333%;
         }
         .col-xs-push-0 {
         left: auto;
         }
         .col-xs-offset-12 {
         margin-left: 100%;
         }
         .col-xs-offset-11 {
         margin-left: 91.66666667%;
         }
         .col-xs-offset-10 {
         margin-left: 83.33333333%;
         }
         .col-xs-offset-9 {
         margin-left: 75%;
         }
         .col-xs-offset-8 {
         margin-left: 66.66666667%;
         }
         .col-xs-offset-7 {
         margin-left: 58.33333333%;
         }
         .col-xs-offset-6 {
         margin-left: 50%;
         }
         .col-xs-offset-5 {
         margin-left: 41.66666667%;
         }
         .col-xs-offset-4 {
         margin-left: 33.33333333%;
         }
         .col-xs-offset-3 {
         margin-left: 25%;
         }
         .col-xs-offset-2 {
         margin-left: 16.66666667%;
         }
         .col-xs-offset-1 {
         margin-left: 8.33333333%;
         }
         .col-xs-offset-0 {
         margin-left: 0;
         }
         /* 댓글 */
         .youComment {
         resize: none;
         margin-top: 10px;
         height: 100px;
         border: none;
         background-color: var(--color-white);
         font-family: 'Noto Sans KR', sans-serif;
         }
         .youComment1 {
         resize: none;
         margin-top: 10px;
         height: 50px;
         border: none;
         background-color: var(--color-light-white);
         font-family: 'Noto Sans KR', sans-serif;
         }
         .comment {
         text-align: justify;
         border: 1px solid var(--color-light-white);
         border-bottom: none;
         color: var(--color-light-grey);
         height: 120px;
         }
         .reply {
         text-align: justify;
         background-color: var(--color-light-white);
         height: 120px;
         }
         .buy_button1 {
         width: 1.7rem;
         height: 1.7rem;
         margin-bottom: 5px;
         }
         .buy_button:hover {
         cursor: pointer;
         opacity: 0.4;
         }
         .won {
         font-size: 18px;
         }
         .star1,
         .star2 {
         border: none;
         width: 30px;
         background-color: white;
         }
         /* 능력인증 → 영상링크 before 가상요소 */
         .video-link:before {
         content: attr(title);
         position: relative;
         left: -259px;
         font-size: 2rem;
         }
         /* input width 570px*/
         .input_master_2 {
         border: 0.2rem solid rgb(250, 190, 0);
         border-radius: 7px;
         height: 1.2em;
         width: 570px;
         font-size: 20px;
         margin-bottom: 15px;
         display: none;
         }
         /* ----------------------- */
         .hide-span-sgm {
         position: absolute;
         padding-left: 10px;
         padding-top: 5px;
         display: none;
         }
         .sample {
         margin-top: 100px;
         }
         /* 상뉴가 만든 class */
         .iconImgDetail {
         width: 7rem;
         height: 7rem;
         object-fit: cover;
         object-position: center;
         }
         .iconImgDetail:hover {
         cursor: pointer;
         opacity: 0.4;
         }
         .iconContainerDetail {
         display: inline-block;
         padding-right: 3rem;
         display: none;
         }
         /* ----------------- */
         .vedioContainer {
         display: none;
         }
         .subject {
         width: 300px;
         border-bottom: 1px solid #c9c8c6;
         }
         /* 채팅 아이콘 div */
         .chatIcon{
         position: fixed;
         bottom: 20px;
         right: 48px;
         width: 70px;
         height: 70px;
         /* background-color: orange; */
         background-color: var(--color-orange);
         border-radius: 50%;
         }
         .iconImg{
         object-fit: cover;
         width: 5rem;
         height: 5rem;
         margin-top: 11px;
         margin-left: 10px;
         }
         /* 화살표 */
         .arrow-up {
         position: fixed;
         bottom: 100px;
         right: 50px;
         width: 70px;
         height: 70px;
         font-size: 50px;
         color: var(--color-white);
         background-color: var(--color-orange);
         border-radius: 50%;
         opacity: 0;
         pointer-events: none;
         transition: opacity 300ms ease-in;
         }
         .arrow-up.visible {
         opacity: 1;
         pointer-events: auto;
         }
         /* 위치(맨 위) */
         .location{
         position: absolute;
         top:0px;
         left: 0px;
         }
         /* 모달 결제 버튼 */
         .buy{
         border: 1px solid #c9c8c6; 
         border-radius: 4px;
         padding: 8px 10px;
         }
         /* 아이프레임 푸터 */
         .ifooter{
         width: 100%; 
         height: 290px;
         }
         /* 모달 헤더 */
         .mdl{
         width: 420px;
         }
         /* 모달 타이틀 */
         .mt{
         text-align: center;
         }
         /* 모달 바디 */
         .mb{
         height: 300px;
         }
         /* 결제 방법 */
         .pm{
         width: 300px; 
         height: 80px;
         }
         /* 페딩 레프트 0 */
         .pl{
         padding-left: 0px;
         }
         /* 마진 탑 20px */
         .mt20{
         margin-top: 20px;
         }
         /* 위드 100% */
         .w100{
         width:100%;
         }
         /* 오버플로우 히든 */
         .ovhi{
         overflow: hidden;
         }
         /* 마진 라이트 12px */
         .mr12{
         margin-right: 12px;
         }
         /* 바로 구매 버튼 */
         .impu{
         background-color: var(--color-orange);
         }
         /* 구매기간에 있는 '일' */
         .day{
         margin:0; 
         padding-left: -10px; 
         float: right;
         }
         /* buy number detail */
         .bnd{
         width: 30px;
         }
         /* 포트폴리오 p태그 */
         .portfolio{
         font-family: jua; 
         font-size: 30px;
         }
         /* 자기 상품 및 소개 */
         .self{
         font-family: jua; 
         font-size: 30px;
         }
         /* 환불 관련 글 */
         .project__description4 ul li{
         font-size: 15px; 
         text-align: justify; 
         padding-left: 22px; 
         font-family: sans-serif;
         margin: 2px;
         }
         .project__description4 .refund_div{
         line-height: 26px;
         width: 690px;
         }
         .refund_h{
         font-weight: 900;
         }
         /* 댓글 별 위치 고정 시키기 */
         .starLocation2{
         position: absolute; 
         left: 130px;
         }
         /* 폰트사이즈 13 */
         .fs13{
         font-size: 13px;
         }
      </style>
   </head>
   <body>
      <!-- 인증 시 색깔 -->
      <input type="hidden" value="0" class="identified1">
      <input type="hidden" value="1" class="identified2">
      <input type="hidden" value="0" class="identified3">
      <input type="hidden" value="1" class="identified4">
      <input type="hidden" value="1" class="identified5">
      <!-- 가격 -->
      <input type="hidden" value="50000" class="price1">
      <!-- 시간 -->
      <input type="hidden" value="50000" class="time1">
      <!-- 인증 시 소셜미디어 보이기 -->
      <input type="hidden" value="1" class="social1">
      <input type="hidden" value="1" class="social2">
      <input type="hidden" value="1" class="social3">
      <input type="hidden" value="1" class="social4">
      <input type="hidden" value="1" class="social5">
      <input type="hidden" value="1" class="social6">
      <input type="hidden" value="0" class="social7">
      <%@ include file="../../common/header.jsp" %>
      <!-- Work -->
      <div class="container frame sample">
         <div class="row">
            <div class="col-xs-12 category_detail">
               <h3>웹개발 &gt; 프론트엔드 &gt; <u>HTML</u></h3>
            </div>
         </div>
         <div class="row">
            <div class="col-xs-8">
               <div class="row title_detail">
                  <div class="col-xs-7 title_text_detail">
                     <div class="row">
                        <div class="col-xs-12">
                           <h4 class="subject">[웹사이트 개발 유지보수]</h4>
                        </div>
                        <div class="col-xs-12">
                           <h4>웹개발,하이브리드앱,오류수정 유지보수</h4>
                        </div>
                     </div>
                  </div>
                  <div class="col-xs-4 title_img_div_detail">
                     <img class="title_img_detail img-rounded" src="./resources/img/1.png">
                  </div>
               </div>
               <div class="row">
                  <div class="col-xs-6">
                     <div class="row user_star_detail">
                        <div class="col-xs-4 pl">
                           <img src="./resources/img/cdm5.jpg" class="user_image_detail img-rounded">
                        </div>
                        <div class="col-xs-8">
                           <p class=" user_title_text"><img src="resources/img/lv1.png" class="main_rank_index">
                              지존파워동민 (<input type="text" value="3.9" class="star1">) 
                           </p>
                           <div id="rateYo"></div>
                           <div class="row mt20">
                              <div class="col-xs-offset-1 col-xs-5 user_status_detail">
                                 <p>7건</p>
                                 <p>판매실적</p>
                              </div>
                              <div class="col-xs-6 user_status_detail">
                                 <p>0건</p>
                                 <p>진행중작업</p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!----------------------------------------- 인증 ----------------------------------------->
                  <div class="col-xs-6 price_div_detail container_fluid" data-toggle="tooltip" data-placement="bottom"
                     id="bottom" title="인증이 되었다면 오렌지색으로 나타냅니다.">
                     <span class="price_font_detail" id="price"></span><span class="won">원/시간당</span>
                     <div class="row iclass1">
                        <span class="col-xs-offset-1 i1">
                        <i class="far fa-address-card"></i>
                        </span>
                        <span class="i2">
                        <i class="fas fa-briefcase"></i>
                        </span>
                        <span class="i3">
                        <i class="fas fa-graduation-cap"></i>
                        </span>
                        <span class="i4">
                        <i class="fas fa-medal"></i>
                        </span>
                        <span class="i5">
                        <i class="fas fa-trophy"></i>
                        </span>
                     </div>
                     <div class="row iclass2">
                        <span class="col-xs-offset-1 i1">
                        본인인증
                        </span>
                        <span class="i2">
                        경력인증
                        </span>
                        <span class="i3">
                        학력인증
                        </span>
                        <span class="i4">
                        자격인증
                        </span>
                        <span class="i5">
                        수상인증
                        </span>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-xs-12">
                     <section id="work" class="section">
                        <!-- 버튼 -->
                        <div class="container w100"></div>
                        <div class="work__categories">
                           <button class="category__btn selected" data-link="#sellerInformation">
                           판매자정보
                           </button>
                           <button class="category__btn" data-link="#introduction">
                           소개
                           </button>
                           <button class="category__btn" data-link="#description">
                           상세설명
                           </button>
                           <button class="category__btn" data-link="#refundPolicy">
                           환불 규정
                           </button>
                           <button class="category__btn" data-link="#performanceEvaluation">
                           실적/평가
                           </button>
                        </div>
                        <!-- 내용 -->
                        <div class="work__projects">
                           <!-- 판매자 정보 -->
                           <div class="project n1" target="blank" id="sellerInformation">
                              <div class="project__description1">
                                 <h3>ABOUT</h3>
                                 <hr class="container col-xs-10 col-xs-offset-1">
                                 <div class="row">
                                    <div class="col-xs-10 col-xs-offset-1">
                                       <p class="portfolio">포트폴리오(상품관련)</p>
                                       <p>Lorem ipsum, dolor sit amet consectetur
                                          adipisicing elit. Asperiores a quo eos tempore molestiae
                                          rerum possimus laborum, magnam odit impedit molestias,
                                          quaerat eaque perferendis quas! Ducimus ut nobis molestiae
                                          illo.
                                       </p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- 소개 -->
                           <div class="project n2" target="blank" id="introduction">
                              <div class="project__description2">
                                 <h3>소개</h3>
                                 <div>
                                    <!-- 소셜 미디어 -->
                                    <li>
                                       <div class="social-media" title="소셜미디어">
                                          <div class="iconContainerDetail s1">
                                             <img src="resources/img/instagram.png" class="iconImgDetail">
                                          </div>
                                          <div class="iconContainerDetail s2">
                                             <img src="resources/img/twitter.png" class="iconImgDetail">
                                          </div>
                                          <div class="iconContainerDetail s3">
                                             <img src="resources/img/blog.png" class="iconImgDetail">
                                          </div>
                                          <div class="iconContainerDetail s4">
                                             <img src="resources/img/git.png" class="iconImgDetail">
                                          </div>
                                       </div>
                                       <hr>
                                       <div class="video-link">
                                          <div class="vedioContainer s5">
                                             <iframe width="560" height="315"
                                                src="https://www.youtube.com/embed/pj9eGdPXpUE"
                                                frameborder="0"
                                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                                allowfullscreen></iframe>
                                          </div>
                                       </div>
                                       <div class="video-link">
                                          <div class="vedioContainer s6">
                                             <iframe width="560" height="315"
                                                src="https://www.youtube.com/embed/pj9eGdPXpUE"
                                                frameborder="0"
                                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                                allowfullscreen></iframe>
                                          </div>
                                       </div>
                                       <div class="video-link">
                                          <div class="vedioContainer s7">
                                             <iframe width="560" height="315"
                                                src="https://www.youtube.com/embed/pj9eGdPXpUE"
                                                frameborder="0"
                                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                                allowfullscreen></iframe>
                                          </div>
                                       </div>
                                    </li>
                                 </div>
                              </div>
                           </div>
                           <!-- 상세설명 -->
                           <div class="project n3" target="blank" id="description">
                              <div class="project__description3">
                                 <h3>자기소개 및 상품소개</h3>
                                 <img src="./resources/img/web_design.png" width="60%" height="150px">
                                 <hr class="container col-xs-12 ">
                                 <div class="row">
                                    <div class="col-xs-12">
                                       <p class="self">자기소개 및 상품소개</p>
                                    </div>
                                 </div>
                                 <div class="row">
                                    <div class="col-xs-10 col-xs-offset-1">
                                       <p>
                                          Lorem ipsum, dolor sit amet
                                          consectetur
                                          adipisicing elit. Asperiores a quo eos tempore molestiae
                                          rerum possimus laborum, magnam odit impedit molestias,
                                          quaerat eaque perferendis quas! Ducimus ut nobis molestiae
                                          illo.
                                       </p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- 환불규정 -->
                           <div class="project n4" id="refundPolicy" target="blank">
                              <div class="project__description4">
                                 <h3>환불 규정</h3>
                                 <div class="refund_div">
                                    <ul>
                                       <li class="refund_h">01. 작업 시작 전 100% 환불 가능합니다.</li>
                                       <li>  (작업 시작 후에도 결과물이 완성되지 않았을 경우에는 100% 환불 가능합니다.)</li>
                                       <li class="refund_h">02. 판매자의 사정으로 작업이 약속했던 일자보다 지연되거나 그에 상응하는 사안이 발생하였을 경우</li>
                                       <li class="refund_h">진행한 작업 건수 또는 작업 노출 일수를 계산하여 제외한 금액을 환불 가능합니다.</li>
                                       <li>  (1) 작업 건수 환불금액 = 결제금액 - (진행한 작업 건수 × 건단가)</li>
                                       <li>  (2) 작업 노출 기간 환불금액 = 결제금액 ÷ 30일 × 작업 노출되지 않은 일수</li>
                                       <li class="refund_h">03. 협의기간, 작업 기간, 광고기간에 따른 환불 규정</li>
                                       <li>  - 전문가가 작업을 시작하기 전, 의뢰인과 작업 일정 및 가능 여부를 논의하는 '협의기간'에는 100% 환불가능합니다.</li>
                                       <li>  - 사전 협의된 광고기간(노출 기간)에는 작업건수/노출기간에 따라 환불 금액이 산출됩니다.</li>
                                       <li>  (단, 의뢰인의 과실이나 단순 변심, 광고 매체 규제 등으로 인한 불이익은 환불이 불가)</li>
                                       <li class="refund_h">04. 컨설팅·노하우 강의 및 자료, 솔루션 등 서비스 상품을 받은 이후에는 환불이 불가합니다.</li>
                                       <li class="refund_h">05. 이메일 · 메시지 (솔루션 포함) 발송 이후에는 환불이 불가합니다.</li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                           <!-- 실적/평가 -->
                           <div class="project n5" id="performanceEvaluation" target="blank">
                              <div class="project__description5">
                                 <h3>지존파워동민 님의 실적</h3>
                                 <div>
                                    <p>
                                       누적 주문 건수 : 7건<br> 누적 거래액 : 245,000원
                                    </p>
                                    <h3>지존파워동민 님의 평가</h3>
                                    <!-- 댓글 하나 -->
                                    <div class="col-xs-offset-1 col-xs-10 comment">
                                       <div class="row">
                                          <div class="col-xs-4">
                                             <span>
                                                <div id="commentStar1"></div>
                                             </span>
                                          </div>
                                          <div class="starLocation2">
                                             <input type="text" value="1.6" class="star2" id="star1">
                                          </div>
                                          <div class="pull-right">
                                             <span>찐유니짱이다 20.10.16</span>
                                          </div>
                                       </div>
                                       <textarea class="col-xs-12 youComment" disabled>지존파워동민님에게 웹 개발을 맡기니 파이널 프로젝트를 쉽게 끝낼 수가 있었습니다.
                                                        </textarea>
                                    </div>
                                    <div class="col-xs-offset-1 col-xs-10 reply">
                                       <p class=" user_title_text"><img src="resources/img/cdm5.jpg"
                                          class="main_rank_index"> 지존파워동민
                                          <span
                                             class="pull-right fs13">20.10.17</span>
                                       </p>
                                       <textarea class="col-xs-12 youComment1" disabled>찐유니짱님 말씀 감사합니다. 다음에 또 맡기시면 엄청나게 저렴한 가격에 해드리겠습니다.
                                                        </textarea>
                                       <br>
                                    </div>
                                    <!-- 댓글 하나 -->
                                    <div class="col-xs-offset-1 col-xs-10 comment">
                                       <div class="row">
                                          <div class="col-xs-4">
                                             <span>
                                                <div id="commentStar2"></div>
                                             </span>
                                          </div>
                                          <div class="starLocation2">
                                             <input type="text" value="2.6" class="star2" id="star2">
                                          </div>
                                          <div class="pull-right">
                                             <span>찐유니짱이다 20.10.16</span>
                                          </div>
                                       </div>
                                       <textarea class="col-xs-12 youComment" disabled>지존파워동민님에게 웹 개발을 맡기니 파이널 프로젝트를 쉽게 끝낼 수가 있었습니다.
                                                        </textarea>
                                    </div>
                                    <div class="col-xs-offset-1 col-xs-10 reply">
                                       <p class=" user_title_text"><img src="resources/img/cdm5.jpg"
                                          class="main_rank_index"> 지존파워동민
                                          <span
                                             class="pull-right fs13">20.10.17</span>
                                       </p>
                                       <textarea class="col-xs-12 youComment1" disabled>찐유니짱님 말씀 감사합니다. 다음에 또 맡기시면 엄청나게 저렴한 가격에 해드리겠습니다.
                                                        </textarea>
                                       <br>
                                    </div>
                                    <!-- 댓글 하나 -->
                                    <div class="col-xs-offset-1 col-xs-10 comment">
                                       <div class="row">
                                          <div class="col-xs-4">
                                             <span>
                                                <div id="commentStar3"></div>
                                             </span>
                                          </div>
                                          <div class="starLocation2">
                                             <input type="text" value="4.6" class="star2" id="star3">
                                          </div>
                                          <div class="pull-right">
                                             <span>찐유니짱이다 20.10.16</span>
                                          </div>
                                       </div>
                                       <textarea class="col-xs-12 youComment" disabled>지존파워동민님에게 웹 개발을 맡기니 파이널 프로젝트를 쉽게 끝낼 수가 있었습니다.
                                                        </textarea>
                                    </div>
                                    <div class="col-xs-offset-1 col-xs-10 reply">
                                       <p class=" user_title_text"><img src="resources/img/cdm5.jpg"
                                          class="main_rank_index"> 지존파워동민
                                          <span
                                             class="pull-right fs13">20.10.17</span>
                                       </p>
                                       <textarea class="col-xs-12 youComment1" disabled>찐유니짱님 말씀 감사합니다. 다음에 또 맡기시면 엄청나게 저렴한 가격에 해드리겠습니다.
                                                        </textarea>
                                       <br>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </section>
                  </div>
               </div>
            </div>
            <!-- 우측 가격 -->
            <div class="col-xs-3 buy_div_detail">
               <div class="row">
                  <!-- 시간당 요금 -->
                  <div class="buy_option_detail">
                     <br>
                     <p class="buy_text_detail">시간당 요금</p>
                     <span class="price_font_detail" id="price1"></span>
                     <span class="won">원</span>
                  </div>
                  <!-- 구매 시간 -->
                  <div class="buy_option_detail">
                     <p class="buy_text_detail">구매 시간</p>
                     <span id="buy_timebutton_down_detail" class="buy_button">
                     <img src="resources/img/left_button_sgm.png" class="buy_button1">
                     </span>
                     <span class="buy_number_detail">
                     <input type="text" value="1" class="inputValue" id="buy_time_detail"></input>
                     </span>
                     <span id="buy_timebutton_up_detail" class="buy_button">
                     <img src="resources/img/right_button_sgm.png" class="buy_button1">
                     </span>
                     <p class="buy_text_detail time">시간</p>
                  </div>
                  <!-- 구매 기간 -->
                  <div class="buy_option_detail">
                     <p class="buy_text_detail">구매 기간</p>
                     <span id="buy_daybutton_down_detail" class="buy_button">
                     <img src="resources/img/left_button_sgm.png" class="buy_button1">
                     </span>
                     <span class="buy_number_detail bnd">
                     <input type="text" value="1" class="inputValue" id="buy_day_detail"></input>
                     </span>
                     <span id="buy_daybutton_up_detail" class="buy_button">
                     <img src=" resources/img/right_button_sgm.png" class="buy_button1">
                     </span>
                     <p class="buy_text_detail day">일</p>
                  </div>
                  <div class="col-xs-12 buy_button2_detail">
                     <!-- Button trigger modal -->
                     <button type="button" class="btn button1 btn-block impu" data-toggle="modal" id="click1"
                        data-target="#myModal">
                     바로 구매
                     </button>
                     <br>
                     <button type="button" class="button1 chatting mr12">채팅</button>
                     <button type="button" class="button1 zzim ovhi">
                     <i class="far fa-heart"></i>
                     <i class="fas fa-heart"></i> 찜</button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <br>
      <!-- Modal -->
      <div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-lg mdl">
            <div class="modal-content">
               <form>
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">×</span></button>
                     <h4 class="modal-title mt" id="myModalLabel" href="" >주문/ 결제하기</h4>
                  </div>
                  <div class="modal-body mb">
                     <div class="col-xs-offset-1">
                        주문 합계 : <span class="sum"></span><span>원</span><br><br>
                        지시사항<br>
                        <input id="order" type="text" class="pm"></input><br><br>
                        결제수단<br>
                        <input id="card" type="radio" name="check" value="creaditCard"> <label for="card">
                        신용카드</label><br>
                        <input id="money" type="radio" name="check" value="dwb"> <label for="money"> 무통장
                        입금</label><br>
                        <input id="kakao" type="radio" name="check" value="kakaoPay"> <label for="kakao">
                        카카오페이</label><br>
                     </div>
                  </div>
                  <div class="modal-footer">
                     <input type="checkbox" id="promiseCheck"> 약관에 동의 합니다
                     <button type="button" class="button1 buy"
                        >결제하기</button>
                  </div>
               </form>
            </div>
         </div>
      </div>
      <!-- 화살표 -->
      <button class="arrow-up">
      <i class="fas fa-arrow-up"></i>
      </button>
      <!-- 채팅아이콘 -->
      <div class="chatIcon font_jua">
         <img src="./resources/img/chat-icon.png" class="iconImg">
      </div>
      <!-- 위치 -->
      <div class="location"></div>
      <!-- 임시 풋터 아이프레임 -->
      <%@ include file="../../common/footer.jsp" %>
      <script>
         // 상수
         const workBtnContainer = document.querySelector('.work__categories');
         const ProjectContainer = document.querySelector('.work__projects');
         const Projects = document.querySelectorAll('.project');
         const upup = document.querySelector('.category_detail');
         const upHeight = upup.getBoundingClientRect().height;
         
         // 스크롤
         workBtnContainer.addEventListener('click', (event) => {
             const target = event.target;
             const link = target.dataset.link;
             if (link == null) {
                 return;
             }
             workBtnContainer.classList.remove('open');
             console.log(event.target.dataset.link);
             scrollIntoView(link);
         });
         
         // 화살표 보이기
         const arrowUp = document.querySelector('.arrow-up');
         document.addEventListener('scroll', () => {
             if (window.scrollY > upHeight / 2) {
                 arrowUp.classList.add('visible');
             } else {
                 arrowUp.classList.remove('visible');
             }
         });
         
         // 화살표 버튼
         arrowUp.addEventListener('click', () => {
             scrollIntoView('.location');
         });
         
         // 스크롤 부드럽게 움직이는 함수
         function scrollIntoView(selector) {
             const scrollTo = document.querySelector(selector);
             scrollTo.scrollIntoView({ behavior: 'smooth' });
         }
         
         (function () {
             // 인증
             var iden = [$(".identified1").val(),
             $(".identified2").val(),
             $(".identified3").val(),
             $(".identified4").val(),
             $(".identified5").val()]
         
             for (i = 0; i < iden.length; i++) {
                 var name = ".i" + (i + 1);
                 if (iden[i] == 1) {
                     $(name).css("color", "var(--color-orange)");
                 }
             }
         
             // 소셜 미디어 보이기
             var social = [$(".social1").val(),
             $(".social2").val(),
             $(".social3").val(),
             $(".social4").val(),
             $(".social5").val(),
             $(".social6").val(),
             $(".social7").val()]
         
             for (i = 0; i < social.length; i++) {
                 var name = ".s" + (i + 1);
                 if (social[i] == 1) {
                     $(name).css("display", "inline");
                 }
             }
         
             // 반복문으로 별 만들어보기
             for (var i = 0; i < 3; i++) {
                 var mDiv = document.createElement("div");
                 var iValue = document.getElementById("star"+(i+1)).value;
                 mDiv.id = "commentStar" + i;
                 // mDiv.className = "starStar";
                 // $(".star").append(mDiv);
                 console.log(mDiv);
                 console.log(iValue);
             }
             console.log("---------------------------------------------------------")
             console.log(iValue.length);
             
             for (var i = 0; i < iValue.length; i++) {
                 var starRate= $("#commentStar"+(i+1)).rateYo({
                     rating: $("#star"+(i+1)).val(),
                     ratedFill: "#FABE00",
                     starWidth: "20px",
                     readOnly: true
                 });
             }
         
             // 별표
             $("#rateYo").rateYo({
                 rating: $(".star1").val(),
                 ratedFill: "#FABE00",
                 readOnly: true
             });
             
             // 구매 시간
             $('#buy_timebutton_down_detail').click(function () {
                 var num = $('#buy_time_detail').val();
         
                 if (num > 1) {
                     num--;
                     $('#buy_time_detail').val(num);
                 }
             });
         
             $('#buy_timebutton_up_detail').click(function () {
                 var num = $('#buy_time_detail').val();
         
                 if (num < 99) {
                     num++;
                     $('#buy_time_detail').val(num);
                 }
             });
         
             // 구매 기간
             $('#buy_daybutton_down_detail').click(function () {
                 var num = $('#buy_day_detail').val();
         
                 if (num > 1) {
                     num--;
                     $('#buy_day_detail').val(num);
                 }
             });
         
             $('#buy_daybutton_up_detail').click(function () {
                 var num = $('#buy_day_detail').val();
                 if (num < 99) {
                     num++;
                     $('#buy_day_detail').val(num);
                 }
             });
         }());
         
         // 콤마 찍기
         function addComma(num) {
             var regexp = /\B(?=(\d{3})+(?!\d))/g;
             return num.toString().replace(regexp, ',');
         }
         
         var num = $('.price1').val();
         $('#price').text(addComma(num));
         $('#price1').text(addComma(num));
         
         // 합계
         $('#click1').click(function () {
             var sum = ($('.price1').val() * $('#buy_time_detail').val()) * $('#buy_day_detail').val();
             $('.sum').text(addComma(sum));
         });
         
         // 채팅, 찜, 결제
         const chatting = document.querySelector('.chatting');
         const zzim = document.querySelector('.zzim');
         
         chatting.addEventListener('click', (e) => {
             alert("채팅 기능 구현 중입니다.");
         });
         
         var number = 1;
         $('.fas.fa-heart').css("display", "none");
         
         zzim.addEventListener('click', (e) => {
             if (number == 1) {
                 $('.fas.fa-heart').css("color", "var(--color-dark-pink)");
                 $('.zzim').css("color", "var(--color-dark-pink)");
                 $('.far.fa-heart').css("display", "none");
                 $('.fas.fa-heart').css("display", "inline");
         
                 number = 0;
                 alert("찜 되었습니다.");
         
             } else if (number == 0) {
         
                 alert("찜 해제 되었습니다.");
                 $('.far.fa-heart').css("color", "var(--color-black)");
                 $('.zzim').css("color", "var(--color-black)");
                 $('.fas.fa-heart').css("display", "none");
                 $('.far.fa-heart').css("display", "inline");
         
                 number = 1;
             };
         });
         
         // 결제 선택
         $(".buy").click(function () {
             if ($("#promiseCheck").is(":checked")) {
                 alert($('.sum').text());
         
                 // 지시사항
                 alert($("#order").val());
         
                 // 신용카드
                 if ($("#card").is(":checked")) {
                     alert("신용카드 선택되었습니다.");
                 }
         
                 // 무통장 입금
                 if ($("#money").is(":checked")) {
                     alert("무통장입금 선택되었습니다.")
                 }
         
                 //kakao
                 if ($("#kakao").is(":checked")) {
                     window.open("https://mockup-pg-web.kakao.com/v1/52c79c185c00b85b4a5e7fc28c64783ce29020633be8d2457a4f87f692f147d9/info", "_blank", "top=0", "left=200", "window.outerWidth=30", "window.outerHeight=30");
                 }
             } else {
                 alert("체크해주세요");
             }
         });
      </script>
   </body>
</html>