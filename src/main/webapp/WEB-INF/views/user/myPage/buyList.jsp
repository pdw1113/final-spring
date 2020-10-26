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
         .content_mybuylist {
         width: 100%;
         padding: 57px 0 125px 0;
         }
         .content_mybuylist .layoutSubbox_mybuylist {
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         .content_mybuylist .layoutSubbox_mybuylist:after {
         content: "";
         display: block;
         clear: both;
         }
         /* 공통 끝 */
         /* 구매내역 txt */
         .content_mybuylist .tit2_mybuylist {
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
         .pOrderSearch_mybuylist {
         width: 100%;
         background: #f3f5f6;
         border-bottom: 1px #000 solid;
         }
         .pOrderSearch_mybuylist .sbox_mybuylist {
         display: flex;
         margin: 0 auto;
         padding-top: 12px;
         font-size: 0;
         line-height: 0;
         overflow: hidden;
         justify-content: space-between;
         }
         /* select input */
         .pOrderSearch_mybuylist .select_mybuylist {
         margin-left: 10px;
         }
         .pOrderSearch_mybuylist .select_mybuylist .bdbox_mybuylist {
         font-size: 14px;
         width: 100px;
         height: 36px;
         margin: 0 20px 10px 6px;
         outline: none;
         }
         /* 날짜 선택 div */
         .date_mybuylist{
         display:flex;
         height: 36px;
         }
         /* 검색 오늘 / 1주일 / 1개월 / 6개월 선택시 자동으로 datePicker에 입력되게 구현 필요 */
         .period_mybuylist ul li {
         float: left;
         padding: 0 0 0 11px;
         }
         .period_mybuylist ul li a {
         font-size: 15px;
         color: #6c6d70;
         font-weight: 300;
         line-height: 35px;
         letter-spacing: -1px;
         cursor: pointer;
         text-decoration: none;
         }
         /*검색버튼*/
         .period_mybuylist .choice_mybuylist{
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
         .btn-default_mybuylist {
         outline: none;
         }
         .btn_align_mybuylist {
         margin: -3px 14px 0px 0;
         padding-bottom: 1px;
         outline: none;
         }
         .btn_align_mybuylist .btn_search_mybuylist {
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
         .btn_align_mybuylist .btn_search_mybuylist:hover {
         background-color: #fabe00;
         font-weight: 600;
         color: white;
         outline: none;
         }
         /* 구매내역 리스트 table */
         table.buylist_mybuylist {
         line-height: 1.5;
         border: 1px solid #ccc;
         margin-top: 20px;
         border-collapse: collapse;
         border-bottom: 2px solid #000;
         }
         table.buylist_mybuylist .buythead_mybuylist,
         .buytd_mybuylist {
         border: 1px solid#ccc;
         padding: 10px;
         vertical-align: middle;
         text-align: center;
         }
         table.buylist_mybuylist .buythead_mybuylist .buyth_mybuylist {
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
         table.buylist_mybuylist .buytd_mybuylist {
         width: 350px;
         height: 45px;
         border-bottom: 1px solid #ccc;
         font-family: sans-serif;
         }
         /* no row width resize */
         table.buylist_mybuylist #short_mybuylist{
         width: 90px;
         }
         table.buylist_mybuylist #long_mybuylist{
         width:900px;
         }
         /* 환불 버튼 */
         .btnRefund_mybuylist .btn_refund_mybuylist {
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
         .btnRefund_mybuylist .btn_refund_mybuylist:hover {
         background-color: #fabe00;
         font-weight: 500;
         color: white;
         outline: none;
         }
         
         .space_mybuylist{
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
         .content_mybuylist .layoutSubbox_mybuylist {
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