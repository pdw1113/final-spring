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
	  <link rel="stylesheet" type="text/css" href="resources/css/mPayRefundDetail.css">
   </head>
   <body>
      <div class="header">
        <%@ include file="../common/mheader.jsp" %>
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