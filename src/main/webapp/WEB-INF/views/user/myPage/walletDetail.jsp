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
      <style>
         /* 공통 CSS */
         html,
         body {
         width: 100%;
         padding: 0;
         margin: 0;
         }
         /* 전체 div */
         .content_wdetail {
         width: 100%;
         padding: 57px 0 125px 0;
         }
         .content_wdetail .layoutSubbox_wdetail {
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         .content_wdetail .layoutSubbox_wdetail:after {
         content: "";
         display: block;
         clear: both;
         }
         /* 공통 끝 */
         /* 구매내역 txt */
         .content_wdetail .tit2_wdetail {
         position: relative;
         font-size: 20px;
         color: #272d32;
         line-height: 1.2;
         font-weight: 500;
         margin: 58px 0 0 0;
         padding: 0 0 14px 0;
         letter-spacing: -1px;
         border-bottom: 1px #000 solid;
         font-family: jua;
         }
         /* 리스트 검색 div*/
         .pOrderSearch_wdetail {
         width: 100%;
         background: #f3f5f6;
         border-bottom: 1px #000 solid;
         }
         .pOrderSearch_wdetail .sbox_wdetail {
         display: flex;
         margin: 0 auto;
         padding-top: 12px;
         font-size: 0;
         line-height: 0;
         overflow: hidden;
         justify-content: space-between;
         }
         /* select input */
         .pOrderSearch_wdetail .select_wdetail {
         margin-left: 10px;
         }
         .pOrderSearch_wdetail .select_wdetail .bdbox_wdetail {
         font-size: 14px;
         width: 100px;
         height: 36px;
         margin: 0 20px 10px 6px;
         outline: none;
         }
         /* 날짜 선택 div */
         .date_wdetail{
         display:flex;
         height: 36px;
         }
         /* 검색 오늘 / 1주일 / 1개월 / 6개월 선택시 자동으로 datePicker에 입력되게 구현 필요 */
         .period_wdetail > ul > li {
         float: left;
         padding: 0 0 0 11px;
         }
         .period_wdetail > ul > li > a {
         font-size: 15px;
         color: #6c6d70;
         font-weight: 300;
         line-height: 35px;
         letter-spacing: -1px;
         cursor: pointer;
         text-decoration: none;
         }
         /*검색버튼*/
         .period_wdetail .choice_wdetail{
         width: 80px;
         height: 30px;
         font-size: 15px;
         background-color: #ddd;
         border-radius: 5px;
         text-shadow: 0px -1px 1px rgba(0, 0, 0, 3);
         box-shadow: 0px 3px 0px rgba(0, 0, 0, 0.3);
         font-family: sans-serif;
         outline-style: none;
         cursor:pointer;
         line-height: 28px;
         text-align: center;
         }
         .btn-default_wdetail {
         outline: none;
         }
         .btn_align_wdetail {
         margin: -3px 14px 0px 0;
         padding-bottom: 1px;
         outline: none;
         }
         .btn_align_wdetail .btn_search_wdetail {
         background-color: #ddd;
         border: none;
         color: black;
         font-weight: 600;
         padding: 8px 16px;
         text-align: center;
         font-size: 16px;
         margin-top: -2px auto -1px;
         border-radius: 5px;
         transition: 0.3s;
         outline: none;
         cursor:pointer;
         box-shadow: 0px 3px 0px rgba(0, 0, 0, 0.3);
         }
         .btn_align_wdetail .btn_search_wdetail:hover {
         background-color: #fabe00;
         font-weight: 600;
         color: white;
         outline: none;
         }
         /* 구매내역 리스트 table */
         table.detail_wdetail {
         line-height: 1.5;
         border: 1px solid #ccc;
         margin-top: 20px;
         border-collapse: collapse;
         border-bottom: 2px solid #000;
         }
         table.detail_wdetail .wthead_wdetail {
         border: 1px solid#ccc;
         padding: 10px;
         vertical-align: middle;
         text-align: center;
         }
         table.detail_wdetail .wthead_wdetail > tr > th {
         border-top: 2px solid #000;
         font-weight: bold;
         color: #fff;
         font-size: 1.2rem;
         font-family: sans-serif;
         border-top: 2px solid #000;
         border-bottom: 2px solid #000;
         border-right: 1px solid #ccc;
         border-left: 1px solid #ccc;
         background: #fabe00;
         }
         table.detail_wdetail > tbody > tr > td {
         width: 350px;
         height: 45px;
         border: 1px solid#ccc;
         border-bottom: 1px solid #ccc;
         font-family: sans-serif;
         padding: 10px;
         vertical-align: middle;
         text-align: center;
         }
         /* no row width resize */
         table.detail_wdetail #short_wdetail{
         width: 90px;
         }
         table.detail_wdetail #long_wdetail{
         width:900px;
         }
         /* 환불 버튼 */
         .btnRefund_wdetail .btn_refund_wdetail {
         background-color: #ddd;
         border: none;
         color: black;
         padding: 6px 16px;
         text-align: center;
         font-size: 14px;
         border-radius: 5px;
         transition: 0.3s;
         outline: none;
         box-shadow: 0px 3px 0px rgba(0, 0, 0, 0.3);
         cursor:pointer;
         }
         .btnRefund_wdetail .btn_refund_wdetail:hover {
         background-color: #fabe00;
         font-weight: 500;
         color: white;
         outline: none;
         }
         
         .space_wdetail{
         	width: 23px;
            font-size: 15px;
            color: #6c6d70;
            font-weight: 300;
            line-height: 38px;
            text-align: center;
         }
         /* 반응형~ */
         @media (max-width: 1360px) {
         /* 사이드 여백 */
         .content_wdetail .layoutSubbox_wdetail {
         width: auto;
         margin: 0 20px;
         }
         }
      </style>
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