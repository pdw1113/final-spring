<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>list(search)</title>
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
		<div class="List-NavBoxFont">
			<h3>홈&nbsp;&nbsp; > &nbsp;&nbsp;웹개발</h3>
		</div>
		<!-- 검색창 폼 -->
		<div class="list_search_wrap">
			<div class="list_search_Mainhead">
				<
				<!-- 이거 그냥 텍스트로 쓴거 빨간색 신경 ㄴㄴ -->
			</div>
			<div class="list_searchbox_Mainhead">
				<input class="list_searchtext_Mainhead" type="text" value="spring">
				<a href="#"><img src="resources/img/SearchGlass.png"></a>
			</div>
			<div class="list_search_Mainhead">></div>
		</div>
		
		<div class="container">
			<span class="text1">'spring’에 대한 검색 결과</span> <span class="text2">"5개"</span>
		</div>
		
		 <div class="checkbox">
            <label class="font-noto Lsit-checkbox-size">
            <input type="checkbox" class="checkbox_css" > 접속중  </label>
            <select class="selectbox">
            	<option>최신순</option>
				<option>가격순</option>
				<option>인기순</option>
			</select>
         </div>
	</div>
	<!--리스트 섹션-->
	<div class="Lsit-Saction">
		<div class="productOne">
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
			</div>
		</div>
		<div class="productOne">
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
			</div>
		</div>
		<div class="productOne">
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
			</div>
		</div>
		<div class="productOne">
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
			</div>
		</div>
		<div class="productOne">
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
			</div>
		</div>
		<div class="productOne">
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
			</div>
		</div>
		<div class="productOne">
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
			</div>
		</div>
	</div>
	<!-- Paging -->
	<div class="pagination">
	  <a href="#">&laquo;</a>
	  <a class="active" href="#">1</a>
	  <a href="#">2</a>
	  <a href="#">3</a>
	  <a href="#">4</a>
	  <a href="#">5</a>
	  <a href="#">6</a>
	  <a href="#">&raquo;</a>
	</div>

	<%@ include file="../../common/footer.jsp"%>

	<script>
		// 페이지 클릭시 active 클래스 추가 및 제거 되는 스크립트
	    $('.pagination a').click(function(){
	 	   $('.pagination a').removeClass('active');
	 	   $(this).addClass('active');
	    });
	</script>
</body>
</html>