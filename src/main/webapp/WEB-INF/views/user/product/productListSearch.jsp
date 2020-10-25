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
      <style>
         body,html{
         margin:0;
         padding:0;
         width:100%;
         }
         /* jua 폰트 */
         .font_jua{
         font-family: 'Jua', sans-serif;
         color: black;
         }
         /*리스트 NavBox*/
         .List-NavBox{ 
         margin: auto;
         margin-top: 5rem;
         width: 130rem;
         height: 18rem;
         }
         /*리스트Section*/
         .Lsit-Saction{
         margin: auto;
         width: 130rem;
         height: 125rem;
         }
         /*크롬에서 버튼 클릭시 테두리 없애기*/
         *:focus { outline:none; }
         /*리스트 체크박스 크기조절*/
         .Lsit-checkbox-size{
         zoom: 1.5;
         }
         .checkbox{
         display: inline-block;
         margin-top: 0rem;
         }
         .btn-group{
         float: right;
         }
         /*드롭다운 버튼 백그라운드색*/
         .btn{
         background: white;
         }
         /*썸네일 영역*/
         .list_contents_img_index{
         width: 100%; 
         object-fit: fill; 
         height: 100%;
         transition: all 0.6s
         }
         /*이미지 div태그*/
         .list_img_div{
         overflow: hidden;
         border-radius: 5%;
         box-shadow: 0 0 1rem rgb(0,0,0,0.7);
         width: 95%;
         margin-left: 0.9rem;
         object-fit: cover; 
         }
         /*이미지 호버시 확대효과*/
         .list_contents_img_index:hover{
         transform: scale(1.2);
         }
         /* 내용 설명 */
         .list_explain_index{
         margin: 0.2rem 0rem;
         }
         /* 손바닥 사진 */
         .list_rank_index{
         width: 1.8rem; 
         height: 2.7rem;
         object-fit: cover; 
         }
         /* 별 img */
         .list_star_container_index > img{
         margin: 0 -0.2rem;
         width: 1.3rem; 
         height: 1.3rem;
         object-fit: cover;
         }
         /* 선택 사진 */
         .list_choice_img_index{
         width: 1.5rem; 
         height: 1.5rem;
         object-fit: cover; 
         }
         /*마진값조정*/
         .list_contents_marign{
         text-align: center;
         }
         /*a태그 밑줄제거*/
         a:hover { 
         text-decoration:none !important
         }           
         a:active{
         text-decoration:none !important
         }
         a:visited{
         text-decoration:none !important
         }
         /*페이지네이션 가운데 정렬*/
         .pagination{
         display: block;
         text-align: center;
         }
         .pagination > li > a{
         float: none;
         }
         /*검색박스 전체div*/
         .list_search_wrap{
         width: fit-content;
         height: 8rem;
         margin: auto;
         }
         /* 검색박스 <>  */
         .list_search_Mainhead{
         color: #fae57c;
         font-size: 4.5rem;
         float: left;
         line-height: 5.5rem;
         }
         /* 검색박스 */
         .list_searchbox_Mainhead{
         border-bottom: 0.2rem solid white;
         font-size: 3rem;
         float: left;
         margin-top: 0.8rem;
         width: 65rem;
         }
         /* 검색 인풋텍스트(밑줄만생기게 만들고 사이즈조정) */
         .list_searchtext_Mainhead{
         border-bottom: #fae57c 0.1rem solid;
         border-left: none;
         border-right: none;
         border-top: none;
         font-size: 2.5rem;
         width: 95%;
         text-align: center;
         }  
         /*돋보기 이미지 css*/
         .list_searchbox_Mainhead > a > img{
         float: right; 
         width: 2.3rem; 
         margin-top: 1.3rem;
         }
         /*검색결과 span*/
         .NavBox_Span{
         float: left;
         font-size: 2rem;
         }
         /*검색결과 키 애니메이션*/
         .container{
         float: left;
         text-align: center;
         width: 60%;
         margin-left: 25rem;
         }   
         /*span 속성 조정*/
         .container span{
         text-transform: uppercase; /*글자 대문자로 통일*/
         display: block;
         }
         /*text1 옵션*/
         .text1{
         color: white;
         font-size: 2.5rem;
         font-weight: 700;
         letter-spacing: 8px;
         margin-bottom: 20px;
         background: #fae57c;
         position: relative;
         border: 1px solid ;
         animation: text 3s 1;
         border-radius: 10rem;
         }
         /*text2 옵션*/
         .text2{
         font-size: 2.5rem;
         color: #fae57c;
         }
         @keyframes text { /*애니메이션 효과 미디어쿼리랑 사용법은 비슷함*/
         0%{  /*0% 일때*/
         color: black;
         margin-bottom: -40px;
         }
         30%{  /*30% 일때*/
         letter-spacing: 25px;
         margin-bottom: -40px;
         }
         85%{  /*85% 일때*/
         letter-spacing: 8px;
         margin-bottom: -40px;
         }
         }
      </style>
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