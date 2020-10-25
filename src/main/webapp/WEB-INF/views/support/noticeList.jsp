<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>공지사항</title>
      <!-- Noto-Sans 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
      <!-- JUA 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
      <!-- JQUERY-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
      <style type="text/css">
         body {
         font-family: "맑은 고딕";
         }
         /* jua 폰트 */
         .font_jua{
         font-family: 'Jua', sans-serif;
         }
         /* hanSans 폰트 */
         .font_hanSans {
         font-family: 'Black Han Sans', sans-serif;
         }
         /* noto 폰트 */
         .font_noto {
         font-family: 'Noto Sans KR', sans-serif;
         }
         ul,
         li {
         list-style: none;
         text-align: center;
         padding: 0;
         margin: 0;
         }
         /* 최고 부모 div */
         #mainWrapper {
         width: 82.7rem;
         line-height: 3rem;
         margin: 0 auto;
         /*가운데 정렬*/
         }
         /* 공지사항 리스트*/
         /* NO - 제목 - 작성일 - 작성자 - 조회수 */
         .ulTable>li:first-child>ul>li {
         background-color: rgb(250,190,0);
         font-weight: bold;
         text-align: center;
         }
         .ulTable>li>ul {
         clear: both;
         padding: 0px auto;
         position: relative;
         min-width: 40px;
         }
         .ulTable>li>ul>li {
         float: left;
         font-size: 1rem;
         border-bottom: 1px solid silver;
         vertical-align: baseline;
         }
         .ulTable>li>ul>li:nth-child(2):hover{
         cursor: pointer;
         font-weight: bold;
         }
         .ulTable>li>ul>li:first-child {
         width: 10%;
         }
         /*No 열 크기*/
         .ulTable>li>ul>li:first-child+li {
         width: 45%;
         }
         /*제목 열 크기*/
         .ulTable>li>ul>li:first-child+li+li {
         width: 20%;
         }
         /*작성일 열 크기*/
         .ulTable>li>ul>li:first-child+li+li+li {
         width: 15%;
         }
         /*작성자 열 크기*/
         .ulTable>li>ul>li:first-child+li+li+li+li {
         width: 10%;
         }
         /*조회수 열 크기*/
         .divPaging {
         clear: both;
         margin: 0 auto;
         width: 220px;
         height: 50px;
         }
         .divPaging div:hover{
         cursor: pointer;
         }
         .divPaging>div {
         float: left;
         width: 30px;
         margin: 1rem auto;
         text-align: center;
         }
         .SearchOption {
         clear: both;
         }
         .SearchOption>div {
         margin: 0 auto;
         margin-top: 2rem;
         width: auto;
         height: 100px;
         }
         .left {
         text-align: left;
         }
         .input_design{
         border: 2px solid;
         border-radius: 5px;
         padding: 0.5rem;
         }
         .btn_search{
         background-color: rgb(250,190,0);
         }
         .btn_search:hover{
         cursor: pointer;
         opacity: 0.6;
         }
      </style>
   </head>
   <body>
      <!-- 임시로 넣어놓은 헤더 아이프레임 -->
   	<%@ include file="../common/header.jsp" %>
	<%@ include file="common/nav.jsp" %>
      <div id="mainWrapper">
         <ul>
            <!-- 게시판 목록  -->
            <li>
               <ul class="ulTable">
                  <li>
                     <ul class="font_jua">
                        <li>No</li>
                        <li>제목</li>
                        <li>작성일</li>
                        <li>작성자</li>
                        <li>조회수</li>
                     </ul>
                  </li>
                  <!-- 게시물이 출력될 영역 -->
                  <li>
                     <ul>
                        <li>1</li>
                        <li class="left" id="a">천동벌거숭이에 대한 고찰</li>
                        <li>2014.07.09</li>
                        <li>천동민</li>
                        <li>0</li>
                     </ul>
                  </li>
                  <li>
                     <ul>
                        <li>2</li>
                        <li class="left">저는 갓혜란인데요 공지사항이 있습니다.</li>
                        <li>2014.07.09</li>
                        <li>문혜란</li>
                        <li>0</li>
                     </ul>
                  </li>
                  <li>
                     <ul>
                        <li>3</li>
                        <li class="left">피아노 쳐봤습니다. 들어주세요.</li>
                        <li>2014.07.09</li>
                        <li>이승백</li>
                        <li>0</li>
                     </ul>
                  </li>
                  <li>
                     <ul>
                        <li>4</li>
                        <li class="left">잉 기모링~~~ 모사꾼의 힘입니다~~</li>
                        <li>2014.07.09</li>
                        <li>조정호</li>
                        <li>0</li>
                     </ul>
                  <li>
               </ul>
            </li>
            <!-- 게시판 페이징 영역 -->
            <li>
               <div class="divPaging" id="paging">
                  <div>◀</div>
                  <div>1</div>
                  <div>2</div>
                  <div>3</div>
                  <div>4</div>
                  <div>5</div>
                  <div>▶</div>
               </div>
            </li>
            <!-- 검색 폼 영역 -->
            <li class='SearchOption'>
               <div>
                  <select id='selSearchOption' class="input_design">
                     <option value='A'>제목+내용</option>
                     <option value='T'>제목</option>
                     <option value='C'>내용</option>
                  </select>
                  <input id='txtKeyWord' class="input_design"/>
                  <input type='button' value='검색' class="input_design btn_search" id="btn_search"/>
               </div>
            </li>
         </ul>
      </div>
      <%@ include file="../common/footer.jsp" %>
      <script>
         $(document).on('click','#paging div',function(){
             alert('페이징');
         });
         
         $('#btn_search').click(function(){
             alert('검색');
         })
         
         $('#a').click(function(){
             location.href="customer_notice_detail.html";
         })
      </script>
   </body>
</html>