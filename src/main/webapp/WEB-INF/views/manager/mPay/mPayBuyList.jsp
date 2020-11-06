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
      
  		<link rel="stylesheet" type="text/css" href="resources/css/mPayBuyList.css">
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
            <div class="cate_Managerheader">결제 > <U>구매 확정 리스트</U></div>
            <div class="title_Managerheader">구매 확정 리스트</div>
         </div>
         <div class="main-section">
            <div class="payment-main-top">
               <div class="font_jua top-title">
                  <h2>주문 검색</h2>
               </div>
               <table class="table table-bordered top-table table-condensed">
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
               <table class="table table-hover table-condensed font_jua botto" id="bottom-tabel">
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
                  <tr>
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
                  <tr>
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
                  <tr>
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
                  <ul class="pagination" id="byPage">
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
         
         })
      </script>
   </body>
</html>