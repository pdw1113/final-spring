<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
   <link rel="stylesheet" type="text/css" href="resources/css/wallet.css">
</head>

<body>
    <!-- header 영역 -->
    <%@ include file="../../common/header.jsp" %>
    <!-- nav 영역 -->
    <%@ include file="../myPage/common/nav.jsp" %>
    <div class="content_myPage_money">
        <!-- mypage -->
        <div class="mypage_myPage_money">
            <div class="layoutSubbox_myPage_money">
                <div class="hTitle_myPage_money">보유니즈머니</div>
                <!-- account -->
                <div class="accountWrap_myPage_money">
                    <div class="cashInfo_myPage_money">
                        <ul>
                            <li class="info_myPage_money">
                                <p>${loginUser.name} 회원님의 <span>보유니즈머니 정보</span></p>
                            </li>
                            <li>
                                <div class="stit_myPage_money">보유니즈머니</div>
                                <div class="won_myPage_money">${cash}<span>원</span></div>
                                <a href="charge.do" class="chargeBtn_myPage_money"><span>충전하기</span></a>
                            </li>
                        </ul>
                    </div>
                    <div class="awTit_myPage_money">니즈머니 결제 내역</div>
                    <a href="walletDetail.do" class="more_myPage_money">더보기</a>
                    <div class="cashTable_myPage_money">
                        <table class="table_myPage_money">
                            <thead class="thead_money">
                                <tr>
                                    <th><span>결제일시</span></th>
                                    <th><span>결제내역</span></th>
                                    <th><span>결제금액</span></th>
                                    <th><span>결제방식</span></th>
                                </tr>
                            </thead>
                            <!-- 보여지는 리스트 개수는 최신 5~10개로 제한 그 이상은 더보기 버튼으로 확인 -->
                            <tbody>
                            	<!-- uw의 크기 에서 for문 돌려서 상위 5개만 뽑기 -->
                            <c:choose>
                              <c:when test="${fn:length(uw) > 5}">
                              <c:forEach var="w" begin="0" end="4" step="1" items="${uw}">
	                                <tr>
	                                <td>${w.wdate}</td>
	                                <td><span class="plus_money">${w.whistory}</span></td>
	                              	<c:choose>
	                                	<c:when test="${w.whistory eq '니즈머니 출금'}">
	                                		<td><span class="day_money" style="color: red;">-${w.wmoney}</span></td>
	                                	</c:when>
	                                	<c:otherwise>
	                                		<td><span class="day_money" >${w.wmoney}</span></td>
	                                	</c:otherwise>
	                                </c:choose> 
	                                <td>${w.wmethod}</td>
	                                </tr>
	                            </c:forEach>
                              </c:when>                  
                              <c:otherwise>
                              <c:forEach var="w"  items="${uw}">
	                                <tr>
	                                <td>${w.wdate}</td>
	                                <c:choose>
	                                	<c:when test="${w.whistory eq '니즈머니 출금'}">
	                                		<td><span class="plus_money" style="color: red;">${w.whistory}</span></td>
	                                		<td><span class="day_money" style="color: red;">-${w.wmoney}</span></td>
	                                	</c:when>
	                                	<c:otherwise>
	                                		<td><span class="plus_money">${w.whistory}</span></td>
	                                		<td><span class="day_money" >${w.wmoney}</span></td>
	                                	</c:otherwise>
	                                </c:choose>
	                                <td>${w.wmethod}</td>
	                                </tr>
                             	</c:forEach>
                              </c:otherwise>
                            </c:choose>
                            </tbody>
                        </table>
                    </div>
                    <div class="cashRequest_myPage_money">
                        <div class="cTit_myPage_money">출금 가능 니즈머니</div>
                        <div class="cashWon_myPage_money">${cash}<span>원</span></div>
                        <!-- 출금하기 버튼은 0원 초과되면 생기게 구현할 예정 -->
                        <button class="requestBtn_myPage_money" id="cancelReason_wallet"><span>출금하기</span></button>
                    </div>
                    
				 <form action="withdraw.do" method="post">
                    <!-- The Modal -->
                    <div id="myModal_wallet" class="modal_money">
                        <!-- Modal content -->
                        <div class="modal_content_money">
                            <div class="modal_header_wallet">
                               <div class="close_wallet" onclick="close_Wallet();">
                                  <i class="fas fa-times x_wallet"></i>
                            </div>
                                <div><h2>보유머니 출금 요청</h2></div>
                               <ul class="modal_wallet">
                           <li>
                              <select class="bankCode_wallet">
                                 <option value="">은행 선택</option>
                                           <option value="산업">산업</option>
                                           <option value="기업">기업</option>
                                           <option value="국민">국민</option>
                                           <option value="수협">수협</option>
                                           <option value="농협">농협</option>
                                           <option value="우리">우리</option>
                                           <option value="SC">SC</option>
                                           <option value="씨티">씨티</option>
                                           <option value="대구">대구</option>
                                           <option value="부산">부산</option>
                                           <option value="광주">광주</option>
                                           <option value="제주">제주</option>
                                           <option value="전북">전북</option>
                                           <option value="경남">경남</option>
                                           <option value="새마을금고">새마을금고</option>
                                           <option value="신협">신협</option>
                                           <option value="상호저축">상호저축</option>
                                           <option value="HSBC">HSBC</option>
                                           <option value="도이치">도이치</option>
                                           <option value="우체국">우체국</option>
                                           <option value="KEB">KEB하나</option>
                                           <option value="신한">신한</option>
                                           <option value="케이뱅크">케이뱅크</option>
                                           <option value="카카오뱅크">카카오뱅크</option>
                                 </select>
                           </li>
                           <li><input type="text" name="bankuser" class="bankuser_wallet" id="bankuser" value="" placeholder="예금주명 입력"></li>
                           <li><input type="number" name="bankno" class="bankno_wallet" id="bankno" value="" placeholder="’-’ 없이 계좌번호 입력"></li>
                           <li><input type="number" name="money" class="price_wallet" id="money" value="" placeholder="출금 머니 금액을 입력해 주십시오."></li>
                        </ul>
                        
                            </div>
                            <input type="text" name="bank" class="bank" value=""/>
                            <div class="bankSend_wallet">
                               <button class="bankBtn_wallet" onclick="return btnclick();">출금</button>
                            </div>
                        </div>
                    </div>
                    </form>
                    <!--End Modal-->
                    <div class="cashRtxt_myPage_money">
                        <ul>
                            <li>12시 이전 신청 : 당일 16:00~18:00 입금</li>
                            <li>12시 이후 신청 : 익일 16:00~18:00 입금</li>
                            <li>금요일 12시 이후 신청</li>
                            <li>차주 월요일 16:00~18:00 입금</li>
                        </ul>
                    </div>
                </div>
                <!-- //account -->
            </div>
        </div>
       </div>
        <!-- //mypage -->
       <script type="text/javascript">
           $('#cancelReason_wallet').click(function(){
               $('#myModal_wallet').show();
           })
           
           //팝업 Close 기능
           function close_Wallet(flag) {
                $('#myModal_wallet').hide();
           };
           
           
           function btnclick(){
        	   var num1 = ${cash};
        	   var num2 = $('#money').val();
        	   if(num1<num2){
        		   alert("출금금액이 보유금액을 초과했습니다.");
        		   return false;
        	   }else if(num2==""||num2==null){
        		   alert("출금금액을 입력하세요.");
        		   return false;
        	   }else{
        		   if(confirm("출금금액 : " +num2+ "\n출금하시겠습니까?")){
        			 return true;
        		   }else{
        			   return false;
        		   }
        	   }
           }
           
           $('.bankCode_wallet').on('click',function(){
        	   let bankVal =  $('.bankCode_wallet').val();
        	   $('.bank').val(bankVal);
           });
      </script>
      <!-- footer 영역 -->
      <%@ include file="../../common/footer.jsp" %>
   </body>
</html>