<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <title>Slide Project</title>
      <!-- font -->
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Noto+Sans+KR:wght@900&display=swap" rel="stylesheet">
      
      <!-- JQuery -->
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
      
      <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
      <script type="text/javascript" src="resources/js/typeit.min.js"></script>
      <link rel="stylesheet" type="text/css" href="resources/css/index.css">
      <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
	  <link rel="icon" href="/favicon.ico" type="image/x-icon">
   </head>
   <body>
      <!-- header 영역 -->
      <%@ include file="common/header.jsp" %>
      <!-- 슬라이드 영역 -->
      <div id="container">
         <div class="slide_wrap">
            <!-- 슬라이드 타이틀 -->
            <div class="infinity-cover">
            	<img class="slide_grade_Nav" src="resources/img/lv6.png">
            	<span class="slide_p">인피니티 능력자들</span>
            </div>
            
            <div class="slide_box">
               <div class="slide_list clearfix">
                <c:if test="${!empty thanos }">
                <c:forEach var="th" items="${ thanos }" varStatus="status2">
                  <div class="slide_content slide01">
                     <p class="type_text1">
               				${th.content }
                     </p>
                     <img src="resources/masterImg/${th.thanosPicRe }" class="img_main_st">
                  </div>
                  </c:forEach>
                  </c:if> 
                  
                 <c:if test="${empty thanos }">
                  <div class="slide_content slide01">
                     <p class="type_text1">
               				전문가가 존재하지 않습니다.
                     </p>
                  </div>
				</c:if>
               </div>
            </div>
            
            <div class="slide_btn_box">
               <button type="button" class="slide_btn_prev"> < </button>
               <button type="button" class="slide_btn_next"> > </button>
            </div>
            <ul class="slide_pagination"></ul>
         </div>
      </div>
      <%@ include file="common/nav.jsp" %>
      <%@ include file="common/section.jsp" %>
      <%@ include file="common/footer.jsp" %>
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
   </body>
</html>