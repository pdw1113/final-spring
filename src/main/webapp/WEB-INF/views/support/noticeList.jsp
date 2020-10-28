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
      <!-- css파일 -->
      <link rel="stylesheet" type="text/css" href="./resources/css/noticeList.css">
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
                  <li onclick="location.href='noticeDetail.do'">
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
               <div id='search_div_notice'>
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
		      var id = "admin";
		      
		      $(document).on('click','#paging div',function(){
		          alert('페이징');
		      });
		      
		      $('#btn_search').click(function(){
		          alert('검색');
		      })
		
		      if(id=="admin"){
		         $('#search_div_notice').append("<input type='button' value='글 작성' class='input_design btn_search' id='btn_write_notice'/>");
		      }
		      
		       $('#btn_write_notice').click(function(){
		          $(location).attr('href',"noticeInsert.do");
		      })
		      
		      $('#a').click(function(){
		          location.href="customer_notice_detail.html";
		      })
      </script>
   </body>
</html>