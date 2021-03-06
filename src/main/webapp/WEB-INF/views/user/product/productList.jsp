<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	  <link rel="stylesheet" type="text/css" href="resources/css/productList.css">
	  <!-- 폰트 어썸 -->
	  <script src="https://kit.fontawesome.com/fef720d792.js" crossorigin="anonymous"></script>
	  
	  <link rel="stylesheet" type="text/css" href="resources/css/loading2.css">

   </head>
   <body>
	  <div class="header">   
   	  <%@ include file="../../common/header.jsp" %>
   	  </div>
      <div class="List-NavBox">
         <div class="List-NavBoxFont">
            <h3>홈&nbsp;&nbsp; > &nbsp;&nbsp;<span id="category1"></span></h3>
         </div>
         <table class="table_plist">
         
         <!--<c:set var="cd" value="JSON.parse('${categoryList}')"/>-->
         
       <c:forEach var="c" items="${ categoryList2 }" varStatus="status2">
			<tr>
				<td class="List-NavTableTd">
					<p class="font_noto List-NavPtag">
						<c:if test="${c.level == 1}">
		               		${ c.cateName }
		              </c:if>
					</p>
				</td>
				<td id="testTable">
					<c:forEach var="c" items="${ categoryList }" varStatus="status1">
							<c:if
								test="${status2.current.cateCode == status1.current.cateCodeRef}">
								<button class="font_noto List-Button">${ status1.current.cateName }</button>
							</c:if>
					</c:forEach>
					<p class="font_noto List-NavPtag"></p>
				</td>
			</tr>
		</c:forEach> 
            <tr>
               <td class="row Cancle-Container List-NavTableTd">
                  <span class="font_noto List-NavPtag">선택한필터</span>
                  <button class="font_jua List-NavButton">초기화</button>
               </td>
               <td class="last-nav-td">
               </td>
            </tr>
         </table>
         <div class="checkbox">
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
         <div>
			
         </div>
      </div>
      <!--리스트 섹션-->
	<div class="Lsit-Saction">
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
    <%@ include file="../../common/footer.jsp" %>	
	<script>
	
		// 무한 스크롤
	    var $doc=$(document);	
	    var $win=$(window);

	    let startPage = 10;
	    let endPage = 18;
	    let addStar = 0;
	    
	    $(window).scroll(function(){ 
	        if ($doc.height()-$win.height()-$(this).scrollTop() == 0) {
	        	
	    	    let navNo = ${categoryList}[0].cateCode;
				let whatTemp = $(".selectbox option:selected").val();
	    	    
	    		$.ajax({
	    			url:"infinityScroll.do",
	    			data:{
	    				navNo:navNo,
	    				startPage : startPage,
	    				endPage : endPage,
	    				what:whatTemp
	    			},
	    			dataType:"json",
	    			success:function(data){
	    				
	    				$cmtWrap = $(".Lsit-Saction");
	    				
	    				var $divF; // 1단계
						
						var $inputS; // 2단계
						var $aS; // 2-1단계
						var $divS; // 2-2단계
						
						var $divImg; // 3단계
						var $pT; // 3-1단계
						var $divT;	// 3-2 단계
						
						var $imgP; // 4단계
						var $imgR; // 4-1단계
						var $spanN; // 4-2단계
						var $spanS; // 4-3단계
						var $spanSN; // 4-4단계
						var $spanF; // 4-5단계
						
						var $spanC; // 5단계
						var $imgbuy; // 5단계
						
	    				console.log(data);
						
	    				if(data.length > 0){ // 게시글이 있을 경우
	    					for(var i in data){
	    			        	
	    						$divF = $("<div class='productOne'>").addClass("product" + addStar); // 1단계
	    						
	    						$inputS = $("<input type='hidden' class='pCategory'>").attr("value",data[i].category); // 2단계 hidden category
	    						$aS = $("<a class='thumbnail'>").attr("href", "productDetail.do?no=" + data[i].no); // 2-1단계 a 태그
	    						$divS = $("<div class='list_contents_marign'>"); // 2-2단계 div
	    						
	    						$divImg = $("<div class='list_img_div'>"); // 3단계 img container
	    						$pT = $("<p class='font_noto list_explain_index'>").html(data[i].title); // 3-1단계 p태그 제목
	    						$divT = $("<div>"); // 3-2단계 div 여러가지
	    						
	    						$imgP = $("<img class='list_contents_img_index'>").attr("src","resources/pUploadFiles/" + data[i].renamePic ); // 4단계 상품 사진
	    						
	    						$imgR = $("<img class='list_rank_index'>").attr("src","resources/img/lv1.png"); // 4단계 계급사진
	    						$spanN = $("<span class='font_noto'>").html(data[i].nickName); // 4단계 닉네임
	    						$spanS = $("<span class='list_star_container_index'>").addClass("list_star" + addStar); // 4단계 별 컨테이너
	    						$spanSN = $("<span class='font_noto starNum'>").html("(" + parseFloat(data[i].star).toFixed(1) + ")").addClass("starclass" + addStar); // 4단계 별점
	    						$spanF = $("<span>");	// 4단계 span 태그
	    						
	    						$spanC = $("<span class='font_noto'>").html(data[i].count + "명선택"); // 5단계 몇명 선택
	    						$imgbuy = $("<img src='resources/img/buy.png' class='list_choice_img_index'>"); // 선택 이미지
	    						
	    						// ---------------------------------------------------
	    						
	    						$spanF.append($spanC); // 5단계 추가
	    						$spanF.append($imgbuy); // 5단계 추가
	    						
	    						$divT.append($imgR); // 4단계 추가
	    						$divT.append("&nbsp;");
	    						$divT.append($spanN); // 4단계 추가
	    						$divT.append("&nbsp;");
	    						$divT.append($spanS); // 4단계 추가
	    						$divT.append("&nbsp;");
	    						$divT.append($spanSN); // 4단계 추가
	    						$divT.append("&nbsp;");
	    						$divT.append($spanF); // 4단계 추가
	    						
	    						$divImg.append($imgP); // 4단계 추가
	    						
	    						$aS.append($divImg); // 3단계 추가
	    						$divS.append($pT); // 3단계 추가
	    						$divS.append($divT); // 3단계 추가
	    						
	    						$divF.append($inputS); // 2단계 추가
	    						$divF.append($aS); // 2단계 추가
	    						$divF.append($divS); // 2단계 추가
	    						
	    						$cmtWrap.append($divF);
	    			        }
	    				
	    				}
	    				
	    				// 시작 페이지 ROWNUM + 9
 		                startPage = startPage + 9;
	    				// 끝 페이지  ROWNUM + 9
 		                endPage  = endPage + 9; 
	    				// 별 계산해주는 함수
 		                addedStar("list_star" + addStar, ".product" + addStar, "starclass" + addStar);
	    				// 로딩 될 때마다 불러오는 클래스 값 변경해주기.
		                addStar++;
	    				
		                filter();
 		                
	    			},error:function(request,status,errorData){
	    				console.log(request.status + ":" + errorData);
	    			}
	    		});
	        }
	    });
    </script>
    
    <script>
		
    	// 처음 9개 별 찍어주기
    	addedStar('list_star_container_index', '.productOne', 'starNum');
		
    	// 매개변수를 통해 별 그려주는 함수
    	// addedStar(추가해줄 클래스명, 추가 해야 할 갯수, 숫자값 클래스);
        function addedStar(appendPlace, productNum, starPoint){
        	
        	// appned 할 곳
            let starAppend = document.getElementsByClassName(appendPlace);
            // 상품의 갯수만큼 for문
            let pCount = $(productNum).length;
            // 숫자의 배열
            let sNumber = [];

            for (var i = 0; i < pCount; i++) {
            	
            	// 숫자로 변환해주기
                sNumber[i] = Number(document.getElementsByClassName(starPoint)[i].innerText.substring(1,4));
                
                // append 할 곳
                let star = starAppend[i]; 
                
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
        }
    </script>
    
	<script>
		// 최신순, 인기순, 가격순
		let tempvar = ${categoryList}[0].cateCode;
		
		$(".selectbox").change(function(){
			let temp = $(".selectbox option:selected").val();
			window.location.href = "productList.do?navNo=" + tempvar + "&what=" + temp;
		});
		
		/***** 카테고리 *****/
		let filter = function(){
			// 선택한 카테고리가 있을때만 실행
			if($(".last-nav-td").children().length != 0){
				
				let choiceCate = []; // 선택한 카테고리 배열
				let cate; 			 // 상품 카테고리 배열
		
				let result = 0; 	 // 결과값
									
				// 클릭한 카테고리를 배열로 만들기
				$(".last-nav-td").children().each(function(index,item){
					
					// 클릭한 3분류 카테고리와
					let singleCategory = item.innerHTML;
					choiceCate.push(singleCategory);
				});
				
				// 상품 하나의 카테고리를 배열로 만들기
				$(".pCategory").each(function(index,item){
					
					// product가 갖고 있는 카테고리
					cate = item.value.split(",");
					
					// 상품 카테고리 배열 <=> 선택한 카테고리 배열 비교
					for(var i = 0; i < choiceCate.length; i++){
						console.log("선택한 카테고리 : " + choiceCate[i]);
						for(var j = 0; j < cate.length; j++){
							console.log(i + "번 상품의 " + j + "번째 카테고리" + cate[j]);
							if(cate[j] == choiceCate[i]){
								result++;
							}
						}
					}
					
					// 선택한 카테고리의 갯수와 result를 비교, 같으면 전체 카테고리가 전부 포함되어 있는 것이므로 off 클래스 제거
					if(result == $(".last-nav-td").children().length){
						$(this).parent().removeClass('off');
					}
					// 같지 않다면 카테고리가 1개라도 부족하므로 off 클래스 추가
					else{
						$(this).parent().addClass('off');
					}
					
					// 결과값 초기화
					result = 0;
				});
			}				
			// 선택한 필터가 아무것도 없을 때 off를 지워서 전체가 보일 수 있도록 한다.
			else{
				$(".pCategory").parent().removeClass('off');
			}
		}
		/***** 카테고리 *****/
		
		$(function() {
			/*마우스클릭시 버튼 색상변경*/
			$('.List-Button').click(function() {
				$(this).toggleClass('yellowButton');

				let ClickWord = $(this).html();
				
				/* 제거 메소드 */
				$('.last-nav-td button').filter(function() {
					if ($(this).html() === ClickWord) {
						$(this).remove();
					}
				});
				
				/*카테고리 클릭시 필터로 넘어가는 기능 (미완성)*/
				var btn = this.outerHTML;
				
				/* 추가 메소드 */
				if (this.className == "font_noto List-Button yellowButton") {
					$('.last-nav-td').append(btn); 
				}
				
				filter();
			});

			/* ★★★ 상뉴가 만든 코드 ★★★★ */

			/* 클릭 시 동적으로 추가 된 요소 제거*/
			/* 
			   왜 $('.last-nav-td button').click(function(){})이 작동되지 않을까??
			   
			   이유 : https://jeongmatt.blogspot.com/2020/10/append-appendto-script-javascriptjquery.html
			
			 */
			$(document).on("click", ".last-nav-td button", function() {

				$(this).remove();

				let ClickWord = $(this).html();

				$('.List-Button').filter(function() {
					if ($(this).html() === ClickWord) {
						$(this).toggleClass('yellowButton');
					}
				});
				
				filter();

			});

			/* ★★★ 상뉴가 만든 코드 ★★★★ */

			/*드롭다운시 텍스트 변경*/
			$('.dropdown-menu li a')
					.click(
							function() {
								var selText = $(this).text();
								$(this)
										.parents('.btn-group')
										.find('.dropdown-toggle')
										.html(
												selText
														+ ' <span class="caret"></span>');/*btn-group 에있는 dropdown-toggle찾아서 변경 */
							});

			/*초기화 클릭시 버튼색 없어짐*/
			$('.List-NavButton').on('click', function() {
				$('.last-nav-td').children().remove(); /*td에있는 버튼들 제거*/
				$('.List-Button').attr('class', 'font_noto List-Button'); /*버튼 속성에 초기 버튼 css클래스 적용*/
				
				filter();
			})
		});
	</script>
	<script>
         // 컨트롤러에서 데이터 받기
         var jsonData = JSON.parse('${categoryList}');
         
         var cate1Arr = new Array();
         var cate1Obj = new Object();
         
         
         
         // 1차 분류 셀렉트 박스에 삽입할 데이터 준비
         for(var i = 0; i < jsonData.length; i++) {
        	 
        	 
          
          if(jsonData[i].level == "1") {
           cate1Obj = new Object();  //초기화
           cate1Obj.cateCode = jsonData[i].cateCode;
           cate1Obj.cateName = jsonData[i].cateName;
           cate1Arr.push(cate1Obj);
           
          }
         }
         

         // 1차 분류 셀렉트 박스에 데이터 삽입
         var cate1Select = $("#category1")
 
      	for(var i = 0; i < cate1Arr.length; i++) {
         	 cate1Select.append("<span value='" + cate1Arr[i].cateCode + "'>"
               + cate1Arr[i].cateName + "</span>"); 
         } 
         
         
         //------------------------------------------------------------//
       
         $(document).on("change", "category", function(){
        	 
        	 var jsonData2 = JSON.parse('${ categoryList2 }');

			 var cate2Arr = new Array();
			 var cate2Obj = new Object();
			 
			 // 2차 분류 셀렉트 박스에 삽입할 데이터 준비
			 for(var i = 0; i < jsonData2.length; i++) {
			  
			  if(jsonData2[i].level == "2") {
			   cate2Obj = new Object();  //초기화
			   cate2Obj.cateCode = jsonData2[i].cateCode;
			   cate2Obj.cateName = jsonData2[i].cateName;
			   cate2Obj.cateCodeRef = jsonData2[i].cateCodeRef;
			   
			   cate2Arr.push(cate2Obj);
			  }
			 }
			 
			 var cate2Select = JSON.parse('${ categoryList }');
			 
			 cate2Select.children().remove();
			
			 $("option:selected", this).each(function(){
			  
			  var selectVal = $(this).val();  
			  cate2Select.append("<option value=''>전체</option>");
			  
			  for(var i = 0; i < cate2Arr.length; i++) {
			   if(selectVal == cate2Arr[i].cateCodeRef) {
			    cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
			         + cate2Arr[i].cateName + "</option>");
			   }
			  }
			  
			 });
			 
			});
         
         
         	$('form').css('display','inline-block');
         	
         	
         	// 페이지 클릭시 active 클래스 추가 및 제거 되는 스크립트
           $('.pagination a').click(function(){
        	   $('.pagination a').removeClass('active');
        	   $(this).addClass('active');
           });
           
      </script>
</body>
</html>