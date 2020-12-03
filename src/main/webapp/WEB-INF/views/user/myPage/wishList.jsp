<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NeeziT</title>
<script src="https://kit.fontawesome.com/04dc22ed0b.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/wishList.css">
</head>
<body>
	<!-- header 영역 -->
	<%@ include file="../../common/header.jsp"%>
	<!-- nav 영역 -->
	<%@ include file="common/nav.jsp"%>
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
									<c:url var="ProductDetail" value="productDetail.do">
										<c:param name="no" value="${ p.no }" />
									</c:url>
									<a href="${ ProductDetail }"> 
										<img src="resources/pUploadFiles/${ p.renamePic }" class="mywish_img_index">
									</a>
								</div>
							</div>
							<div class="pWrap_mywish">
								<div class="pTitle_mywish">${p.title}</div>
								<div class="pName_mywish">
									${p.nickName}
									<!-- 별점 -->
									<div class="rating_mywish" data-rate="3">
										<span class="appendStar"></span><span class="starNum">(${ p.star })</span>
									</div>
								</div>
							</div>
						</div>
						<div class="pRight_mywish">
							<input type="hidden" value="${ p.no }" name="no" class="pNo" />
							<div class="wishCancle_mywish">
								<button class="btn-default_mywish" value="${ p.no }">찜해제</button>
							</div>
							<div class="price_mywish">￦${p.price}</div>
						</div>
					</div>
				</c:forEach>
				<!-- 상품 목록 리스트 end!! -->
			</div>
		</div>
	</div>
 		<script>
        // appned 할 곳
        let starAppend = document.getElementsByClassName('appendStar');
        // 상품의 갯수만큼 for문
        let pCount = $('.pOrderSearch_mywish').length;
        // 숫자의 배열
        let sNumber = [];

        for (var i = 0; i < pCount; i++) {
                        // 숫자로 변환이 꼭 필요하다
            sNumber[i] = Number(document.getElementsByClassName('starNum')[i].innerText.substring(1,4)); // 각각의 별점 숫자들
            
            let star = starAppend[i]; // append 할 곳
            
                // 정수가 아닌 소숫점일 때,
                if(!Number.isInteger(sNumber[i])){

                    // ex) 3.5일 때     3.5-1 = 2.5 총 3번(0,1,2) 꽉찬별찍고 
                    for (var j = 0; j < sNumber[i]-1; j++) {
                        var iii = document.createElement("i");
                        iii.className = "fas fa-star"; // 꽉찬별
                        star.appendChild(iii);
                    }

                    // 반별찍고   2 < 3.5 => 반별 하나 찍고
                    for (var l = j; l < sNumber[i]; l++) {
                        var lll = document.createElement("i");
                        lll.className = "fas fa-star-half-alt"; // 반별
                        star.appendChild(lll);
                    }
                    // 5 - 3.5 - 1 => 0.5 빈별 찍고
                    for (var k = 0; k < 5 - sNumber[i] - 1; k++) {
                        var jjj = document.createElement("i");
                        jjj.className = "far fa-star"; // 빈별
                        star.appendChild(jjj);
                    }
            
                }else{

                    for (var j = 0; j < sNumber[i]; j++) {
                        var iii = document.createElement("i");
                        iii.className = "fas fa-star";
                        star.appendChild(iii);
                    }

                    for (var k = 0; k < 5 - sNumber[i]; k++) {
                        var jjj = document.createElement("i");
                        jjj.className = "far fa-star";
                        star.appendChild(jjj);
                    }


                }
        }
        
    </script>
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
	<%@ include file="../../common/footer.jsp"%>
</body>
</html>