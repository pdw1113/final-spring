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
	  <link rel="stylesheet" type="text/css" href="resources/css/wishList.css">
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