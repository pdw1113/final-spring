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
      <!-- datePicker CDN -->
      <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"
         type="text/css" />
      <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet"
         type="text/css" />
      <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
      <style>
         /* 공통 CSS */
         html,
         body {
         width: 100%;
         padding: 0;
         margin: 0;
         }
         h2 {
         text-align: center;
         font-family: jua;
         }
         ul,
         li {
         list-style: none;
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
         /* 달력 date-picker */
         label {
         margin-left: 20px;
         }
         .date_mybuylist {
         width: 140px;
         margin: 0 1px 10px 1px;
         }
         .date_mybuylist>span:hover {
         cursor: pointer;
         }
         .pOrderSearch_mybuylist .datepicker_mybuylist {
         display: flex;
         }
         .pOrderSearch_mybuylist .datepicker_mybuylist div.space_mybuylist {
         width: 23px;
         font-size: 15px;
         color: #6c6d70;
         font-weight: 300;
         line-height: 38px;
         text-align: center;
         }
         /*검색버튼*/
         button{
         outline: none;
         box-shadow: 0px 3px 0px rgba(0, 0, 0, 0.3);
         }
         .period_mybuylist .choice_mybuylist{
         width: 100px;
         font-size: 19px;
         background-color: #ddd;
         border-radius: 5px;
         text-shadow: 0px -1px 1px rgba(0, 0, 0, 3);
         border: 1px solid black;
         box-shadow: inset 0 1px 0 rgba(255, 255, 255, 3), inset 0 0 2px rgba(255, 255, 255, 3), 0 1px 2px rgba(0, 0, 0, 29);
         font-family: sans-serif;
         outline-style: none;
         height: 30px;
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
         }
         .btn_align_mybuylist .btn_search_mybuylist:hover {
         background-color: #fabe00;
         font-weight: 600;
         color: white;
         outline: none;
         }
         /* 구매내역 리스트 table */
         table.type07_mybuylist {
         border-collapse: collapse;
         text-align: left;
         line-height: 1.5;
         border: 1px solid #ccc;
         margin-top: 20px;
         border-collapse: collapse;
         border-bottom: 2px solid #000;
         border-left: 0px;
         }
         table.type07_mybuylist thead {
         border-top: 2px solid #000;
         border-bottom: 2px solid #000;
         border-right: 1px solid #ccc;
         border-left: 1px solid #ccc;
         background: #fabe00;
         }
         table.type07_mybuylist th,
         td {
         border: 1px solid#ccc;
         padding: 10px;
         vertical-align: middle;
         text-align: center;
         }
         table.type07_mybuylist thead th {
         font-weight: bold;
         color: #fff;
         font-size: 1.2rem;
         font-family: sans-serif;
         }
         table.type07_mybuylist td {
         width: 350px;
         border-bottom: 1px solid #ccc;
         font-family: sans-serif;
         }
         /* no row width resize */
         table.type07_mybuylist #short_mybuylist{
         width: 90px;
         }
         table.type07_mybuylist #long_mybuylist{
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
         }
         .btnRefund_mybuylist .btn_refund_mybuylist:hover {
         background-color: #fabe00;
         font-weight: 500;
         color: white;
         outline: none;
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
      <%@ include file="../../user/myPage/common/nav.jsp" %>
      <iframe src="Mainhead.html" frameborder="0" style="width: 100%;margin: 0 0px -30px 0px; "></iframe>
      <iframe src="myPage_nav.html" frameborder="0"
         style="width: 100%; height: 370px; margin: -20px 0px -20px 0px;"></iframe>
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
                           <option value="2">환불요청중</option>
                           <option value="3">환불완료</option>
                        </select>
                     </div>
                     <!-- datepicker 달력 -->
                     <div class="datepicker_mybuylist">
                        <div id="datepicker01" class="input-group date" data-date-format="yyyy-mm-dd">
                           <input class="form-control" type="text" readonly />
                           <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        </div>
                        <div class="space_mybuylist">~</div>
                        <div id="datepicker02" class="input-group date" data-date-format="yyyy-mm-dd">
                           <input class="form-control" type="text" readonly />
                           <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        </div>
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
                        <button class="btn btn_search_mybuylist">검색</button>
                     </div>
                  </div>
               </div>
               <!-- 구매내역 리스트 시작 -->
               <table class="type07_mybuylist">
                  <thead>
                     <tr>
                        <th scope="cols">번호</th>
                        <th scope="cols">주문일시</th>
                        <th scope="cols">능력자 이름</th>
                        <th scope="cols">주문번호</th>
                        <th scope="cols">주문상품</th>
                        <th scope="cols">결제금액</th>
                        <th scope="cols">결제방식</th>
                        <th scope="cols">환불신청</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td id="short_mybuylist">3</td>
                        <td>2020-10-20 15:10</td>
                        <td>유승제</td>
                        <td>1605100606502221</td>
                        <td id="long_mybuylist"><a>개발자 기술면접 특강</a></td>
                        <td>440,000원</td>
                        <td>카카오페이</td>
                        <td>
                           <div class="btnRefund_mybuylist">
                              <button type="button" class="btn btn_refund_mybuylist">환불</button>
                           </div>
                        </td>
                     </tr>
                     <tr>
                        <td id="short_mybuylist">2</td>
                        <td>2020-10-20 03:10</td>
                        <td>정상뉴</td>
                        <td>1605100633332221</td>
                        <td id="long_mybuylist"><a>깃? 나만 믿으라구!!</a></td>
                        <td>200,000원</td>
                        <td>카카오페이</td>
                        <td>
                           환불요청중
                        </td>
                     </tr>
                     <tr>
                        <td id="short_mybuylist">1</td>
                        <td>2020-10-18 03:10</td>
                        <td>조정호</td>
                        <td>1605102223332221</td>
                        <td id="long_mybuylist"><a>DB 어렵지 않아요</a></td>
                        <td>100,000원</td>
                        <td>카카오페이</td>
                        <td>
                           환불완료
                        </td>
                     </tr>
                  </tbody>
               </table>
            </div>
         </div>
      </div>
      <script>
         $(function () {
             $("#datepicker01").datepicker({
                 autoclose: true,
                 todayHighlight: true,
             }).datepicker('update', new Date());
             $("#datepicker02").datepicker({
                 autoclose: true,
                 todayHighlight: true,
             }).datepicker('update', new Date());
         });
         
         $('.choice_mybuylist').click(function(){
             $('.choice_mybuylist').css('background-color',"#ddd");
             $(this).css('background-color','rgb(250,190,0);');
         });
         
      </script>
      <!-- footer 영역 -->
      <%@ include file="../../common/footer.jsp" %>
   </body>
</html>