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
               <c:forEach var="p" items="${ product }">
                 <div class="pOrderSearch_mywish">
                  <div class="pLeft_mywish">
                     <div class="Lsit-Saction_mywish">
                        <div class="mywish_img_div">
                           <img src="resources/pUploadFiles/${p.renamePic }" class="mywish_img_index">
                        </div>
                     </div>
                     <div class="pWrap_mywish">
                        <div class="pTitle_mywish">${p.title}</div>
                        <div class="pName_mywish">
                    ${p.nickName}   
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
                   	 <input type="hidden" value="${ p.no }" name="no" class="pNo"/>	
                     <div class="wishCancle_mywish"><button class="btn-default_mywish" value="${ p.no }">찜 해제</button></div>
                     <div class="price_mywish">￦${p.price}</div>
                  </div>
               </div>
               </c:forEach>
               <!-- 상품 목록 리스트 end!! -->
            </div>
         </div>
      </div>
      <script>
      $('.btn-default_mywish').click(function(){
		  let result = confirm('찜해제 하시겠습니까?');       // 확인창
		  let pNo = $(this).val(); 					// pNo 벨류값
		  if(result){
			$.ajax({
				url:"wishDelete.do",
				data:{
					no: pNo
				},
				type:"post",
				success:function(data){
					if(data == "ok"){
						alert('찜해제 완료');
						location.reload();				// 삭제된걸 보여주기위해 새로고침을 해준다.
					}
				},error:function(request,status,errorData){
					console.log(request.status + ":" + errorData);
				}
			})
		  }
      });

      </script>
      <!-- footer 영역 -->
      <%@ include file="../../common/footer.jsp" %>
   </body>
</html>