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
      <link rel="stylesheet" type="text/css" href="./resources/css/noticeDetail.css">
   </head>
   <body>
   	<%@ include file="../common/header.jsp" %>
	<%@ include file="common/nav.jsp" %>
      <div class="notice_container">
         <div class="title_area">
            <h4 class="title_text">
               ${notice.nTitle}
            </h4>
            <span class="title_date">
            	${notice.nCdate}
            </span>
         </div>
         <div class="content_area">
            <div class="content_view">
        		${notice.nContent}
            </div>
            <div class="content_btn">
            
            <c:url var="noticeDetailback" value="noticeDetail.do">
				<c:param name="getNnum" value="${notice.nNum-1}" />
			</c:url>
			
			<c:url var="noticeDetailfront" value="noticeDetail.do">
				<c:param name="getNnum" value="${notice.nNum+1}" />
			</c:url>
               <a href="${noticeDetailback}" class="btn_design btn_move">이전</a>
               <a href="${noticeDetailfront}" class="btn_design btn_move">다음</a>
               <a href="noticeList.do" class="btn_design btn_list">목록</a>
            </div>
         </div>
      </div>
      <div>
      	<%@ include file="../common/footer.jsp" %>
      </div>
    <script>
    $(document).ready(function(){
    	var msg = "${msg}";
			if(msg!=""){
				alert(msg);
				if("${num}"==0){
					location.href="noticeDetail.do?getNnum="+"${num+1}"; 
				}else{
					location.href="noticeDetail.do?getNnum="+"${num-1}";
				}
			}
		});
    </script>
   </body>
</html>