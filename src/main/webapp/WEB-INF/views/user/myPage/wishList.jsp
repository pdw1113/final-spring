<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>찜상품</title>
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
         ul,
         li {
         list-style: none;
         }
         /* 전체 div */
         .content_mywish {
         width: 100%;
         padding: 57px 0 125px 0;
         }
         .content_mywish .layoutSubbox_mywish {
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         .content_mywish .layoutSubbox_mywish:after {
         content: "";
         display: block;
         clear: both;
         }
         /* 구매내역 txt */
         .content_mywish .tit2_mywish {
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
         /* 리스트 div*/
         .pOrderSearch_mywish {
         display: table;
         width: 100%;
         background: #ffff;
         border-bottom: 1px #000 solid;
         }
         .pLeft_mywish{
         display: table;
         margin-left: 70px;
         }
         /*리스트Section*/
         .Lsit-Saction_mywish {
         display: table-cell;
         vertical-align: middle;
         width: 14rem;
         height: 10rem;
         }
         /*썸네일 영역*/
         .mywish_img_index {
         width: 100%;
         object-fit: fill;
         height: 100%;
         transition: all 0.6s;
         vertical-align: middle;
         }
         .mywish_img_div {
         overflow: hidden;
         border-radius: 5%;
         box-shadow: 0 0 1rem rgb(0, 0, 0, 0.7);
         width: 82%;
         margin-left: 0.9rem;
         object-fit: cover;
         }
         /* 제목 + 이름 div */
         .pWrap_mywish {
         width: 400px;
         margin-left: 50px;
         }
         /* 상품 제목 */
         .pTitle_mywish {
         font-family: sans-serif;
         font-weight: 600;
         font-size: 1.3rem;
         margin: 20px;
         }
         /* 능력자 이름 */
         .pName_mywish {
         font-family: sans-serif;
         font-weight: 400;
         font-size: 1.1rem;
         margin: 37px 20px 20px 20px;
         }
         /* 별점 */ 
         .pWrap_mywish .rating_mywish i{
         color:orange;
         }
         /* 찜상품 div의 오른쪽 부분 찜해제버튼 + 가격 */
         .pRight_mywish {
         display: table-cell;
         }
         /* 찜해제버튼 */
         .wishCancle_mywish .btn-default_mywish {
         background-color: #ddd;
         border: none;
         color: black;
         padding: 6px 16px;
         text-align: center;
         font-size: 17px;
         border-radius: 5px;
         transition: 0.3s;
         outline: none;
         box-shadow: 0px 3px 0px rgba(0, 0, 0, 0.3);
         cursor:pointer;
         }
         /* 찜해제버튼 hover */
         .wishCancle_mywish .btn-default_mywish:hover {
         background-color: #fabe00;
         font-weight: 500;
         color: white;
         outline: none;
         }
         /* 가격 */
         .price_mywish {
         color: red;
         font-size: 25px;
         margin-top: 50px;
         margin-right: 10px;
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
      <%@ include file="common/nav.jsp" %>
      <div class="content_mywish">
         <div class="dataInform_mywish">
            <div class="layoutSubbox_mywish">
               <div class="tit2_mywish">나의 관심상품</div>
               <!-- 상품 목록 리스트 start!! -->
               <!-- 상품 1 -->
               <div class="pOrderSearch_mywish">
                  <div class="pLeft_mywish">
                     <div class="Lsit-Saction_mywish">
                        <div class="mywish_img_div">
                           <img src="resources/img/2.png" class="mywish_img_index">
                        </div>
                     </div>
                     <div class="pWrap_mywish">
                        <div class="pTitle_mywish">CSS 디자인? 민주에게~</div>
                        <div class="pName_mywish">
                           서민주
                           <!-- 별점 -->
                           <div class="rating_mywish" data-rate="3">
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <span>(32)</span>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="pRight_mywish">
                     <div class="wishCancle_mywish"><button class="btn-default_mywish">찜 해제</button></div>
                     <div class="price_mywish">￦30,076</div>
                  </div>
               </div>
               <!-- 상품 2 -->
               <div class="pOrderSearch_mywish">
                  <div class="pLeft_mywish">
                     <div class="Lsit-Saction_mywish">
                        <div class="mywish_img_div">
                           <img src="resources/img/2.png" class="mywish_img_index">
                        </div>
                     </div>
                     <div class="pWrap_mywish">
                        <div class="pTitle_mywish">Java를 잡아봐~</div>
                        <div class="pName_mywish">
                           천동민
                           <!-- data-rate를 통해 스크립트로 별 색칠되게 구현 예정(혜란)-->
                           <div class="rating_mywish" data-rate="3">
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <span>(50)</span>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- 찜 해제 버튼 + 가격 -->
                  <div class="pRight_mywish">
                     <div class="wishCancle_mywish"><button class="btn-default_mywish">찜 해제</button></div>
                     <div class="price_mywish">￦50.000</div>
                  </div>
               </div>
               <!-- 상품 목록 리스트 end!! -->
            </div>
         </div>
      </div>
      <!-- footer 영역 -->
      <%@ include file="../../common/footer.jsp" %>
   </body>
</html>