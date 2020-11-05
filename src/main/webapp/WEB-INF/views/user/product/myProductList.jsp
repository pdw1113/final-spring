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
	            <a href="#">
	              <img src="resources/pUploadFiles/${ product.renamePic }" class="main_contents_img_index">
	            </a>
	            <p class="font_jua main_explain_index">
	              ${ product.title }
	            </p>
	            <div>
	              <img src="resources/img/lv1.png" class="main_rank_index">
	              <span class="font_jua">${ product.nickName }</span>
	              <span class="main_star_container_index">
	                <img src="resources/img/star.png">
	                <img src="resources/img/star.png">
	                <img src="resources/img/star.png">
	                <img src="resources/img/star.png">
	                <img src="resources/img/star.png">
	              </span>
	              <span class="font_jua">(5.0)</span>
	              <span>
	                <span class="font_jua">213명선택</span>
	                <img src="resources/img/buy.png" class="main_choice_img_index">
	              </span>
	            </div>
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
</html>