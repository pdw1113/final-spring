<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Header</title>
    <!-- BLACK HAN SANS 폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">

    <!-- JUA 폰트-->
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    
    <!-- 폰트 어썸 -->
    <script src="https://kit.fontawesome.com/fef720d792.js" crossorigin="anonymous"></script>
   
	<link rel="stylesheet" type="text/css" href="resources/css/myProductList.css">
</head>
<body>
<div class="header">   
<%@ include file="../../common/header.jsp" %>
</div>
  <div class="main_container_index">
    <span class="main_title_index">상품 목록</span>
    <div>
      <ul class="main_contents_container_index">
      
        <c:forEach var="product" items="${ myProductList }" varStatus="status">
	        <li class="main_contents_index">
	          <div>
	          	<c:url var="productUpdate" value="productUpdate.do">
					<c:param name="no" value="${ product.no }"/>
				</c:url>
				<c:url var="myProductDetail" value="myProductDetail.do">
					<c:param name="no" value="${ product.no }"/>
				</c:url>
				<c:url var="productDelete" value="productDelete.do">
					<c:param name="no" value="${ product.no }"/>
				</c:url>
	            <a href="${ myProductDetail }">
	              <img src="resources/pUploadFiles/${ product.renamePic }" class="main_contents_img_index">
	            </a>
	            <p class="font_jua main_explain_index">
	              ${ product.title }
	            </p>
	            <div>
	              <img src="resources/img/${ product.mRankPic }" class="main_rank_index">
	              <span class="font_jua">${ product.nickName }</span>
	              <span class="main_star_container_index">
	              </span>
	              <span class="font_jua starNum">(${ product.star })</span>
	              <span>
	                <span class="font_jua">${ product.count }명선택</span>
	                <img src="resources/img/buy.png" class="main_choice_img_index">
	              </span>
	            </div>
	          </div>
	          <div>
	        	<a class="btn_sgm" href="${ productUpdate }">수정</a>
                <a class="btn_sgm_2" href="${productDelete}" id="cancel">삭제</a>
              </div>
	        </li>
        </c:forEach>
      </ul>
    </div>
  </div>
<div>
<%@ include file="../../common/footer.jsp" %>
</div>
</body>
		
 		<script>
  		// 상품 삭제 확인창
		$('.btn_sgm_2').on('click',function(){
			let co = confirm('정말로 삭제하시겠습니까?');
			if(co){
				return true;
			}else{
				return false;
			}
		}); 
 		
 		
        // appned 할 곳
        let starAppend = document.getElementsByClassName('main_star_container_index');
        // 상품의 갯수만큼 for문
        let pCount = $('.main_contents_index').length;
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
</html>