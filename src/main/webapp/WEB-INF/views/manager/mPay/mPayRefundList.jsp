<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <!-- JUA 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
      <!--제이쿼리CDN-->
      <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
      <!--부트스트랩CDN-->
      <!-- 합쳐지고 최소화된 최신 CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
      <!-- 부가적인 테마 -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
      <!-- 합쳐지고 최소화된 최신 자바스크립트 -->    
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> 
      <!-- css -->
	  <link rel="stylesheet" type="text/css" href="resources/css/mPayRefundList.css">
   </head>
   <body>
      <div class="header">
         <%@ include file="../common/mheader.jsp" %>
      </div>
      <div class="left-bar">
         <%@ include file="../common/mLeftBar.jsp" %>
      </div>
      <form action="mPayRefundList.do" method="POST">
      <div class="section">
         <div class="mian-header">
            <div class="cate_Managerheader">결제 > <U>환불 리스트</U></div>
            <div class="title_Managerheader">환불 리스트</div>
         </div>
         <div class="main-section">
            <div class="payment-main-top">
               <div class="font_jua top-title">
                  <h2>주문 검색</h2>
               </div>
               <table class="table table-bordered top-table table-condensed table-hove">
                  <tr>
                   <td class="first-td">
                        <p class="font_jua top-table-p" id="top-table-p">검색</p>
                     </td>
                     <td>
                        <div class="table-input">
                           <select class="form-control input-md font_jua" id="first-select">
                              <option value="1">전체</option>
                              <option value="2">이름</option>
                              <option value="3">아이디</option>
                              <option value="4">주문상품</option>
                           </select>
                           <input type="hidden" name="selectBox" value="" class="selectBox"/>
                           <input type="text" name="searchBox" class="form-control input-md" id="first-input">
                        </div>
                     </td>
                  </tr>
                  <tr>
                     <td class="first-td">
                        <p class="font_jua top-table-p">기간</p>
                     </td>
                     <td>
                        <div class="table-input">
                           <input type="date" name="preday" class="form-control input-md font_jua" id="second-input" placeholder="주문번호 전체를 정확히 입력하세요">
                           <span class="date-span">~</span>
                           <input type="date" name="postday" class="form-control input-md font_jua" id="second-input-2" placeholder="주문번호 전체를 정확히 입력하세요">
                        </div>
                     </td>
                  </tr>
               </table>
               <button type="submit" class="font_jua top-btn" onclick="return buttonclick();">검색</button>
            </div>
            <div class="payment-main-bottom">
               <table class="table table-hover table-condensed font_jua botto" id="bottom-tabel">
                  <thead class="bottom-table-thead">
                     <tr>
                        <th class="bottom-td1">번호</th>
                        <th class="bottom-td2">주문일시</th>
                        <th class="bottom-td3">아이디</th>
                        <th class="bottom-td4">이름</th>
                        <th class="bottom-td6">주문상품</th>
                        <th class="bottom-td7">환불금액</th>
                     </tr>
                  </thead>
                  <c:if test="${!empty refundList}">
                  <c:forEach var="r" items="${ refundList }">
                  <tr class="refundTr" id="trtr">
                     <td class="bottom-td1" id="tdtd">${r.num }</td>
                     <td class="bottom-td2" id="tdtd"><span>${r.date }</span></td>
                     <td class="bottom-td3" id="tdtd"><span>${r.email }</span><br>
                     </td>
                     <td class="bottom-td4" id="tdtd"><span>${r.master }</span></td>
                     <td class="bottom-td6" id="tdtd"><span>${r.title }</span></td>
                     <td class="bottom-td7" id="tdtd"><span id="priceRed">${r.money }원</span></td>
                  </tr>
                  </c:forEach>
                  </c:if>          
               </table>
			<div class="pagination" id="pag">
			
				<!-- [이전] -->
				<c:if test="${ pi.currentPage eq 1 }">
					<a style="cursor:default;">«</a>
				</c:if>
				<c:if test="${ pi.currentPage ne 1 }">
					<c:url var="before" value="mPayRefundList.do">
						<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
							<c:param name="preday" value="${preday}"/>
							<c:param name="postday" value="${postday}"/>
							<c:param name="selectBox" value="${selectBox}"/>
							<c:param name="searchBox" value="${searchBox}"/>
					</c:url>
					<a href="${ before }">«</a>
				</c:if>
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq pi.currentPage }">
						<a style="background-color: #FABE00; color: white; cursor:default;">${ p }</a>
					</c:if>
					
					<c:if test="${ p ne pi.currentPage }">
						<c:url var="WalletPagination" value="mPayRefundList.do">
							<c:param name="currentPage" value="${ p }"/>
							<c:param name="preday" value="${preday}"/>
							<c:param name="postday" value="${postday}"/>
							<c:param name="selectBox" value="${selectBox}"/>
							<c:param name="searchBox" value="${searchBox}"/>
						</c:url>
						<a href="${ WalletPagination }">${ p }</a>
					</c:if>
				</c:forEach>
				
				<!-- [다음] -->
				<c:if test="${ pi.currentPage eq pi.maxPage }">
					<a style="cursor:default;">»</a>
				</c:if>
				<c:if test="${ pi.currentPage ne pi.maxPage }">
					<c:url var="after" value="mPayRefundList.do">
						<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
							<c:param name="preday" value="${preday}"/>
							<c:param name="postday" value="${postday}"/>
							<c:param name="selectBox" value="${selectBox}"/>
							<c:param name="searchBox" value="${searchBox}"/>
					</c:url> 
					<a href="${ after }" >»</a>
				</c:if>
				</div>       
            </div>
         </div>
      </div>
      </form>
      <script>
      function buttonclick(){
     		if($("#second-input").val() > $("#second-input-2").val()){
  	 		 alert("날짜 정보가 잘못 되었습니다.");
      		 return false;
     	 	}else {
     	 		return true;
     	 	}
      }
      

         $('#first-select').on('click',function(){
     		if($(this).val() == "2"){
     			$('.selectBox').val(2);
     		}else if($(this).val() == "3"){
     			$('.selectBox').val(3);
     		}else if($(this).val() == "4"){
     			$('.selectBox').val(4);
     		}else if($(this).val() == "1"){
     			$('.selectBox').val("");
     		}
       });
      </script>
   </body>
</html>