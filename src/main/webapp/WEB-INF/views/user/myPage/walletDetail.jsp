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
	  <link rel="stylesheet" type="text/css" href="resources/css/walletDetail.css">
   </head>
   <body>
   	  <!-- header 영역 -->
      <%@ include file="../../common/header.jsp" %>
      <!-- nav 영역 -->
      <%@ include file="../myPage/common/nav.jsp" %>
      <div class="content_wdetail">
         <div class="dataInform_wdetail">
            <div class="layoutSubbox_wdetail">
             <div class="tit2_wdetail">니즈머니 상세조회</div>
             <!-- 검색 div -->
             <div class="pOrderSearch_wdetail">
                 <div class="sbox_wdetail">
                     <div class="select_wdetail">
                         <select class="bdbox_wdetail">
                             <option value="0">전체</option>
                             <option value="2">충전</option>
                             <option value="3">출금</option>
                         </select>
                     </div>
                     <!-- 달력 -->
                     <div class="date_wdetail">
                        <input type="date" name="" id="datepre_wdetail">
                         <div class="space_wdetail">~</div>
                        <input type="date" name="" id="datepost_wdetail">
                     </div>
                     <!-- 검색 오늘 / 1주일 / 1개월 / 6개월 선택시 자동으로 datePicker에 입력되게 구현 필요 -->
                     <div class="period_wdetail">
                        <ul>
                           <li>
                              <div class="choice_wdetail">오늘</div>
                           </li>
                           <li>
                              <div class="choice_wdetail">1주일</div>
                           </li>
                           <li>
                              <div class="choice_wdetail">1개월</div>
                           </li>
                           <li>
                              <div class="choice_wdetail">6개월</div>
                           </li>
                        </ul>
                     </div>
                     <div class="btn_align_wdetail">
                        <button class="btn_search_wdetail">검색</button>
                     </div>
                  </div>
               </div>
               <!-- 니즈머니 상세 리스트 시작 -->
               <table class="detail_wdetail">
                   <thead class="wthead_wdetail">
                       <tr>
                           <th>번호</th>
                           <th>결제일시</th>
                           <th>주문번호</th>
                           <th>결제내역</th>
                           <th>결제금액</th>
                           <th>결제방식</th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <td id="short_wdetail">3</td>
                           <td>2020-10-20 15:10</td>
                           <td>1605100606502221</td>
                           <td id="long_mybuylist">니즈머니 충전</td>
                           <td>200,000원</td>
                           <td>카카오페이</td>
                       </tr>
                       <tr>
                           <td id="short_wdetail">2</td>
                           <td>2020-10-20 03:10</td>
                           <td>1605100633332221</td>
                           <td id="long_wdetail">니즈머니 출금</td>
                           <td>100,000원</td>
                           <td>카카오페이</td>
                       </tr>
                       <tr>
                           <td id="short_wdetail">1</td>
                           <td>2020-10-18 03:10</td>
                           <td>1605102223332221</td>
                           <td id="long_wdetail">니즈머니 충전</td>
                           <td>200,000원</td>
                           <td>카카오페이</td>
                       </tr>
                   </tbody>
               </table>
            </div>
         </div>
      </div>
      <script>
         $('.choice_wdetail').click(function(){
             $('.choice_wdetail').css('background-color',"#ddd");
             $(this).css('background','rgb(250,190,0)');
         });
         
         $('.btn_search_wdetail').click(function(){
        	 var date = $('#datepre_wdetail').val();
        	 console.log(date);
         });
         
         
         
      </script>
      <!-- footer 영역 -->
      <%@ include file="../../common/footer.jsp" %>
   </body>
</html>