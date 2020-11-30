<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지사항</title>
<!-- Noto-Sans 폰트-->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<!-- JUA 폰트-->
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<!-- JQUERY-->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- css파일 -->
<link rel="stylesheet" type="text/css"
	href="./resources/css/noticeList.css">
</head>
<body>
	<!-- 임시로 넣어놓은 헤더 아이프레임 -->
	<%@ include file="../common/header.jsp"%>
	<%@ include file="common/nav.jsp"%>
	<div id="mainWrapper">
		<ul>
			<!-- 게시판 목록  -->
			<li>
				<ul class="ulTable">
					<li>
						<ul class="font_jua">
							<li>No</li>
							<li>제목</li>
							<li>작성일</li>
							<li>작성자</li>
							<li>조회수</li>
						</ul>
					</li>
					<!-- 게시물이 출력될 영역 -->
					<c:forEach var="n" items="${notice}">
						<c:url var="noticeDetail" value="noticeDetail.do">
							<c:param name="getNnum" value="${n.nNum}" />
						</c:url>
						<li>
							<ul>
								<li>${n.nNum}</li>
								<li class="left" onclick="location.href='${noticeDetail}'">${n.nTitle}</li>
								<li>${n.nCdate}</li>
								<li>관리자</li>
								<li>${n.nCount}</li>
							</ul>
						</li>
					</c:forEach>
			</li>
			<!-- 게시판 페이징 영역 -->
			<li>
			<table class="notice_ndetail">
				<tr align="center" height="20" >
				<td colspan="5" class="pagination">
				
					<!-- [이전] -->
					<c:if test="${ pi.currentPage eq 1 }">
						<a style="cursor:default;">«</a>
					</c:if>
					<c:if test="${ pi.currentPage ne 1 }">
						<c:url var="before" value="noticeList.do">
							<c:param name="currentPage" value="${pi.currentPage - 1}"/>
							<c:param name="search_sel" value="${search_sel}"/>
							<c:param name="search_text" value="${search_text}"/>
						</c:url>
						<a href="${ before }">«</a>
					</c:if>
					
					<!-- 페이지 -->
					<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
						<c:if test="${ p eq pi.currentPage }">
							<a style="background-color: #FABE00; color: white; cursor:default;">${ p }</a>
						</c:if>
						
						<c:if test="${ p ne pi.currentPage }">
							<c:url var="WalletPagination" value="noticeList.do">
								<c:param name="currentPage" value="${p}"/>
								<c:param name="search_sel" value="${search_sel}"/>
								<c:param name="search_text" value="${search_text}"/>
							</c:url>
							<a href="${ WalletPagination }">${ p }</a>
						</c:if>
					</c:forEach>
					
					<!-- [다음] -->
					<c:if test="${ pi.currentPage eq pi.maxPage }">
						<a style="cursor:default;">»</a>
					</c:if>
					<c:if test="${ pi.currentPage ne pi.maxPage }">
						<c:url var="after" value="noticeList.do">
							<c:param name="currentPage" value="${pi.currentPage + 1}"/>
							<c:param name="search_sel" value="${search_sel}"/>
							<c:param name="search_text" value="${search_text}"/>
						</c:url> 
						<a href="${ after }" >»</a>
					</c:if>
				</td>
			</tr>
		</table>
			</li>
			<!-- 검색 폼 영역 -->
			<li class='SearchOption'>
			<form action="noticeList.do" method="POST">
				<div id='search_div_notice'>
					<select id='selSearchOption' class="input_design" name ="search_sel">
						<option value='A'>제목+내용</option>
						<option value='T'>제목</option>
						<option value='C'>내용</option>
					</select> 
					<input id='txtKeyWord' class="input_design" name="search_text"/> 
					<button class="input_design btn_search">검색</button>
					<input type="button" value="글작성" class="input_design btn_search" onclick="location.href='noticeInsert.do';">
				</div>			
			</form>
			</li>
		</ul>
	</div>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>