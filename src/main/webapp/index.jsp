<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <title>Slide Project</title>
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
      <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
      <style>
         html, body { padding: 0; margin: 0; width:100%; height:100%}
         *, *:before, *:after { box-sizing: inherit; }
         .clearfix:after { content: ''; display: block; clear: both; float: none; }
         .title { margin-bottom: 0; text-align: center; font-size: 30px; color: #333; }
         .link, .link:visited { display: inline-block; margin: 20px 0; color: #555; text-decoration: none; font-weight: bold; }
         .link:hover, .link:focus { color: #9fd6c2; }
         /* 슬라이드 내부 */
         #container { width: 1000px; margin: auto;}
         .slide_wrap { position: relative; width: 800px; margin: auto; /*padding-bottom: 30px;*/ }
         .slide_box { width: 100%; margin: auto; overflow-x: hidden; height: 400px; overflow-y: hidden; }
         .slide_content { display: table; float: left; width: 800px; height: 400px; }
         .slide_content > p { display: table-cell; vertical-align: middle; text-align: center; font-size: 20px; font-weight: bold; color: #555;  }
         /* 슬라이드 좌우버튼 */
         .slide_btn_box > button { position: absolute; top: 50%; margin-top: -45px; width: 60px; height: 60px; font-size: 30px; color: #999; background: none; border: 1px solid white; cursor: pointer; }
         .slide_btn_box > .slide_btn_prev { left: -100px; }
         .slide_btn_box > .slide_btn_next { right: -100px; }
         /* 슬라이드 라디오 버튼 */
         .slide_pagination { position: absolute; display:flex; top : 415px; left: 20%; bottom: 0; list-style: none; margin: 0; padding: 0; transform: translateX(-100%); }
         .slide_pagination .dot { display: inline-block; width: 15px; height: 15px; margin: 0 5px; overflow: hidden; background: #ddd; border-radius: 50%; transition: 0.3s; }
         .slide_pagination .dot.dot_active { background: #333; }
         .slide_pagination .dot a { display: block; width: 100%; height: 100%; }
         /* 인피니티 능력자들 타이틀 */
         .slide_p{ font-family: 'Black Han Sans'; color : rgb(250,190,0); font-size: 20px; margin :10px 10px 10px; }
         .slide_grade_Nav{ width: 20px; height: 33px;}
         /* 슬라이드 폰트 */
         .type_text1 { font-family: 'Black Han Sans', sans-serif; top: 0px; left: 0px; position: relative; width:400px; height:400px;}
      </style>
   </head>
   <body>
      <!-- header 영역 -->
      <%@ include file="WEB-INF/views/common/header.jsp" %>
      <!-- 슬라이드 영역 -->
      <div id="container">
         <div class="slide_wrap">
            <!-- 슬라이드 타이틀 -->
            <img class="slide_grade_Nav" src="resources/img/lv6.png"><span class="slide_p">인피니티 능력자들</span>
            <div class="slide_box">
               <div class="slide_list clearfix">
                  <div class="slide_content slide01">
                     <p class="type_text1" style="font-size: 40px">
                        디테일부터 바로잡는<br>
                        일러스트 & 포토샵
                     </p>
                     <img src="resources/img/nha1.png"  width="400px" height="400px" style="object-fit: cover;">
                  </div>
                  <div class="slide_content slide02">
                     <p class="type_text1" style="font-size: 40px">스프링을 정복한 자<br>
                        스프링 프레임워크, 스프링 부트 등 쌉가능
                     </p>
                     <img src="resources/img/cdm1.png"  width="400px" height="400px" style="object-fit: cover;">
                  </div>
                  <div class="slide_content slide03">
                     <p class="type_text1" style="font-size: 40px">간지가 나는 천동민의<br>
                        리액트로 다 만들어드려요!
                     </p>
                     <img src="resources/img/cdm2.png"  width="400px" height="400px" style="object-fit: cover;">
                  </div>
                  <div class="slide_content slide04">
                     <p class="type_text1" style="font-size: 40px">타입스크립트?<br>
                        나 천동민에겐 껌이지
                     </p>
                     <img src="resources/img/cdm3.png"width="400px" height="400px" style="object-fit: cover;">
                  </div>
                  <div class="slide_content slide05">
                     <p class="type_text1" style="font-size: 40px">나처럼 간지나는 웹사이트<br>
                        천동민이 직접 만들어드립니다 
                     </p>
                     <img src="resources/img/cdm4.png" width="400px" height="400px" style="object-fit: cover;">
                  </div>
               </div>
            </div>
            <div class="slide_btn_box">
               <button type="button" class="slide_btn_prev"> < </button>
               <button type="button" class="slide_btn_next"> > </button>
            </div>
            <ul class="slide_pagination"></ul>
         </div>
      </div>
      <%@ include file="WEB-INF/views/common/nav.jsp" %>
      <%@ include file="WEB-INF/views/common/section.jsp" %>
      <%@ include file="WEB-INF/views/common/footer.jsp" %>
      <script>
         (function () {
           const slideList = document.querySelector('.slide_list');  // Slide parent dom
           const slideContents = document.querySelectorAll('.slide_content');  // each slide dom
           const slideBtnNext = document.querySelector('.slide_btn_next'); // next button
           const slideBtnPrev = document.querySelector('.slide_btn_prev'); // prev button
           const pagination = document.querySelector('.slide_pagination');
           const slideLen = slideContents.length;  // slide length
           const slideWidth = 800; // slide width
           const slideSpeed = 300; // slide speed
           const startNum = 0; // initial slide index (0 ~ 4)
           
           // 슬라이드 몇초에 한번씩 돌릴지
           setInterval(function(){
             nextimg();
               }, 8000);
         
         
           slideList.style.width = slideWidth * (slideLen + 2) + "px";
           
           // Copy first and last slide
           let firstChild = slideList.firstElementChild;
           let lastChild = slideList.lastElementChild;
           let clonedFirst = firstChild.cloneNode(true);
           let clonedLast = lastChild.cloneNode(true);
         
           // Add copied Slides
           slideList.appendChild(clonedFirst);
           slideList.insertBefore(clonedLast, slideList.firstElementChild);
         
           // Add pagination dynamically
           let pageChild = '';
           for (var i = 0; i < slideLen; i++) {
             pageChild += '<li class="dot';
             pageChild += (i === startNum) ? ' dot_active' : '';
             pageChild += '" data-index="' + i + '"><a href="#"></a></li>';
           }
           pagination.innerHTML = pageChild;
           const pageDots = document.querySelectorAll('.dot'); // each dot from pagination
         
           slideList.style.transform = "translate3d(-" + (slideWidth * (startNum + 1)) + "px, 0px, 0px)";
         
           let curIndex = startNum; // current slide index (except copied slide)
           let curSlide = slideContents[curIndex]; // current slide dom
           curSlide.classList.add('slide_active');
         
           /** Next Button Event */
           slideBtnNext.addEventListener('click', function() {
             if (curIndex <= slideLen - 1) {
               slideList.style.transition = slideSpeed + "ms";
               slideList.style.transform = "translate3d(-" + (slideWidth * (curIndex + 2)) + "px, 0px, 0px)";
             }
             if (curIndex === slideLen - 1) {
               setTimeout(function() {
                 slideList.style.transition = "0ms";
                 slideList.style.transform = "translate3d(-" + slideWidth + "px, 0px, 0px)";
               }, slideSpeed);
               curIndex = -1;
             }
             curSlide.classList.remove('slide_active');
             pageDots[(curIndex === -1) ? slideLen - 1 : curIndex].classList.remove('dot_active');
             curSlide = slideContents[++curIndex];
             curSlide.classList.add('slide_active');
             pageDots[curIndex].classList.add('dot_active');
           });
         
           function nextimg() {
             if (curIndex <= slideLen - 1) {
               slideList.style.transition = slideSpeed + "ms";
               slideList.style.transform = "translate3d(-" + (slideWidth * (curIndex + 2)) + "px, 0px, 0px)";
             }
             if (curIndex === slideLen - 1) {
               setTimeout(function() {
                 slideList.style.transition = "0ms";
                 slideList.style.transform = "translate3d(-" + slideWidth + "px, 0px, 0px)";
               }, slideSpeed);
               curIndex = -1;
             }
             curSlide.classList.remove('slide_active');
             pageDots[(curIndex === -1) ? slideLen - 1 : curIndex].classList.remove('dot_active');
             curSlide = slideContents[++curIndex];
             curSlide.classList.add('slide_active');
             pageDots[curIndex].classList.add('dot_active');
           }
         
         
           /** Prev Button Event */
           slideBtnPrev.addEventListener('click', function() {
             if (curIndex >= 0) {
               slideList.style.transition = slideSpeed + "ms";
               slideList.style.transform = "translate3d(-" + (slideWidth * curIndex) + "px, 0px, 0px)";
             }
             if (curIndex === 0) {
               setTimeout(function() {
                 slideList.style.transition = "0ms";
                 slideList.style.transform = "translate3d(-" + (slideWidth * slideLen) + "px, 0px, 0px)";
               }, slideSpeed);
               curIndex = slideLen;
             }
             curSlide.classList.remove('slide_active');
             pageDots[(curIndex === slideLen) ? 0 : curIndex].classList.remove('dot_active');
             curSlide = slideContents[--curIndex];
             curSlide.classList.add('slide_active');
             pageDots[curIndex].classList.add('dot_active');
           });
         
           /** 슬라이드 라디오버튼 */
           let curDot;
           Array.prototype.forEach.call(pageDots, function (dot, i) {
             dot.addEventListener('click', function (e) {
               e.preventDefault();
               curDot = document.querySelector('.dot_active');
               curDot.classList.remove('dot_active');
               
               curDot = this;
               this.classList.add('dot_active');
         
               curSlide.classList.remove('slide_active');
               curIndex = Number(this.getAttribute('data-index'));
               curSlide = slideContents[curIndex];
               curSlide.classList.add('slide_active');
               slideList.style.transition = slideSpeed + "ms";
               slideList.style.transform = "translate3d(-" + (slideWidth * (curIndex + 1)) + "px, 0px, 0px)";
             });
           });
         })();
      </script>
      <script type="text/javascript" src="resources/js/typeit.min.js"></script>
      <script type="text/javascript">
         $(function(){
           // var str1 = ["본 사이트는 KH 정보교육원", "수강생들을 위한 사이트로", "Spring 교육을 위한 사이트입니다."];
           // var str2 = ["누구나 할 수 있는<br>_Spring Framework와<br>_쉬운 웹 개발 노하우<br>_지금 바로 함께 하세요!!"];
           // var str3 = ["Hey, you!!<br>_Don't be hesitate,<br>_Right Now Start!!"];
           
           $('.type_text1').typeIt({
             // string:str1,
             html:true,
             autoStart:true,
             loop:true,
             typeSpeed:100
           })
           .tiPause(1500)
           .tiDelete(130)
           .tiType(str2)
           .tiPause(1700)
           .tiDelete(130)
           .tiType(str3)
           .tiPause(1700)
           .tiEmpty(); 
         
         });
      </script>
   </body>
</html>