<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>NeeziT</title>
<!--폰트-->
<!-- BLACK HAN SANS 폰트 -->
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
<!-- Noto-Sans 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<!-- JUA 폰트-->
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<!--제이쿼리CDN-->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="resources/css/productListSearch.css">
</head>
<body>

	<%@ include file="../../common/header.jsp"%>

	<div class="List-NavBox">
	<!-- 	<div class="List-NavBoxFont">
			<h3>홈&nbsp;&nbsp; > &nbsp;&nbsp;웹개발</h3>
		</div> -->
		<!-- 검색창 폼 -->
		<div class="list_search_wrap">
			<div class="list_search_Mainhead">
				<
				<!-- 이거 그냥 텍스트로 쓴거 빨간색 신경 ㄴㄴ -->
			</div>
			<div class="list_searchbox_Mainhead">
				<input class="list_searchtext_Mainhead" id="text1" type="text">
				<a href=javascript:enter();><img src="resources/img/SearchGlass.png"></a>
			</div>
			<div class="list_search_Mainhead">></div>
		</div>
		
		<div class="container">
			<span class="text1">'${ search }’에 대한 검색 결과</span> <span class="text2">${ listCount } 개</span> 
		</div>
		
		 <!-- <div class="checkbox">
            <label class="font-noto Lsit-checkbox-size">
            <select class="selectbox">
            	<option>최신순</option>
				<option>가격순</option>
				<option>인기순</option>
			</select>
			</label>
         </div> -->
         <div class="checkbox">
            <label class="font-noto Lsit-checkbox-size">
            <select class="selectbox">
            	<c:if test="${ what == null || what == '최신순'}">
	            	<option>최신순</option>
					<option>가격순</option>
					<option>인기순</option>
				</c:if>
            	<c:if test="${ what == '가격순'}">
					<option>가격순</option>
	            	<option>최신순</option>
					<option>인기순</option>
				</c:if>
            	<c:if test="${ what == '인기순'}">
					<option>인기순</option>
	            	<option>최신순</option>
					<option>가격순</option>
				</c:if>	
			</select>
         </div>
	</div>
	<!--리스트 섹션-->
	<div class="Lsit-Saction">
		<!-- <div class="productOne">
			<a href="#" class="thumbnail">
				<div class="list_img_div">
					<img src="resources/img/1.png" class="list_contents_img_index">
				</div>
			</a>
			<div class="list_contents_marign">
				<p class="font_noto list_explain_index">자바 뉴비들 드루와</p>
				<div>
					<img src="resources/img/lv1.png" class="list_rank_index"> <span
						class="font_noto">조정호</span> <span
						class="list_star_container_index"> <img
						src="resources/img/star.png"> <img
						src="resources/img/star.png"> <img
						src="resources/img/star.png"> <img
						src="resources/img/star.png"> <img
						src="resources/img/star.png">
					</span> 
					<span class="font_noto">(5.0)</span>
					<span> 
						<span class="font_noto">213명선택</span> 
						<img src="resources/img/buy.png" class="list_choice_img_index">
					</span>
				</div>
			</div> -->
			
			<c:forEach var="product" items="${ productList }" varStatus="status">
			<div class="productOne">
				<input type="hidden" class="pCategory" value="${ product.category }">
				<c:url var="ProductDetail" value="productDetail.do">
					<c:param name="no" value="${ product.no }"/>
				</c:url>
				<a href="${ProductDetail}" class="thumbnail">
					<div class="list_img_div">
						<img src="resources/pUploadFiles/${ product.renamePic }" class="list_contents_img_index">
					</div>
				</a>
				<div class="list_contents_marign">
					<p class="font_noto list_explain_index">${ product.title }</p>
					<div>
						<img src="resources/img/${ product.mRankPic }" class="list_rank_index"> 
						<span class="font_noto">${ product.nickName }</span> 
						<span class="list_star_container_index"></span> 
						<span class="font_noto starNum">(${ product.star })</span> 
						<span> 
							<span class="font_noto">${ product.count }명선택</span> 
							<img src="resources/img/buy.png" class="list_choice_img_index">
						</span>
					</div>
				</div>
			</div>
        </c:forEach>

		</div>
		
		<c:if test="${ listCount ne 0 }">

		<div class="pagination">
			
				<!-- [이전] -->
				<c:if test="${ pi.currentPage eq 1 }">
					<a style="cursor:default;">«</a>
				</c:if>
				<c:if test="${ pi.currentPage ne 1 }">
					<c:url var="before" value="productListSearch.do">
						<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
							<c:param name="search" value="${search}"/>
							<c:param name="what" value="${what}"/>
					</c:url>
					<a href="${ before }" >«</a>
				</c:if>
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
					<c:if test="${ p eq pi.currentPage }">
						<a style="background-color: #FABE00; color: white; cursor:default;" id="hi">
						${ p }
						</a>
					</c:if>
					
					<c:if test="${ p ne pi.currentPage }">
						<c:url var="productListSearch" value="productListSearch.do">
							<c:param name="currentPage" value="${ p }"/>
							<c:param name="search" value="${search}"/>
							<c:param name="what" value="${what}"/>
						</c:url>
						<a href="${ productListSearch }">${ p }</a>
					</c:if>
				</c:forEach> 
				

				
				<!-- [다음] -->
				<c:if test="${ pi.currentPage eq pi.maxPage }">
					<a style="cursor:default;">»</a>
				</c:if>
				<c:if test="${ pi.currentPage ne pi.maxPage }">
					<c:url var="after" value="productListSearch.do">
						<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
							<c:param name="search" value="${search}"/>
							<c:param name="what" value="${what}"/>
					</c:url> 
					<a href="${ after }" >»</a>
				</c:if>
			</div> 
			
		</c:if>

	<%-- <table class="center">           
	                  
     <tr align="center" height="20">
		<td colspan="5" class="pagination">
			
				<!-- [이전] -->
				<c:if test="${ pi.currentPage eq 1 }">
					<a style="cursor:default;">«</a>
				</c:if>
				<c:if test="${ pi.currentPage ne 1 }">
					<c:url var="before" value="productListSearch.do">
						<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
							<c:param name="search" value="${search}"/>
							<c:param name="what" value="${what}"/>
					</c:url>
					<a href="${ before }">«</a>
				</c:if>
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
					<c:if test="${ p eq pi.currentPage }">
						<a style="background-color: #FABE00; color: white; cursor:default;">${ p }</a>
					</c:if>
					
					<c:if test="${ p ne pi.currentPage }">
						<c:url var="mUserList" value="productListSearch.do">
							<c:param name="currentPage" value="${ p }"/>
							<c:param name="search" value="${search}"/>
							<c:param name="what" value="${what}"/>
						</c:url>
						<a href="${ mUserList }">${ p }</a>
					</c:if>
				</c:forEach>
				
				<!-- [다음] -->
				<c:if test="${ pi.currentPage eq pi.maxPage }">
					<a style="cursor:default;">»</a>
				</c:if>
				<c:if test="${ pi.currentPage ne pi.maxPage }">
					<c:url var="after" value="productListSearch.do">
						<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
							<c:param name="search" value="${search}"/>
							<c:param name="what" value="${what}"/>
					</c:url> 
					<a href="${ after }" >»</a>
				</c:if>
			</td>
		</tr>
	</table>  --%>


	<%@ include file="../../common/footer.jsp"%>

	<script>
		// 페이지 클릭시 active 클래스 추가 및 제거 되는 스크립트
	    $('.pagination a').click(function(){
	 	   $('.pagination a').removeClass('active');
	 	   $(this).addClass('active');
	    });
	</script>
	
	<script>

	
	
	 $(document).on("keydown", "input[class=list_searchtext_Mainhead]", function (key) { 
	        if (key.keyCode == 13) {	        	
	        	let search = $('.list_searchtext_Mainhead').val();
	        	let temp = $(".selectbox option:selected").val();
	        	
	        	if(search.replace(/\s|  /gi, "").length == 0){
		   			alert("내용을 입력해주세요.");
		   			$('#text1').focus();
		   			return false;
		   		}
	        	
	        	window.location.href = "productListSearch.do?search=" + search + "&what=" + temp;  
	        }
	  });

	 function enter(){
		 	let search2 = $('.list_searchtext_Mainhead').val();
     		let temp2 = $(".selectbox option:selected").val();
     		
        	if(search2.replace(/\s|  /gi, "").length == 0){
	   			alert("내용을 입력해주세요.");
	   			$('#text1').focus();
	   			return false;
	   		}
     		
     		window.location.href = "productListSearch.do?search=" + search2 + "&what=" + temp2; 
	 };
	 
	 
	 $(".selectbox").change(function(){
			let search1 = '${ search }';
			let temp1 = $(".selectbox option:selected").val();
	
     		window.location.href = "productListSearch.do?search=" + search1 + "&what=" + temp1;  
	 });
	 
	</script>
	
</body>
</html>