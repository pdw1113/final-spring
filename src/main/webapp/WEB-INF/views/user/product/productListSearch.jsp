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
	  <link rel="stylesheet" type="text/css" href="resources/css/productListSearch.css">
   </head>
   <body>
   
   	  <%@ include file="../../common/header.jsp" %>
   
      <div class="List-NavBox">
         <div class="List-NavBoxFont">
            <h2 class="font_jua">홈&nbsp;&nbsp; > &nbsp;&nbsp;웹개발</h2>
         </div>
         <!-- 검색창 폼 -->
         <div class="list_search_wrap">
            <div class="list_search_Mainhead">
               <  <!-- 이거 그냥 텍스트로 쓴거 빨간색 신경 ㄴㄴ -->
            </div>
            <div class="list_searchbox_Mainhead">
               <input class="list_searchtext_Mainhead" type="text" value="spring">
               <a href="#"><img src="resources/img/SearchGlass.png"></a>
            </div>
            <div class="list_search_Mainhead">
               >
            </div>
         </div>
         <!-- <div class="NavBox_Span">
            <span class="font_jua">‘spring’에 대한 검색 결과 5개</span>
            </div> -->
         <div class="container">
            <span class="text1">'spring’에 대한 검색 결과</span>
            <span class="text2">"5개"</span>
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
         <nav>
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
         </nav>
      </div>
      
      <%@ include file="../../common/footer.jsp" %>
      
      <script>
         $(function(){
         
         /*드롭다운시 텍스트 변경*/
         $('.dropdown-menu li a').click(function(){
         var selText = $(this).text();
         $(this).parents('.btn-group').find('.dropdown-toggle').html(selText+' <span class="caret"></span>');/*btn-group 에있는 dropdown-toggle찾아서 변경 */
         });
         
         /*썸네일 이미지 heigh값이 부트스트랩 때문에 auto로 고정되어서 200px로 수정*/
         $('.list_img_div').css('height','20rem')
         });
         
          /*썸네일 간격및 크기조정*/
          $('.col-xs-4 ').css('width', '40rem').css('margin-right','2.1rem').css('margin-left','2.1rem');
      </script>
   </body>
</html>