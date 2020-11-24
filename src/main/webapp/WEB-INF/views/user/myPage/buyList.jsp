<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>구매내역</title>
      <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
      <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	  <link rel="stylesheet" type="text/css" href="resources/css/buyList.css">
   </head>
   <body>
   	  <!-- header 영역 -->
      <%@ include file="../../common/header.jsp" %>
      <!-- nav 영역 -->
      <%@ include file="../myPage/common/nav.jsp" %>
       <form action="buyList.do" method="POST">
      <div class="content_mybuylist">
         <div class="dataInform_mybuylist">
            <div class="layoutSubbox_mybuylist">
               <div class="tit2_mybuylist">구매내역</div>
               <!-- 검색 div -->
               <div class="pOrderSearch_mybuylist">
                  <div class="sbox_mybuylist">
                     <div class="select_mybuylist">
                        <select class="bdbox_mybuylist" name="search_way">
                           <option value="">전체</option>
                           <option value="%Z">환불요청중</option>
                           <option value="%Y">환불완료</option>
                        </select>
                     </div>
                     <!-- 달력 -->
                     <div class="date_mybuylist">
                        <input type="date" name="preday" class="datepre_mybuylist" value="">
                         <div class="space_mybuylist">~</div>
                        <input type="date" name="postday" class="datepost_mybuylist" value="">
                     </div>
                     <!-- 검색 오늘 / 1주일 / 1개월 / 6개월 선택시 자동으로 datePicker에 입력되게 구현 필요 -->
                     <div class="period_mybuylist">
                        <ul>
                           <li>
                              <div class="choice_mybuylist">오늘</div>
                           </li>
                           <li>
                              <div class="choice_mybuylist">1개월</div>
                           </li>
                           <li>
                              <div class="choice_mybuylist">6개월</div>
                           </li>
                        </ul>
                     </div>
                     <input type="text" style="visibility: hidden;" name="buttonday" value="" id="buttonday"/>
                     
                     <div class="btn_align_mybuylist">
                        <button class="btn_search_mybuylist" onclick="return buttonclick();">검색</button>
                     </div>
                  </div>
               </div>
               <!-- 구매내역 리스트 시작 -->
               <table class="buylist_mybuylist">
                  <thead class="buythead_mybuylist">
                     <tr>
                        <th class="buyth_mybuylist">번호</th>
                        <th class="buyth_mybuylist">주문일시</th>
                        <th class="buyth_mybuylist">능력자 이름</th>
                        <th class="buyth_mybuylist">주문상품</th>
                        <th class="buyth_mybuylist">결제금액</th>
                        <th class="buyth_mybuylist">환불신청</th>
                     </tr>
                  </thead>
                  <tbody>
                   <c:if test="${empty ub}">
                   		<tr>
                           <td class="buytd_mybuylist" colspan="6" style="width: 1500px;">구매 내역이 없습니다.</td>
                   		</tr>
                   </c:if>
                   
                   <c:if test="${!empty ub}">
                   <c:forEach var="b" items="${ub}">
					<c:url var="refund" value="refund.do">
						<c:param name="refu" value="${b.num}"/>
					</c:url>
                     <tr>
                        <td class="buytd_mybuylist" id="short_mybuylist">${b.num}</td>
                        <td class="buytd_mybuylist">${b.date}</td>
                        <td class="buytd_mybuylist">${b.master}</td>
                        <td class="buytd_mybuylist"id="long_mybuylist">${b.title}</td>
                        <td class="buytd_mybuylist">${b.money}</td>
                       	   <c:choose>
	                             <c:when test="${b.refund eq 'Y'}">
	                             	<td class="buytd_mybuylist">
		                             	환불완료
	                             	</td>
	                             </c:when>
	                             <c:when test="${b.refund eq 'Z'}">
	                              	<td class="buytd_mybuylist">
		                             	환불 진행중
	                             	</td>
	                             </c:when>
	                             <c:otherwise>
	                             	<td class="buytd_mybuylist">
	                             		<div class="btnRefund_mybuylist">
											<button type="button" class="btn_refund_mybuylist" onclick="location.href='${ refund }';">환불</button>
										</div>
	                             	</td>
	                             </c:otherwise>
	                       </c:choose>
                     </tr>
                   </c:forEach>
                                    
                  <tr align="center" height="20" >
				<td colspan="6" class="pagination">
			
				<!-- [이전] -->
				<c:if test="${ pi.currentPage eq 1 }">
					<a style="cursor:default;">«</a>
				</c:if>
				<c:if test="${ pi.currentPage ne 1 }">
					<c:url var="before" value="buyList.do">
						<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
					</c:url>
					<a href="${ before }">«</a>
				</c:if>
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq pi.currentPage }">
						<a style="background-color: #FABE00; color: white; cursor:default;">${ p }</a>
					</c:if>
					
					<c:if test="${ p ne pi.currentPage }">
						<c:url var="WalletPagination" value="buyList.do">
							<c:param name="currentPage" value="${ p }"/>
						</c:url>
						<a href="${ WalletPagination }">${ p }</a>
					</c:if>
				</c:forEach>
				
				<!-- [다음] -->
				<c:if test="${ pi.currentPage eq pi.maxPage }">
					<a style="cursor:default;">»</a>
				</c:if>
				<c:if test="${ pi.currentPage ne pi.maxPage }">
					<c:url var="after" value="buyList.do">
						<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
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
      $('.btn_refund_mybuylist').click(function(){
          $('#myModal_wallet').show();
      })
      
      //팝업 Close 기능
      function close_Wallet(flag) {
           $('#myModal_wallet').hide();
      };
      
         $('.choice_mybuylist').click(function(){
             $('.datepre_mybuylist, .datepost_mybuylist').val("");
             
        	 if($(this).text()=='오늘'){
        		 $("#buttonday").val("1");
        	 }else if($(this).text()=='1개월'){
        		 $("#buttonday").val("2");
        	 }else if($(this).text()=='6개월'){
        		 $("#buttonday").val("3");
        	 }
        	 
             $('.choice_mybuylist').css('background-color',"#ddd");
             $(this).css('background','rgb(250,190,0)');
         });
         
         $('.datepre_mybuylist, .datepost_mybuylist').click(function(){
        	 $('.choice_mybuylist').css('background-color',"#ddd");
        	 $("#buttonday").val("");
         });
         
         function buttonclick(){
     	 	console.log($("#buttonday").val());
     		if($(".bdbox_mybuylist").val()!=null&&$("#buttonday").val()==""&&$('.datepre_mybuylist').val()==""&&$('.datepost_mybuylist').val()==""){
     			return true;
     	 	}else if($("#buttonday").val()!=""){
     	 		return true;
     	 	}
     		
 			if($(".bdbox_mybuylist").val()!=null&&$(".datepre_mybuylist").val()==""){
				 alert("날짜 정보가 잘못 되었습니다.")
        		 return false;
				}
     		
     		if($("#buttonday").val()==""){
	        		if($(".datepre_mybuylist").val()>$('.datepost_mybuylist').val() || $(".datepre_mybuylist").val()=="" || $('.datepost_mybuylist').val()==""){
	        	 		 alert("날짜 정보가 잘못 되었습니다.")
	            		 return false;
	        	 	}
     		}else{
     			return true;
     		}
      }
      </script>
      <!-- footer 영역 -->
      <%@ include file="../../common/footer.jsp" %>
   </body>
</html>