<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <!-- 합쳐지고 최소화된 최신 CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
      <!--제이쿼리CDN-->
      <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
      <!-- 부가적인 테마 -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
      <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
      <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
      <style>
         html,
         body {
         width: 100%;
         padding: 0;
         margin: 0;

         }
         .header {
         width: 100%;
         height: 6.2rem;
         /* background-color: aqua; */
         }
         .left-bar {
         float: left;
         width: 13%;
         width:250px;
         height: 917px;
         border-right: 1px solid gainsboro;
         }

         
         .section {
         width: 86%;
         float: left;
         height: 55.5rem;
         }
         .cate_Managerheader {
         color: rgb(141, 141, 141);
         height: 3.5rem;
         line-height: 3.5rem;
         border-bottom: 1px solid #ddd;
         padding-left: 1.5rem;
         font-size : 1.3rem;
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
         .number {
         text-align: center;
         font-family: jua;
         font-size : 3rem;
         font-weight: 500;
         line-height: 1.1;
         color: inherit;
         margin-top: 20px;
         margin-bottom: 10px;
         
         }
         .stat-li{
         float: left;
         width: 30%;
         list-style: none;
         border-left: 1px solid #ddd;
         margin-left:25px;
         }
         

         /* 회원 리스트 table */
         table.type07 {
         border-collapse: collapse;
         text-align: left;
         line-height: 1.5;
         /* margin-top: 20px;
         top */
         }
         table.type07 thead {
         border-right: 1px solid #ccc;
         border-left: 1px solid #ccc;
         background: #bcbcbc;
         }
         table.type07 thead th {
         padding: 1rem;
         font-weight: bold;
         vertical-align: top;
         color: #fff;
         border: 1px solid #ccc;
         border-collapse: collapse;
         text-align: center;
         }
         table.type07 td {
         border-collapse: collapse;
         width: 35rem;
         padding: 1rem;
         vertical-align: top;
         border-bottom: 1px solid #ccc;
         font-size: 1.5rem;
         /* border: 1px solid #ccc;  */
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
         /* 사이드 여백 */
         /* .content_MemberManager .layoutSubbox_MemberManager {
         width: auto;
         margin: 0 20px;
         } */
         }

         .box {
         width: 750px;
         height: 380px;
         border: 10px solid #ddd;
         position: relative;
         top: 10px;
         float: left;
         margin: 15px;
         box-sizing: content-box;
         border-radius: 10px;
         }
         .box22 {
         width: 750px;
         height: 270px;
         border: 10px solid #ddd;
         position: relative;
         top: 10px;
         float: left;
         margin: 15px;
         box-sizing: content-box;
         border-radius: 10px;
         }
         .box1 {
         width: 100%;
         height: 40px;
         border: 3px solid #ddd;
         border-left: 0px;
         position: relative;
         box-sizing: content-box;
         text-align: center;
         line-height: 40px;
         font-family: 'jua';
         font-size: 25px;
         }
         .box2 {
         width: 100%;
         height: 90%;
         border: 0px;
         position: relative;
         box-sizing: content-box;
         text-align: left;
         overflow-y: hidden;
         overflow-x: hidden;
         }
         /* 숫자 올라가는  */
         /* https://goddino.tistory.com/37 */
         .stat-ul {
         width: 100%;
         color: #666;
         text-align: center;
         }
         .stat-li:first-child {
         border-left: 0;
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
         /* 속도가 느린거 같으면 이걸로 */
         /* https://gahyun-web-diary.tistory.com/7 */   
         .fontsize{
         	font-size:13px;
         }
         
         .noReact{
         width: 1903px;
         }
         
         .index_head_Mainhead{
		 width: 1903px;	
         }

         
         
      </style>
   </head>
   <body>
      <div class="header">
         <%@ include file="../../common/header.jsp" %>
      </div>
      
      <div class="noReact">
      
      <div class="left-bar">
         <%@ include file="../common/mLeftBar.jsp" %>
      </div>
      <div class="section">
         <div class="mian-header">
            <div class="cate_Managerheader">통계 > <U>통계</U></div>
            <!-- <button style="position: absolute; top: 130px; left: 1750px;">저장</button>
               <div class="title_Managerheader">통계</div> -->
            <ul class="stat-ul">
               <li class="stat-li">
                  <h2 class="number">1785</h2>
                  <i>Clients</i>
               </li>
               <li class="stat-li">
                  <h2 class="number">987</h2>
                  <i>Gosu</i>
               </li>
               <li class="stat-li">
                  <h2 class="number">350</h2>
                  <i>Deal</i>
               </li>
            </ul>
         </div>
         <div class="box">
            <div class="box1">방문자수</div>
            <div class="box2">
               <%@ include file="mStatisticsGraph.jsp" %>
            </div>
         </div>
         <div class="box">
            <div class="box1">가입자수</div>
            <div class="box2">
               <%@ include file="mStatisticsGraph2.jsp" %>
               <%-- <%@ include file="../mPolicy/mPolicy.jsp" %> --%>
            </div>
         </div>
         <div class="box22">
            <div class="box1">능력자 상품 조회수</div>
            <div class="box2">
               <div class="layoutSubbox_MemberManager">
                  <table class="type07">
                     <thead>
                        <tr class="fontsize">
                           <th scope="cols">순위</th>
                           <th scope="cols">조회수</th>
                           <th scope="cols">주문상품</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td>1</td>
                           <td>1,000,000</td>
                           <td>천동민의 JAVA 특강!!</td>
                        </tr>
                        <tr>
                           <td>2</td>
                           <td>123,143</td>
                           <td>정상뉴의 Framework 세계</td>
                        </tr>
                        <tr>
                           <td>3</td>
                           <td>23,143</td>
                           <td>문혜란의 보안이란 무엇인가?</td>
                        </tr>
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
         <div class="box22">
            <div class="box1">상품 판매 순위</div>
            <div class="box2">
               <div class="layoutSubbox_MemberManager">
                  <table class="type07">
                     <thead>
                        <tr class="fontsize">
                           <th scope="cols">순위</th>
                           <th scope="cols">상품</th>
                           <th scope="cols">닉네임</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td>1</td>
                           <td>천동민 기모링</td>
                           <td>미스터 천</td>
                        </tr>
                        <tr>
                           <td>2</td>
                           <td>조정호</td>
                           <td>미스터 조</td>
                        </tr>
                        <tr>
                           <td>3</td>
                           <td>이호진 고구마</td>
                           <td>미스터 스윗 포테이토</td>
                        </tr>
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
      </div>
     </div> 
      <script>
         $(function () {
             var count0 = count1 = count2 = 0;
         
             timeCounter();
         
             function timeCounter() {
         
                 id0 = setInterval(count0Fn, 0.0020738853);
         
                 function count0Fn() {
                     count0++;
                     if (count0 > 1785) {
                         clearInterval(id0);
                     } else {
                         $(".number").eq(0).text(count0);
                     }
         
                 }
         
                 id1 = setInterval(count1Fn, 0.13171226);
         
                 function count1Fn() {
                     count1++;
                     if (count1 > 987) {
                         clearInterval(id1);
                     } else {
                         $(".number").eq(1).text(count1);
                     }
                 }
         
                 id2 = setInterval(count2Fn, 0.00157142857);
         
                 function count2Fn() {
                     count2++;
                     if (count2 > 350) {
                         clearInterval(id2);
                     } else {
                         $(".number").eq(2).text(count2);
                     }
                 }
             }
         });
         
      </script>
   </body>
</html>