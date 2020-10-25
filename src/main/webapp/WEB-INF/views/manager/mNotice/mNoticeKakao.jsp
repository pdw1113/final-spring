<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <!-- 합쳐지고 최소화된 최신 CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
      <!-- 부가적인 테마 -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
      <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
      <!-- JQUERY-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
      <style>
         .font_jua {
         font-family: 'Jua', sans-serif;
         color: black;
         }
         html,
         body {
         width: 100%;
         padding: 0;
         margin: 0;
         }
         .header {
         width: 100%;
         height: 6.2rem;
         }
         .left-bar {
         float: left;
         width: 13%;
         height: 917px;
         border-right: 1px solid gainsboro;
         }
         .section {
         width: 87%;
         float: left;
         height: 55.5rem;
         }
         .cate_Managerheader {
         color: rgb(141, 141, 141);
         height: 35px;
         line-height: 35px;
         border-bottom: 1px solid rgb(141, 141, 141);
         padding-left: 15px;
         }
         .title_Managerheader {
         font-size: 30px;
         font-family: jua;
         margin-top: 30px;
         padding-bottom: 10px;
         margin-bottom: 10px;
         margin-left: 20px;
         margin-right: 20px;
         border-bottom: 3px solid black;
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
         .content_MemberManager {
         width: 100%;
         padding: 57px 0 125px 0;
         }
         .content_MemberManager .layoutSubbox_MemberManager {
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         .searchbox_MemberManager {
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         .content_MemberManager .layoutSubbox_MemberManager:after {
         content: "";
         display: block;
         clear: both;
         }
         /* 달력 date-picker */
         label {
         margin-left: 20px;
         }
         .date {
         width: 140px;
         margin: 0 1px 10px 1px;
         }
         .date>span:hover {
         cursor: pointer;
         }
         /* 비밀번호 입력 div */
         .dataInform_MemberManager .inform_MemberManager {
         width: 100%;
         overflow: hidden;
         }
         /*검색버튼*/
         .searchBtn_MemberManager {
         margin: -3px 14px 0px 0;
         padding-bottom: 8px;
         }
         .searchBtn_MemberManager .btn_search_MemberManager {
         background-color: #ddd;
         border: none;
         color: black;
         font-weight: 600;
         padding: 16px 32px;
         text-align: center;
         font-size: 16px;
         margin: 4px 2px;
         transition: 0.3s;
         }
         .searchBtn_MemberManager .btn_search_MemberManager:hover {
         background-color: #fabe00;
         font-weight: 600;
         color: white;
         }
         /* 회원 리스트 table */
         table.type07 {
         border-collapse: collapse;
         text-align: left;
         line-height: 1.5;
         margin-top: 20px;
         }
         table.type07 thead {
         border-right: 1px solid #ccc;
         border-left: 1px solid #ccc;
         background: #bcbcbc;
         }
         table.type07 thead th {
         padding: 10px;
         font-weight: bold;
         vertical-align: top;
         color: #fff;
         border: 1px solid #ccc;
         text-align: center;
         }
         table.type07 td {
         width: 350px;
         padding: 10px;
         vertical-align: top;
         border-bottom: 1px solid #ccc;
         border: 1px solid #ccc;
         text-align: center;
         }
         .id_text_MemberManager {
         font-size: 12px;
         }
         .nickname_text_MemberManager {
         color: cornflowerblue;
         font-size: 13px;
         }
         /* 반응형~ */
         @media (max-width: 1360px) {
         /* 사이드 여백  */
         .content_MemberManager .layoutSubbox_MemberManager {
         width: auto;
         margin: 0 20px;
         }
         }
         table,
         td {
         text-align: center;
         vertical-align: middle;
         }
         .seaerch_save_button {
         width: 80px;
         font-size: 19px;
         background-color: rgb(219, 219, 219);
         border-radius: 5px;
         text-shadow: 0px -1px 1px rgba(0, 0, 0, 3);
         border: 1px solid black;
         box-shadow: inset 0 1px 0 rgba(255, 255, 255, 3), inset 0 0 2px rgba(255, 255, 255, 3), 0 1px 2px rgba(0, 0, 0, 29);
         font-family: sans-serif;
         outline-style: none;
         cursor: pointer;
         position: absolute;
         top: 130px;
         left: 1720px;
         }
         .seaerch_save_button:hover {
         transition: 300ms;
         background-color: rgb(250, 190, 0);
         }
         /* 텍스트 입력 */
         .mainItself {
         width: 1500px;
         height: 650px;
         border: 1px solid #ddd;
         position: relative;
         left: 50px;
         top: 10px;
         display: block;
         text-align: center;
         }
         .second-title {
         font-size: 20px;
         font-family: 'jua';
         margin-left: 30px;
         }
         .third-title {
         font-size: 18px;
         font-family: 'jua';
         margin-left: 50px;
         color: black;
         }
         .introduction {
         font-size: 15px;
         color: #ddd;
         margin-left: 70px;
         }
         .specialJumun1 {
         border-bottom: 0px;
         border-right: 0px;
         text-align: center;
         font-size: 25px;
         width: 750px;
         height: 80px;
         background-color: rgb(200, 200, 200);
         box-shadow: gray;
         }
         .specialJumun2 {
         text-align: center;
         }
         .jumun {
         width: 1500px;
         height: 50px;
         border-left: 1px solid #ddd;
         border-right: 1px solid #ddd;
         border-top: 1px solid #ddd;
         border-bottom: 2px solid #ddd;
         position: relative;
         left: 50px;
         top: 10px;
         margin-bottom: 10px;
         }
         .tableGood {
         width: 100%;
         height: 100%;
         border: 1px solid rgb(200, 200, 200);
         text-align: center;
         }
         table.tableGood th {
         border: 1px solid rgb(200, 200, 200);
         text-align: center;
         background-color: #ddd;
         }
         table.tableGood td {
         border: 1px solid rgb(200, 200, 200);
         width: 25%;
         }
         .heightGood {
         height: 20%;
         font-size: 25px;
         }
         .textGood {
         width: 320px;
         height: 280px;
         text-align: center;
         resize: none;
         background-color: beige;
         }
         .person {
         background-color: rgba(221, 221, 221, 0.815);
         }
         .text1{
         font-size: 15px;
         }
         .text2,
         .text3 {
         display: none;
         font-size: 15px;
         }
         .spAlign{
         text-align: justify;
         padding-left: 100px;
         }
         .centerAlign.option{
         text-align: center;
         }
      </style>
   </head>
   <body>
      <div class="header">
         <%@ include file="../../common/header.jsp" %>
      </div>
      <div class="left-bar">
         <%@ include file="../common/mLeftBar.jsp" %>
      </div>
      <div class="section">
         <div class="mian-header">
            <div class="cate_Managerheader">알림, 상담 > <U>카카오 알림톡</U></div>
            <button class="seaerch_save_button">저장</button>
            <div class="title_Managerheader">카카오 알림톡</div>
         </div>
         <div class="main-section">
            <table class="jumun">
               <th class="specialJumun1">
                  주문관련 & 회원관련
               </th>
               <th class="specialJumun2">
               </th>
            </table>
            <div class="second-title"></div>
            <div class="mainItself">
               <table class="tableGood">
                  <tr class="heightGood">
                     <th rowspan="2">발송항목</th>
                     <th rowspan="2">발송방법</th>
                     <th colspan="2">발송대상 및 알림톡 문구설정</th>
                  </tr>
                  <tr class="heightGood person">
                     <td>능력자</td>
                     <td>이용자</td>
                  </tr>
                  <tr>
                     <td rowspan="2" class="spAlign">
                        <input type="radio" ID="card1" name="orderGroup" Checked="true" value="card1"
                           onclick="contentsView(card1);" /><label for="card1">주문접수</label><br>
                        <input type="radio" ID="card2" name="orderGroup" value="card2"
                           onclick="javascript:contentsView(card2);" /><label for="card2">정상(뉴)접수</label><br>
                        <input type="radio" ID="card3" name="orderGroup" value="card3"
                           onclick="javascript:contentsView(card3);" /><label for="card3">인싸 천동민 접수</label><br>
                     </td>
                     <td rowspan="2">
                        <div class="text1">
                           최근 
                           <select name="days" class="centerAlign">
                              <option value="">기간 선택</option>
                              <option value="3">3일</option>
                              <option value="7">7일</option>
                              <option value="14">14일</option>
                           </select>
                           <br><br>
                           주문건만 발송
                        </div>
                        <div class="text2">
                           최근 
                           <select name="days" class="centerAlign">
                              <option value="">기간 선택</option>
                              <option value="3">3일</option>
                              <option value="7">7일</option>
                              <option value="14">14일</option>
                           </select>
                           <br><br>
                           정상뉴건만 발송      
                        </div>
                        <div class="text3">
                           최근 
                           <select name="days" class="centerAlign">
                              <option value="">기간 선택</option>
                              <option value="3">3일</option>
                              <option value="7">7일</option>
                              <option value="14">14일</option>
                           </select>
                           <br><br>
                           천동민건만 발송
                        </div>
                     </td>
                     <!-- ------------------------------------------------------------------------------------------ -->
                     <div>
                        <td rowspan="2">
                           <textarea class="textGood text1">
                           [#{rc_mallNm}] 정상뉴
                           #{orderName}님의 주문이 접수되었습니다
                           □주문번호 : #{orderNo}
                           □결제금액 : #{settlePrice}원
                           이용해주셔서 감사합니다
                           ▷[#{rc_mallNm}] 바로가기 :
                           #{shopUrl}
                           </textarea>
                           <textarea class="textGood text2">
                           상뉴야 노래 불러줘
                           </textarea>
                           <textarea class="textGood text3">
                           동민아 노래 불러줘
                           </textarea>
                        </td>
                        <td rowspan="2">
                           <textarea class="textGood text1">
                           [#{rc_mallNm}] 천동민
                           #{orderName}님의 주문이 접수되었습니다
                           □주문번호 : #{orderNo}
                           □결제금액 : #{settlePrice}원
                           이용해주셔서 감사합니다
                           ▷[#{rc_mallNm}] 바로가기 :
                           #{shopUrl}
                           </textarea>
                           <textarea class="textGood text2">
                           상뉴야 노래 불러줘
                           </textarea>
                           <textarea class="textGood text3">
                           동민아 노래 불러줘
                           </textarea>
                        </td>
                     </div>
                  </tr>
               </table>
            </div>
            <div class="third-title"></div>
            <div class="introduction">
            </div>
         </div>
      </div>
      <%@ include file="../../common/footer.jsp" %>
      <script>
         function contentsView(obj) {
             if (obj.value == 'card3') {
                 $('.text1').css('display', 'none');
                 $('.text2').css('display', 'none');
                 $('.text3').css('display', 'inline');
                 console.log(obj.value);
                 return false;
             }
             if (obj.value == 'card1') {
                 $('.text2').css('display', 'none');
                 $('.text3').css('display', 'none');
                 $('.text1').css('display', 'inline');
                 console.log(obj.value);
                 return false;
             }
             if (obj.value == 'card2') {
                 $('.text1').css('display', 'none');
                 $('.text3').css('display', 'none');
                 $('.text2').css('display', 'inline');
                 console.log(obj.value);
                 return false;
             }
         };
      </script>
   </body>
</html>