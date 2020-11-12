<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>구매내역</title>
      <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
      <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	  <link rel="stylesheet" type="text/css" href="resources/css/walletDetail.css">
   </head>
   <body>
   	  <!-- header 영역 -->
      <%@ include file="../../common/header.jsp" %>
      <!-- nav 영역 -->
      <%@ include file="../myPage/common/nav.jsp" %>
      <form action="walletDetail.do" method="POST">
      <div class="content_wdetail">
         <div class="dataInform_wdetail">
            <div class="layoutSubbox_wdetail">
             <div class="tit2_wdetail">니즈머니 상세조회</div>
             <!-- 검색 div -->
             <div class="pOrderSearch_wdetail">
                 <div class="sbox_wdetail">
                     <div class="select_wdetail">
                         <select class="bdbox_wdetail" name="search_way">
                             <option value="0" >전체</option>
                             <option value="1">충전</option>
                             <option value="2">출금</option>
                         </select>
                     </div>
                     <!-- 달력 -->
                     <div class="date_wdetail">
                        <input type="date" name="preday" class="datepre_wdetail">
                         <div class="space_wdetail">~</div>
                        <input type="date" name="postday" class="datepost_wdetail">
                     </div>
                     <!-- 검색 오늘 / 1주일 / 1개월 / 6개월 선택시 자동으로 datePicker에 입력되게 구현 필요 -->
                     <div class="period_wdetail">
                        <ul>
                           <li>
                              <div class="choice_wdetail">오늘</div>
                           </li>
                           <li>
                              <div class="choice_wdetail">1개월</div>
                           </li>
                           <li>
                              <div class="choice_wdetail">6개월</div>
                           </li>
                        </ul>
                     </div>
                     <input type="text" style="visibility: hidden;" name="buttonday" value="" id="buttonday"/>
                     
                     <div class="btn_align_wdetail">
                        <button class="btn_search_wdetail" onclick="return buttonclick();">검색</button>
                     </div>
                  </div>
               </div>
               <!-- 니즈머니 상세 리스트 시작 -->
               <table class="detail_wdetail">
                   <thead class="wthead_wdetail">
                       <tr>
                           <th>번호</th>
                           <th>결제일시</th>
                           <th>결제내역</th>
                           <th>결제금액</th>
                           <th>결제방식</th>
                       </tr>
                   </thead>
                   <tbody>
                    <c:forEach var="w" items="${uw}">
                       <tr>
                           <td id="short_wdetail">${w.wnum}</td>
                           <td>${w.wdate}</td>
                           <td id="long_mybuylist">${w.whistory}</td>
                           <td>${w.wmoney}</td>
                           <td>${w.wmethod}</td>
                       </tr>
                   </c:forEach>
                   
                <tr align="center" height="20">
			<td colspan="6">
			
				<!-- [이전] -->
				<c:if test="${ pi.currentPage eq 1 }">
					[이전] &nbsp;
				</c:if>
				<c:if test="${ pi.currentPage ne 1 }">
					<c:url var="before" value="walletDetail.do">
						<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
						<c:param name="buttonday" value="${buttonday}"/>
						<c:param name="preday" value="${preday}"/>
						<c:param name="postday" value="${postday}"/>
					</c:url>
					<a href="${ before }">[이전]</a> &nbsp;
				</c:if>
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq pi.currentPage }">
						<font color="red" size="4"><b>[${ p }]</b></font>
					</c:if>
					
					<c:if test="${ p ne pi.currentPage }">
						<c:url var="WalletPagination" value="walletDetail.do">
							<c:param name="currentPage" value="${ p }"/>
							<c:param name="buttonday" value="${buttonday}"/>
							<c:param name="preday" value="${preday}"/>
							<c:param name="postday" value="${postday}"/>
						</c:url>
						<a href="${ WalletPagination }">${ p }</a> &nbsp;
					</c:if>
				</c:forEach>
				
				<!-- [다음] -->
				<c:if test="${ pi.currentPage eq pi.maxPage }">
					[다음]
				</c:if>
				<c:if test="${ pi.currentPage ne pi.maxPage }">
					<c:url var="after" value="walletDetail.do">
						<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
							<c:param name="buttonday" value="${buttonday}"/>
							<c:param name="preday" value="${preday}"/>
							<c:param name="postday" value="${postday}"/>
					</c:url> 
					<a href="${ after }">[다음]</a>
				</c:if>
			</td>
		</tr>
                   </tbody>
               </table>
            </div>
         </div>
      </div>
    </form>
      <script>
         $('.choice_wdetail').click(function(){
        	 
        	 $('.datepre_wdetail').val("");
        	 $('.datepost_wdetail').val("");
        	 
        	 if($(this).text()=='오늘'){
        		 $("#buttonday").val("1");
        	 }else if($(this).text()=='1개월'){
        		 $("#buttonday").val("2");
        	 }else if($(this).text()=='6개월'){
        		 $("#buttonday").val("3");
        	 }
        	 
             $('.choice_wdetail').css('background-color',"#ddd");
             $('.datepre_wdetail, .datepost_wdetail').val("");
             $(this).css('background','rgb(250,190,0)');
             
         });
         
         $('.datepre_wdetail, .datepost_wdetail').click(function(){
        	 $('.choice_wdetail').css('background-color',"#ddd");
        	 $("#buttonday").val("");
         });
        
         function buttonclick(){
        	 if($("#buttonday").val()==""){
        		 if($(".datepre_wdetail").val()>$('.datepost_wdetail').val() || $(".datepre_wdetail").val()=="" || $('.datepost_wdetail').val()==""){
            		 alert("날짜 정보가 잘못 되었습니다.")
            		 return false;
            	 }else{
            		return true
            	 }
        	 }else{
        		return true
        	 }
         }
      </script>
      <!-- footer 영역 -->
      <%@ include file="../../common/footer.jsp" %>
   </body>
</html>