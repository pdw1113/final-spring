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
         height: 6.2rem;
         }
         .left-bar{
         float: left;
         width: 13%;
         height: 92rem;
         border-right: 1px solid gainsboro;
         }
         .section{
         width: 87%;
         float: left;
         height: 92rem;
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
         .payment-main-top{
         width: 160rem;
         height: 35rem;
         margin-left: 2rem;
         position: relative;
         overflow: hidden;
         }
         /*결제섹션 하단부분*/
         .payment-main-bottom{
         width: 160rem;
         height: 50rem;
         margin-left: 2rem;
         position: relative;
         }
         /*결제섹션 타이틀*/
         .top-title{
         padding-top: 1rem;
         }
         /*테이블*/
         .top-table{
         height: 15rem;
         }
         /*테이블의 첫번째 td*/
         .first-td{
         width: 25rem;
         background-color : #F5F5F5;
         }
         /*테이블의 첫번째 td의 글자*/
         .top-table-p{
         font-size: x-large;
         margin: auto 0;
         letter-spacing: 0.2rem;
         /*라디오 라벨*/
         }
         .radio-lable{
         font-size: 1.8rem;
         margin-right: 10px;
         letter-spacing: 0.1rem;
         }
         /*마진값 따로주기위해 아이디로사용*/
         #top-table-p{
         margin-top: 8px;
         }
         /*첫번째 셀렉트박스*/
         #first-select{
         letter-spacing: 0.2rem;
         width: 15rem;
         display: inline-block;
         margin-left: -10rem;
         font-size: 2rem;
         height: 3.9rem;
         }
         /*첫번째 폼태그*/
         #first-input{
         width: 70rem;
         display: inline-block;
         padding-bottom: 1.7rem;
         padding-top: 1.95rem;
         }
         /*두번째 셀렉트박스*/
         #second-select{
         letter-spacing: 0.2rem;
         width: 15rem;
         display: inline-block;
         margin-left: -10rem;
         font-size: 2rem;
         height: 3.9rem;
         }
         /*두번째 폼태그*/
         #second-input{
         width: 18rem;
         margin-left: 3rem;
         display: inline-block;
         padding-bottom: 1.7rem;
         padding-top: 1.95rem;
         }
         #second-input-2{
         width: 18rem;
         margin-left: 0;
         display: inline-block;
         padding-bottom: 1.7rem;
         padding-top: 1.95rem;
         }
         /*date span*/
         .date-span{
         font-size: 2rem;
         }
         /*검색버튼*/
         .top-btn {
         background-color: rgb(141, 141, 141);
         border: none;
         color: white;
         text-align: center;
         font-size: 2.5rem;
         margin: 5px 80rem;
         opacity: 0.6;
         transition: 0.3s;
         display: inline-block;
         text-decoration: none;
         cursor: pointer;
         border-radius: 10px;
         width: 7rem;
         height: 5rem;
         box-shadow: inset 0 1px 0 rgb(255 255 255), inset 0 0 2px rgb(255 255 255), 0 1px 2px rgb(0 0 0);
         }
         /*바텀테이블*/
         #bottom-tabel{
         border-bottom: 1px solid  #E2E2E2;
         letter-spacing: 0.15rem;
         }
         /*table-td*/
         #refundList-table > tbody > tr > td{
         vertical-align: middle;
         }
         .bottom-td1{
         width:8rem;
         }
         .bottom-td2{
         width: 12rem;
         }
         .bottom-td3,.bottom-td4{
         width: 13rem;
         }
         .bottom-td5{
         width: 18rem;
         }
         .bottom-td7,.bottom-td8{
         width: 15rem;
         }
         /*thead*/
         .bottom-table-thead{
         background-color: #E2E2E2;
         }
         /*table-input*/
         .table-input{
         margin-left: 10rem;
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
         /*tr 마우스 포인터*/
         .refundTr{
         cursor: pointer;
         }
         #refundPage{
         display: block;
         text-align: center;
         }
         #refundPage > li > a{
         float: none;
         margin-left : -0.5rem;
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
            <div class="cate_Managerheader">결제 > <U>환불 리스트</U></div>
            <div class="title_Managerheader">환불 리스트</div>
         </div>
         <div class="main-section">
            <div class="payment-main-top">
               <div class="font_jua top-title">
                  <h2>주문 검색</h2>
               </div>
               <table class="table table-bordered top-table table-condensed table-hove" id="refundList-table">
                  <tr>
                     <td class="first-td">
                        <p class="font_jua top-table-p" id="top-table-p">등급</p>
                     </td>
                     <td>
                        <div class="radio">
                           <label class="font_jua radio-lable"><input type="radio" value="radio1" name="grade" />전체</label>
                           <label class="font_jua radio-lable"><input type="radio" value="radio1" name="grade" />흙손</label>
                           <label class="font_jua radio-lable"><input type="radio" value="radio1" name="grade" />동손</label>
                           <label class="font_jua radio-lable"><input type="radio" value="radio1" name="grade" />은손</label>
                           <label class="font_jua radio-lable"><input type="radio" value="radio1" name="grade" />금손</label>
                           <label class="font_jua radio-lable"><input type="radio" value="radio1" name="grade" />다이아손</label>
                           <label class="font_jua radio-lable"><input type="radio" value="radio1" name="grade" />타노스</label>
                        </div>
                     </td>
                  </tr>
                  <tr>
                     <td class="first-td">
                        <p class="font_jua top-table-p">검색어</p>
                     </td>
                     <td>
                        <div class="table-input">
                           <select class="form-control input-md font_jua" id="first-select">
                              <option>주문번호</option>
                              <option>2</option>
                              <option>3</option>
                              <option>4</option>
                              <option>5</option>
                           </select>
                           <input type="text" class="form-control input-md" id="first-input" placeholder="주문번호 전체를 정확히 입력하세요">
                        </div>
                     </td>
                  </tr>
                  <tr>
                     <td class="first-td">
                        <p class="font_jua top-table-p">기간</p>
                     </td>
                     <td>
                        <div class="table-input">
                           <select class="form-control input-md font_jua" id="second-select">
                              <option>주문일</option>
                              <option>2</option>
                              <option>3</option>
                              <option>4</option>
                              <option>5</option>
                           </select>
                           <input type="date" class="form-control input-md font_jua" id="second-input" placeholder="주문번호 전체를 정확히 입력하세요">
                           <span class="date-span">~</span>
                           <input type="date" class="form-control input-md font_jua" id="second-input-2" placeholder="주문번호 전체를 정확히 입력하세요">
                        </div>
                     </td>
                  </tr>
               </table>
               <button type="submit" class="font_jua top-btn">검색</button>
            </div>
            <div class="payment-main-bottom">
               <table class="table table-hover table-condensed font_jua botto" id="refundList-table">
                  <thead class="bottom-table-thead">
                     <tr>
                        <th class="bottom-td1">번호</th>
                        <th class="bottom-td2">주문일시</th>
                        <th class="bottom-td3">아이디/닉네임</th>
                        <th class="bottom-td4">이름</th>
                        <th class="bottom-td5">주문번호</th>
                        <th class="bottom-td6">주문상품</th>
                        <th class="bottom-td7">결제금액</th>
                        <th class="bottom-td8">결제방식</th>
                     </tr>
                  </thead>
                  <tr class="refundTr">
                     <td class="bottom-td1">1</td>
                     <td class="bottom-td2"><span>2020-09-26 03:10</span></td>
                     <td class="bottom-td3"><span>test_id_2</span><br>
                        <span>지존학살동민</span>
                     </td>
                     <td class="bottom-td4"><span>천동민</span></td>
                     <td class="bottom-td5"><a href="#">123123123</a></td>
                     <td class="bottom-td6"><span>천동민의 Java 특강!!</span></td>
                     <td class="bottom-td7"><span>384,000원</span></td>
                     <td class="bottom-td8"><span>카카오뱅크</span></td>
                  </tr>
                  <tr class="refundTr">
                     <td class="bottom-td1">2</td>
                     <td class="bottom-td2"><span>2020-09-26 03:10</span></td>
                     <td class="bottom-td3"><span>test_id_2</span><br>
                        <span>지존학살동민</span>
                     </td>
                     <td class="bottom-td4"><span>천동민</span></td>
                     <td class="bottom-td5"><a href="#">123123123</a></td>
                     <td class="bottom-td6"><span>천동민의 Java 특강!!</span></td>
                     <td class="bottom-td7"><span>384,000원</span></td>
                     <td class="bottom-td8"><span>카카오뱅크</span></td>
                  </tr>
                  <tr class="refundTr">
                     <td class="bottom-td1">3</td>
                     <td class="bottom-td2"><span>2020-09-26 03:10</span></td>
                     <td class="bottom-td3"><span>test_id_2</span><br>
                        <span>지존학살동민</span>
                     </td>
                     <td class="bottom-td4"><span>천동민</span></td>
                     <td class="bottom-td5"><a href="#">123123123</a></td>
                     <td class="bottom-td6"><span>천동민의 Java 특강!!</span></td>
                     <td class="bottom-td7"><span>384,000원</span></td>
                     <td class="bottom-td8"><span>카카오뱅크</span></td>
                  </tr>
               </table>
               <nav>
                  <ul class="pagination" id="refundPage">
                     <li>
                        <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        </a>
                     </li>
                     <li><a href="#">1</a></li>
                     <li><a href="#">2</a></li>
                     <li><a href="#">3</a></li>
                     <li><a href="#">4</a></li>
                     <li><a href="#">5</a></li>
                     <li>
                        <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        </a>
                     </li>
                  </ul>
               </nav>
            </div>
         </div>
      </div>
      <script>
         $(function(){
         	$('.refundTr').on('click',function(){
         		location.href = "mPayRefundDetail.do"
         	});
         });
      </script>
   </body>
</html>