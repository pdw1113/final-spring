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
      <style>
         /* jua 폰트 */
         .font_jua{
         font-family: 'Jua', sans-serif;
         color: black;
         }
         html,
         body {
         width: 100%;
         padding: 0;
         margin: 0;
         }
         .header{    
         width: 100%;
         height: 6.5rem;
         }
         .left-bar{
         float: left;
         width: 13%;
         height: 100vh;
         border-right: 1px solid gainsboro;
         }
         .section{
         width: 87%;
         float: left;
         height: 100vh;
         }
         .cate_Managerheader{
         color:rgb(141, 141, 141);
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
         /* 전체 div */
         .content_MemberManager {
         width: 100%;
         padding: 57px 0 125px 0;
         }
         .content_MemberManager .layoutSubbox_MemberManager{
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         .content_MemberManager .layoutSubbox_MemberManager:after {
         content: "";
         display: block;
         clear: both;
         }
         /*결제섹션 상단부분*/
         .payment-main-03{
         width: 160rem;
         height: 100%;
         margin-left: 2rem;
         position: relative;
         overflow: hidden;
         }
         /*테이블의 첫번째 td*/
         .first-td{
         width: 25rem;
         background-color : #F5F5F5;
         }
         /*글자크기*/
         .first-table-p{
         font-size: x-large;
         margin: auto 0;
         letter-spacing: 0.2rem;
         display: inline;
         }
         /*원 글자크기*/
         .secondTd-span{
         font-size: x-large;
         }
         /*second-td*/
         .second-td{
         width: 25rem;
         text-align: right;
         }
         /*글자 수직중앙*/
         #table03>tbody>tr>td{
         vertical-align: middle;
         border-bottom: 1px solid #ddd;
         }
         /*글자색*/
         .last-text-color{
         color: #9E9E9E;
         }
         #bottom-tabel{
         border-bottom: 1px solid  #E2E2E2;
         letter-spacing: 0.15rem;
         vertical-align: middle;
         }
         .bottom03-td1{
         width:8rem;
         }
         .bottom03-td3,.bottom-td4{
         width: 13rem;
         }
         .bottom03-td7,.bottom-td8{
         width: 20rem;;
         }
         /*thead*/
         .bottom-table-thead{
         background-color: #E2E2E2;
         }
         /*테이블높이*/
         #table03{
         height: 40rem;
         }
         /*총금액*/
         #total-pay{
         color: red;
         }
         /*주문번호 색*/
         .num03{
         font-size: large;
         color: gray;
         }
         /*환불사유 테이블*/
         #lastTable03>tbody>tr>td{
         height: 25rem;
         vertical-align: middle;
         }
         .btn03-div{
         text-align: center;
         letter-spacing: 5rem;
         }
         /*환불버튼*/
         .btn03 {
         background-color: rgb(141, 141, 141);
         border: none;
         color: white;
         font-size: 2.5rem;
         opacity: 0.6;
         transition: 0.3s;
         text-decoration: none;
         cursor: pointer;
         border-radius: 10px;
         width: 7rem;
         height: 5rem;
         box-shadow: inset 0 1px 0 rgb(255 255 255), inset 0 0 2px rgb(255 255 255), 0 1px 2px rgb(0 0 0);
         }
         .btn03:hover{
         opacity: 1;
         }
         *:focus { outline:none; }
         .top-btn:hover {opacity: 1}
         /* 반응형~ */
         @media (max-width: 1360px) {
         /* 사이드 여백 */
         .content_MemberManager .layoutSubbox_MemberManager {
         width: auto;
         margin: 0 20px;
         }
         }
         /*!!헤더css 깨짐으로 부트스트랩 쓴 페이지에만 적용하는 코드!!*/
         .header div.login_box_Mainhead{
         margin-top: 1.5rem;
         line-height: 3rem;
         margin-right: 0.3rem;
         }
         .header div.login_box_Mainhead .head_login_Mainhead{
         height: 3.6rem;
         width: 8.6rem;
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
            <div class="cate_Managerheader">결제 > <U>환불 상세보기</U></div>
            <div class="title_Managerheader">환불 상세보기</div>
         </div>
         <div class="main-section">
            <div class="payment-main-03">
               <div class="font_jua top-title">
                  <h2>결제 정보<span class="font_jua num03">(주문번호 123123123)</span></h2>
               </div>
               <table class="refund_table table table-bordered top-table table-condensed" id="table03">
                  <tr>
                     <td class="first-td">
                        <p class="font_jua first-table-p">주문금액</p>
                     </td>
                     <td class="second-td">
                        <p class="font_jua first-table-p">24,000</p>
                        <span class="font_jua secondTd-span">원</span>
                     </td>
                     <td>
                        <span class="font_jua secondTd-span">주문금액</span>
                        <p class="font_jua first-table-p">24,000</p>
                        <span class="font_jua secondTd-span">원</span>
                     </td>
                  </tr>
                  <tr>
                     <td class="first-td">
                        <p class="font_jua first-table-p">할인금액</p>
                     </td>
                     <td class="second-td">
                        <p class="font_jua first-table-p">5,000</p>
                        <span class="font_jua secondTd-span">원</span>
                     </td>
                     <td>
                        <span class="font_jua secondTd-span">즉시할인</span>
                        <p class="font_jua first-table-p">5,000</p>
                        <span class="font_jua secondTd-span">원</span>
                     </td>
                  </tr>
                  <tr>
                     <td class="first-td" id="first-td-3">
                        <p class="font_jua first-table-p">총결제금액</p>
                     </td>
                     <td class="second-td" id="second-td-3">
                        <p class="font_jua first-table-p" id="total-pay">19,000</p>
                        <span class="font_jua secondTd-span" id="total-pay">원</span>
                     </td>
                     <td>
                        <span class="font_jua secondTd-span last-text-color">니즈머니</span>
                        <p class="font_jua first-table-p last-text-color">19,000</p>
                        <span class="font_jua secondTd-span last-text-color">원</span><br>
                        <span class="font_jua secondTd-span">니즈머니 일시불</span><br>
                        <p class="font_jua first-table-p">2020-10-24 02:31:10</p>
                     </td>
               </table>
               <table class="table table-condensed font_jua botto" id="bottom-tabel">
                  <thead class="bottom-table-thead">
                     <tr>
                        <th class="bottom03-td1"></th>
                        <th class="bottom03-td3">아이디/닉네임</th>
                        <th class="bottom03-td4">이름</th>
                        <th class="bottom03-td6">주문상품</th>
                        <th class="bottom03-td7">결제금액</th>
                        <th class="bottom03-td8">결제상태</th>
                     </tr>
                  </thead>
                  <tr>
                     <td class="bottom03-td1">1</td>
                     <td class="bottom03-td3"><span>test_id_2</span><br>
                        <span>지존학살동민</span>
                     </td>
                     <td class="bottom03-td4"><span>천동민</span></td>
                     <td class="bottom03-td6"><span>천동민의 Java 특강!!</span></td>
                     <td class="bottom03-td7"><span>19,000원</span></td>
                     <td class="bottom03-td8"><span>결제완료</span></td>
                  </tr>
               </table>
               <table class="table table-condensed font_jua botto" id="lastTable03">
                  <tr>
                     <td class="first-td" id="first-td-3">
                        <p class="font_jua first-table-p">고객 환불사유</p>
                     </td>
                     <td>
                        천동민씨가 너무잘생겨서 수업에 집중이 안대욧!!!!!!!!
                     </td>
                  </tr>
               </table>
               <div class="btn03-div">
                  <button type="submit" class="font_jua btn03">환불</button>
                  <button type="submit" class="font_jua btn03">기각</button>
               </div>
            </div>
         </div>
      </div>
      <script>
         $(function(){
         
         })
      </script>
   </body>
</html>