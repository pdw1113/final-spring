<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <title>list</title>
      <!--폰트-->
      <!-- BLACK HAN SANS 폰트 -->
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
      <!-- Noto-Sans 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
      <!-- JUA 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
      <!--제이쿼리CDN-->
      <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
      <!--부트스트랩CDN-->
      <!-- 합쳐지고 최소화된 최신 CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
      <!-- 부가적인 테마 -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
      <!-- 합쳐지고 최소화된 최신 자바스크립트 -->    
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	  <link rel="stylesheet" type="text/css" href="resources/css/productList.css">

   </head>
   <body>
	  <div class="header">   
   	  <%@ include file="../../common/header.jsp" %>
   	  </div>
      <div class="List-NavBox">
         <div class="List-NavBoxFont">
            <h2 class="font_hanSans">홈&nbsp;&nbsp; > &nbsp;&nbsp;<span id="category1"></span></h2>
         </div>
         <table class="table table-bordered table-condensed" >
         
         <!--<c:set var="cd" value="JSON.parse('${categoryList}')"/>-->
         
        <c:forEach var="c" items="${ categoryList2 }" varStatus="status2">
            <tr>
       		
               <td class="active List-NavTableTd" >
	                 <p class="font_hanSans List-NavPtag" >
			               <c:if test="${c.level == 1}">
			               		${ c.cateName }
			              </c:if>
	                  </p>
               </td>

               <td id="testTable">
	               <c:forEach var="c" items="${ categoryList }" varStatus="status1">
		                <c:if test="${status2.current.cateCode == status1.current.cateCodeRef}" >
		             		 <button class="font_jua List-Button" > ${ status1.current.cateName }</button> 
		               </c:if>
               	</c:forEach> 
                  <p class="font_hanSans List-NavPtag"></p> 
               </td>
               
       
               </td>
            </tr>
    	  </c:forEach> 
           <!--  <tr>
               <td class="active">
                  <p class="font_hanSans List-NavPtag">DBMS</p>
               </td>
               <td>
                  <button class="font_jua List-Button">Access</button>
                  <button class="font_jua List-Button">MariaDB</button>
                  <button class="font_jua List-Button">MongoDB</button>
                  <button class="font_jua List-Button">MSSQL</button>
                  <button class="font_jua List-Button">MySQL</button>
                  <button class="font_jua List-Button">Oracle</button>
                  <button class="font_jua List-Button">PostgreSQL</button>
               </td>
            </tr> -->
            <tr>
               <td class="active row Cancle-Container">
                  <p class="font_jua List-NavPtag">선택한필터</p>
                  <button class="font_jua List-NavButton">초기화</button>
               </td>
               <td class="last-nav-td">
               </td>
            </tr>
         </table>
         <div class="checkbox">
            <label class="font_jua Lsit-checkbox-size">
            <input type="checkbox" value="" >
            접속중
            </label>
         </div>
         <!--부트스트랩 dropdown button-->
         <div class="btn-group">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false" id="mystatus">
            선택 <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu" id="mytype">
               <li><a href="#">가격순</a></li>
               <li><a href="#">인기순</a></li>
            </ul>
         </div>
      </div>
      <!--리스트 섹션-->
      <div class="Lsit-Saction">
         <div class="row">
            <div class="col-xs-4">
               <a href="productDetail.do" class="thumbnail">
                  <div class="list_img_div">
                     <img src="resources/img/1.png" class="list_contents_img_index">
                  </div>
                  <div class="list_contents_marign">
                     <p class="font_jua list_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="list_rank_index">
                        <span class="font_jua">조정호</span>
                        <span class="list_star_container_index">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        </span>
                        <span class="font_jua">(5.0)</span>
                        <span>
                        <span class="font_jua">213명선택</span>
                        <img src="resources/img/buy.png" class="list_choice_img_index">
                        </span>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-xs-4">
               <a href="#" class="thumbnail">
                  <div class="list_img_div">
                     <img src="resources/img/2.png" class="list_contents_img_index">
                  </div>
                  <div class="list_contents_marign">
                     <p class="font_jua list_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="list_rank_index">
                        <span class="font_jua">조정호</span>
                        <span class="list_star_container_index">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        </span>
                        <span class="font_jua">(5.0)</span>
                        <span>
                        <span class="font_jua">213명선택</span>
                        <img src="resources/img/buy.png" class="list_choice_img_index">
                        </span>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-xs-4">
               <a href="#" class="thumbnail">
                  <div class="list_img_div">
                     <img src="resources/img/3.png" class="list_contents_img_index">
                  </div>
                  <div class="list_contents_marign">
                     <p class="font_jua list_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="list_rank_index">
                        <span class="font_jua">조정호</span>
                        <span class="list_star_container_index">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        </span>
                        <span class="font_jua">(5.0)</span>
                        <span>
                        <span class="font_jua">213명선택</span>
                        <img src="resources/img/buy.png" class="list_choice_img_index">
                        </span>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-xs-4">
               <a href="#" class="thumbnail">
                  <div class="list_img_div">
                     <img src="resources/img/1.png" class="list_contents_img_index">
                  </div>
                  <div class="list_contents_marign">
                     <p class="font_jua list_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="list_rank_index">
                        <span class="font_jua">조정호</span>
                        <span class="list_star_container_index">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        </span>
                        <span class="font_jua">(5.0)</span>
                        <span>
                        <span class="font_jua">213명선택</span>
                        <img src="resources/img/buy.png" class="list_choice_img_index">
                        </span>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-xs-4">
               <a href="#" class="thumbnail">
                  <div class="list_img_div">
                     <img src="resources/img/2.png" class="list_contents_img_index">
                  </div>
                  <div class="list_contents_marign">
                     <p class="font_jua list_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="list_rank_index">
                        <span class="font_jua">조정호</span>
                        <span class="list_star_container_index">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        </span>
                        <span class="font_jua">(5.0)</span>
                        <span>
                        <span class="font_jua">213명선택</span>
                        <img src="resources/img/buy.png" class="list_choice_img_index">
                        </span>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-xs-4">
               <a href="#" class="thumbnail">
                  <div class="list_img_div">
                     <img src="resources/img/3.png" class="list_contents_img_index">
                  </div>
                  <div class="list_contents_marign">
                     <p class="font_jua list_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="list_rank_index">
                        <span class="font_jua">조정호</span>
                        <span class="list_star_container_index">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        </span>
                        <span class="font_jua">(5.0)</span>
                        <span>
                        <span class="font_jua">213명선택</span>
                        <img src="resources/img/buy.png" class="list_choice_img_index">
                        </span>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-xs-4">
               <a href="#" class="thumbnail">
                  <div class="list_img_div">
                     <img src="resources/img/1.png" class="list_contents_img_index">
                  </div>
                  <div class="list_contents_marign">
                     <p class="font_jua list_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="list_rank_index">
                        <span class="font_jua">조정호</span>
                        <span class="list_star_container_index">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        </span>
                        <span class="font_jua">(5.0)</span>
                        <span>
                        <span class="font_jua">213명선택</span>
                        <img src="resources/img/buy.png" class="list_choice_img_index">
                        </span>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-xs-4">
               <a href="#" class="thumbnail">
                  <div class="list_img_div">
                     <img src="resources/img/2.png" class="list_contents_img_index">
                  </div>
                  <div class="list_contents_marign">
                     <p class="font_jua list_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="list_rank_index">
                        <span class="font_jua">조정호</span>
                        <span class="list_star_container_index">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        </span>
                        <span class="font_jua">(5.0)</span>
                        <span>
                        <span class="font_jua">213명선택</span>
                        <img src="resources/img/buy.png" class="list_choice_img_index">
                        </span>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-xs-4">
               <a href="#" class="thumbnail">
                  <div class="list_img_div">
                     <img src="resources/img/3.png" class="list_contents_img_index">
                  </div>
                  <div class="list_contents_marign">
                     <p class="font_jua list_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="list_rank_index">
                        <span class="font_jua">조정호</span>
                        <span class="list_star_container_index">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        </span>
                        <span class="font_jua">(5.0)</span>
                        <span>
                        <span class="font_jua">213명선택</span>
                        <img src="resources/img/buy.png" class="list_choice_img_index">
                        </span>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-xs-4">
               <a href="#" class="thumbnail">
                  <div class="list_img_div">
                     <img src="resources/img/1.png" class="list_contents_img_index">
                  </div>
                  <div class="list_contents_marign">
                     <p class="font_jua list_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="list_rank_index">
                        <span class="font_jua">조정호</span>
                        <span class="list_star_container_index">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        </span>
                        <span class="font_jua">(5.0)</span>
                        <span>
                        <span class="font_jua">213명선택</span>
                        <img src="resources/img/buy.png" class="list_choice_img_index">
                        </span>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-xs-4">
               <a href="#" class="thumbnail">
                  <div class="list_img_div">
                     <img src="resources/img/2.png" class="list_contents_img_index">
                  </div>
                  <div class="list_contents_marign">
                     <p class="font_jua list_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="list_rank_index">
                        <span class="font_jua">조정호</span>
                        <span class="list_star_container_index">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        </span>
                        <span class="font_jua">(5.0)</span>
                        <span>
                        <span class="font_jua">213명선택</span>
                        <img src="resources/img/buy.png" class="list_choice_img_index">
                        </span>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-xs-4">
               <a href="#" class="thumbnail">
                  <div class="list_img_div">
                     <img src="resources/img/3.png" class="list_contents_img_index">
                  </div>
                  <div class="list_contents_marign">
                     <p class="font_jua list_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="list_rank_index">
                        <span class="font_jua">조정호</span>
                        <span class="list_star_container_index">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        <img src="resources/img/star.png">
                        </span>
                        <span class="font_jua">(5.0)</span>
                        <span>
                        <span class="font_jua">213명선택</span>
                        <img src="resources/img/buy.png" class="list_choice_img_index">
                        </span>
                     </div>
                  </div>
               </a>
            </div>
         </div>
         <div>
            <ul class="pagination">
               <li>
                  <a href="#" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                  </a>
               </li>
               <li><a href="#">1</a></li>
               <li><a href="#">2</a></li>
               <li><a href="#">3</a></li>
               <li><a href="#">4</a></li>
               <li><a href="#">5</a></li>
               <li>
                  <a href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                  </a>
               </li>
            </ul>
         </div>
      </div>
      
      <%@ include file="../../common/footer.jsp" %>
      
      <script>
         $(function(){
         /*마우스클릭시 버튼 색상변경*/
         $('.List-Button').click(function(){
            $(this).toggleClass('yellowButton');
         
            let ClickWord = $(this).html();
         
            $('.last-nav-td button').filter(function(){
               if($(this).html() === ClickWord){
                  $(this).remove();
               }
            });
         
            /*카테고리 클릭시 필터로 넘어가는 기능 (미완성)*/
            var btn = this.outerHTML;
         
            if(this.className == "font_jua List-Button yellowButton"){
               $('.last-nav-td').append(btn); /*버튼클릭시 필터란에 선택한 버튼 추가*/
            };
         });
         
         /* ★★★ 상뉴가 만든 코드 ★★★★ */
         
         /* 클릭 시 동적으로 추가 된 요소 제거*/
         /* 
            왜 $('.last-nav-td button').click(function(){})이 작동되지 않을까??
            
            이유 : https://jeongmatt.blogspot.com/2020/10/append-appendto-script-javascriptjquery.html
         
         */
         $(document).on("click", ".last-nav-td button", function(){
         
            $(this).remove();
         
            let ClickWord = $(this).html();
            
            $('.List-Button').filter(function(){
               if($(this).html() === ClickWord){
                  $(this).toggleClass('yellowButton');
               }
            });
         
         });
         
         /* ★★★ 상뉴가 만든 코드 ★★★★ */
         
         /*드롭다운시 텍스트 변경*/
         $('.dropdown-menu li a').click(function(){
         var selText = $(this).text();
         $(this).parents('.btn-group').find('.dropdown-toggle').html(selText+' <span class="caret"></span>');/*btn-group 에있는 dropdown-toggle찾아서 변경 */
         });
         
         /*썸네일 이미지 heigh값이 부트스트랩 때문에 auto로 고정되어서 200px로 수정*/
         $('.list_img_div').css('height','20rem')
         
         /*초기화 클릭시 버튼색 없어짐*/
         $('.List-NavButton').on('click',function(){
            $('.last-nav-td').children().remove(); /*td에있는 버튼들 제거*/
            $('.List-Button').attr('class','font_jua List-Button'); /*버튼 속성에 초기 버튼 css클래스 적용*/
         })
         });
         
         /*썸네일 간격및 크기조정*/
         $('.col-xs-4 ').css('width', '40rem').css('margin-right','2.1rem').css('margin-left','2.1rem');

         </script>
      <script>
         // 컨트롤러에서 데이터 받기
         var jsonData = JSON.parse('${categoryList}');
         //console.log(jsonData);
         
         var cate1Arr = new Array();
         var cate1Obj = new Object();
         
         
         
         // 1차 분류 셀렉트 박스에 삽입할 데이터 준비
         for(var i = 0; i < jsonData.length; i++) {
        	 
        	 
          
          if(jsonData[i].level == "1") {
           cate1Obj = new Object();  //초기화
           cate1Obj.cateCode = jsonData[i].cateCode;
           cate1Obj.cateName = jsonData[i].cateName;
           cate1Arr.push(cate1Obj);
           console.log(cate1Arr);
           
          }
         /*  console.log(cate1Obj.cateCode );
          console.log(cate1Obj.cateName); */
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
			  console.log(cate2Arr);
			 }
			 
			 var cate2Select = JSON.parse('${ categoryList }');
			 
			 /*
			 for(var i = 0; i < cate2Arr.length; i++) {
			   cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
			        + cate2Arr[i].cateName + "</option>");
			 }
			 */
			 
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
         
      </script>
   </body>
</html>