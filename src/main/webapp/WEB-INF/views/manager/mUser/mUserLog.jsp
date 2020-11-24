<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- datePicker CDN -->
      <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet"
         type="text/css" />
      <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
      <!-- JUA 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
      <!--제이쿼리CDN-->
      <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
      <!-- css -->
	  <link rel="stylesheet" type="text/css" href="resources/css/mUserLog.css">
      <title>Document</title>
   </head>
   <body>
      <div class="header">
         <%@ include file="../common/mheader.jsp" %>
      </div>
      <div class="left-bar">
         <%@ include file="../common/mLeftBar.jsp" %>
      </div>
      <form action="mUserLog.do" method="post">
      <div class="section">
         <!-- 내용 안의 헤더 부분 -->
         <div class="mian-header">
            <div class="cate_Managerheader">회원 관리 > <U>개인정보 접속기록 조회</U></div>
            <div class="title_Managerheader">개인정보 접속기록 조회</div>
         </div>
         <div class="main-section">
            <div class="searchhbox_mUserLog">
               <!-- 검색 테이블 -->
               <table class="searchhbox_table_mUserLog">
                  <tr>
                     <!-- 검색어 -->
                     <td class="searchtable_title_mUserLog">검색어</td>
                     <td class="searchtable_content_mUserLog">
                        <div class="select_mybuylist">
                           <select class="bdbox_mUserLog" name="search_way">
                              <option value="email">이메일</option>
                              <option value="rank">등급</option>
                              <option value="name">이름</option>
                           </select>
                           <input type="text" class="searchtext_mUserLog" name="search_box"></input>
                        </div>
                     </td>
                  </tr>
                  <!-- 검색 기간 -->
                  <tr>
                     <td class="searchtable_title_mUserLog">검색기간</td>
                     <td>
                        <div class="datepicker_warp_mUserLog">
                           <div class="day_button_div_mUserLog">
                              <input type="date" class="dateform_mUserLog" id="datepre_ldetail" name="preday"> ~ <input type="date" class="dateform_mUserLog" name="postday" id="datepost_ldetail">
                              <div class="day_button_mUserLog">오늘</div>
                              <div class="day_button_mUserLog">7일</div>
                              <div class="day_button_mUserLog">15일</div>
                              <div class="day_button_mUserLog">1개월</div>
                              <div class="day_button_mUserLog">3개월</div>
                              <div class="day_button_mUserLog">6개월</div>
                               <input type="text" style="visibility: hidden;" name="buttonday" value="" id="buttonday"/>
                           </div>
                        </div>
                     </td>
                  </tr>
               </table>
            </div>
            <div class="Admin_grant_Managerheader ">
               <button class="seaerch_button_mUserLog" onclick="return clickbutton()">검색</button>
            </div>
            <!-- 검색결과 -->
            <div class="layoutSubbox_mUserLog">
               <table class="type07">
                  <caption class="caption_mUserLog"> 검색
                     <span class="caption_text_mUserLog">${count}</span>건
                  </caption>
                  <thead>
                     <tr>
                     	<th scope="cols">번호</th>
                        <th scope="cols">접속일시</th>
                        <th scope="cols">접속IP</th>
                        <th scope="cols">아이디/닉네임</th>
                        <th scope="cols">이름</th>
                        <th scope="cols">구분</th>
                     </tr>
                  </thead>
                  <tbody>
                  <c:if test="${empty ua}">
                  	<td id="long_table_mUserLog" colspan="6">데이터가 존재하지 않습니다.</td>
                  </c:if>
                  
                  <c:if test="${!empty ua}">
                  <c:forEach var="a" items="${ua}">
                     <tr>
                     	<td id="shot_table_mUserLog">${a.uAccessnum}</td>
                        <td id="long_table_mUserLog">${a.uAccessDate}</td>
                        <td id="long_table_mUserLog">${a.uIp}</td>
                        <td id="long_table_mUserLog">${a.uEmail}</td>                 
                        <td id="midle_table_mUserLog">${a.uName}</td>
                        <td id="midle_table_mUserLog">${a.uRankName}</td>
                     </tr>
                     </c:forEach>
                      <tr align="center" height="20" >
				<td colspan="6" class="paginations">
				<!-- [이전] -->
				<c:if test="${ pi.currentPage eq 1 }">
					<a style="cursor:default;">«</a>
				</c:if>
				<c:if test="${ pi.currentPage ne 1 }">
					<c:url var="before" value="mUserLog.do">
						<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
						<c:param name="count" value="${count}"/>
						<c:param name="buttonday" value="${buttonday}"/>
						<c:param name="preday" value="${preday}"/>
						<c:param name="postday" value="${postday}"/>
						<c:param name="search_way" value="${search_way}"/>
						<c:param name="search_box" value="${search_box}"/>
					</c:url>
					<a href="${ before }">«</a>
				</c:if>
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq pi.currentPage }">
						<a style="background-color: #FABE00; color: white; cursor:default;">${ p }</a>
					</c:if>
					
					<c:if test="${ p ne pi.currentPage }">
						<c:url var="WalletPagination" value="mUserLog.do">
						<c:param name="currentPage" value="${ p }"/>
						<c:param name="count" value="${count}"/>
						<c:param name="buttonday" value="${buttonday}"/>
						<c:param name="preday" value="${preday}"/>
						<c:param name="postday" value="${postday}"/>
						<c:param name="search_way" value="${search_way}"/>
						<c:param name="search_box" value="${search_box}"/>
						</c:url>
						<a href="${ WalletPagination }">${ p }</a>
					</c:if>
				</c:forEach>
				
				<!-- [다음] -->
				<c:if test="${ pi.currentPage eq pi.maxPage }">
					<a style="cursor:default;">»</a>
				</c:if>
				<c:if test="${ pi.currentPage ne pi.maxPage }">
					<c:url var="after" value="mUserLog.do">
						<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
						<c:param name="count" value="${count}"/>
						<c:param name="buttonday" value="${buttonday}"/>
						<c:param name="preday" value="${preday}"/>
						<c:param name="postday" value="${postday}"/>
						<c:param name="search_way" value="${search_way}"/>
						<c:param name="search_box" value="${search_box}"/>
					</c:url> 
					<a href="${ after }" >»</a>
				</c:if>
			</td>
		</tr>
		</c:if>
                  </tbody>
               </table>
            </div>
         </div>
      </div>
    </form>
      <script>  
         $('.day_button_mUserLog').click(function(){
        	 
          $('#datepre_ldetail, #datepost_ldetail').val("");
        	  
       	 if($(this).text()=='오늘'){
       		 $("#buttonday").val("1");
       	 }else if($(this).text()=='7일'){
       		 $("#buttonday").val("2");
       	 }else if($(this).text()=='15일'){
       		 $("#buttonday").val("3");
       	 }else if($(this).text()=='1개월'){
       		 $("#buttonday").val("4");
       	 }else if($(this).text()=='3개월'){
       		$("#buttonday").val("5");
       	 }else if($(this).text()=='6개월'){
       		$("#buttonday").val("6");
       	 }
       	 
            $('.day_button_mUserLog').css('background-color','white');
            $(this).css('background-color','rgb(219, 219, 219)');
            
        });
         
         $('#datepre_ldetail, #datepost_ldetail').click(function(){
        	 $('.day_button_mUserLog').css('background-color','white');
        	 $("#buttonday").val("");
         });
         
       	function clickbutton(){
       		if($('#datepre_ldetail').val()>$('#datepost_ldetail').val()){
       			alert("잘못된 날짜 정보입니다.");
       			return false;
       		}else if($('#datepre_ldetail').val()==""&&$('#datepost_ldetail').val()!=""){
       			alert("잘못된 날짜 정보입니다.");
       			return false;
       		}else if($('#datepre_ldetail').val()!=""&&$('#datepost_ldetail').val()==""){
       			alert("잘못된 날짜 정보입니다.");
       			return false;
       		}else{
       			return true;
       		}
       	}
      </script>
   </body>
</html>