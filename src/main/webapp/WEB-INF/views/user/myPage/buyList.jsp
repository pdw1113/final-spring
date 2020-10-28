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
      <div class="content_mybuylist">
         <div class="dataInform_mybuylist">
            <div class="layoutSubbox_mybuylist">
               <div class="tit2_mybuylist">구매내역</div>
               <!-- 검색 div -->
               <div class="pOrderSearch_mybuylist">
                  <div class="sbox_mybuylist">
                     <div class="select_mybuylist">
                        <select class="bdbox_mybuylist">
                           <option value="0">전체</option>
                           <option value="1">환불요청중</option>
                           <option value="2">환불완료</option>
                        </select>
                     </div>
                     <!-- 달력 -->
                     <div class="date_mybuylist">
                        <input type="date" name="" id="datepre_mybuylist">
                         <div class="space_mybuylist">~</div>
                        <input type="date" name="" id="datepost_mybuylist">
                     </div>
                     <!-- 검색 오늘 / 1주일 / 1개월 / 6개월 선택시 자동으로 datePicker에 입력되게 구현 필요 -->
                     <div class="period_mybuylist">
                        <ul>
                           <li>
                              <div class="choice_mybuylist">오늘</div>
                           </li>
                           <li>
                              <div class="choice_mybuylist">1주일</div>
                           </li>
                           <li>
                              <div class="choice_mybuylist">1개월</div>
                           </li>
                           <li>
                              <div class="choice_mybuylist">6개월</div>
                           </li>
                        </ul>
                     </div>
                     <div class="btn_align_mybuylist">
                        <button class="btn_search_mybuylist">검색</button>
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
                        <th class="buyth_mybuylist">주문번호</th>
                        <th class="buyth_mybuylist">주문상품</th>
                        <th class="buyth_mybuylist">결제금액</th>
                        <th class="buyth_mybuylist">결제방식</th>
                        <th class="buyth_mybuylist">환불신청</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td class="buytd_mybuylist" id="short_mybuylist">3</td>
                        <td class="buytd_mybuylist">2020-10-20 15:10</td>
                        <td class="buytd_mybuylist">유승제</td>
                        <td class="buytd_mybuylist">1605100606502221</td>
                        <td class="buytd_mybuylist"id="long_mybuylist"><a>개발자 기술면접 특강</a></td>
                        <td class="buytd_mybuylist">440,000원</td>
                        <td class="buytd_mybuylist">카카오페이</td>
                        <td class="buytd_mybuylist">
                           <div class="btnRefund_mybuylist">
                              <button type="button" class="btn_refund_mybuylist">환불</button>
                           </div>
                        </td>
                     </tr>
                     <tr>
                        <td class="buytd_mybuylist" id="short_mybuylist">2</td>
                        <td class="buytd_mybuylist">2020-10-20 03:10</td>
                        <td class="buytd_mybuylist">정상뉴</td>
                        <td class="buytd_mybuylist">1605100633332221</td>
                        <td class="buytd_mybuylist" id="long_mybuylist"><a>깃? 나만 믿으라구!!</a></td>
                        <td class="buytd_mybuylist">200,000원</td>
                        <td class="buytd_mybuylist">카카오페이</td>
                        <td class="buytd_mybuylist">
                           환불요청중
                        </td>
                     </tr>
                     <tr>
                        <td class="buytd_mybuylist" id="short_mybuylist">1</td>
                        <td class="buytd_mybuylist">2020-10-18 03:10</td>
                        <td class="buytd_mybuylist">조정호</td>
                        <td class="buytd_mybuylist">1605102223332221</td>
                        <td class="buytd_mybuylist" id="long_mybuylist"><a>DB 어렵지 않아요</a></td>
                        <td class="buytd_mybuylist">100,000원</td>
                        <td class="buytd_mybuylist">카카오페이</td>
                        <td class="buytd_mybuylist">
                           환불완료
                        </td>
                     </tr>
                  </tbody>
               </table>
            </div>
         </div>
      </div>
      <script>
         $('.choice_mybuylist').click(function(){
             $('.choice_mybuylist').css('background-color',"#ddd");
             $(this).css('background','rgb(250,190,0)');
         });
         
         $('.btn_search_mybuylist').click(function(){
        	 var date = $('#datepre_mybuylist').val();
        	 console.log(date);
         });
      </script>
      <!-- footer 영역 -->
      <%@ include file="../../common/footer.jsp" %>
   </body>
</html>