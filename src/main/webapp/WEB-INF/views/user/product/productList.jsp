<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
         /* hanSans 폰트 */
         .font_hanSans{
         font-family: 'Black Han Sans', sans-serif;
         }
         /* noto 폰트 */
         .font_noto{
         font-family: 'Noto Sans KR', sans-serif;
         }
         /*리스트 NavBox*/
         .List-NavBox{ 
         margin: auto;
         margin-top: 5rem;
         width: 130rem;
         height: 33.5rem;
         }
         /*리스트 P태그 폰트사이즈*/
         .List-NavPtag{
         font-size: 2.4rem;
         letter-spacing: 0.2rem;
         text-align: center;
         margin: auto 0;
         }
         /*리스트 NavBoxTable*/
         .List-NavTableTd{
         width: 40rem;
         }
         /*td 글자 가운데수직정렬*/
         .table>tbody>tr>td{
         vertical-align: middle;
         }
         /*초기화 버튼 데코레이션없애기*/
         .List-NavButton{
         border-style: none;
         border: 3px solid rgb(0,0,0,0.13);
         border-radius: 10px;
         color: rgb(255,0,0,0.5);
         background: transparent;
         position: absolute;
         top: 0.9rem;
         transition: all 1s;
         }
         .Cancle-Container{
         position: relative;
         }
         .List-NavButton:hover{
         opacity: 0.7;
         color: white;
         background-color: red;
         }
         /*리스트Section*/
         .Lsit-Saction{
         margin: auto;
         width: 130rem;
         height: 125rem;
         }
         /*리스트 버튼*/
         .List-Button{
         position: relative;
         margin: 0.6rem 1.2rem 0.6rem 0;
         line-height: 2.4rem;
         padding: 0 1rem;
         border: none;
         border-radius: 1.5rem;
         color: #303441;
         background-color: #fff;
         font-size: 2rem;
         }
         /*버튼 호버시 색상이벤트*/
         .List-Button:hover{
         background-color: #e9e9e9;
         }
         /*크롬에서 버튼 클릭시 테두리 없애기*/
         *:focus { outline:none; }
         /*제이쿼리에서 토글클래스를 사용하기위한 노란색버튼*/
         .yellowButton { background-color: #fae57c; }
         .whitebutton{ background-color: #fff;}
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
         .col-xs-4{
         margin-bottom: 5rem;
         }
      </style>
   </head>
   <body>
   
   	  <%@ include file="../../common/header.jsp" %>
   
      <div class="List-NavBox">
         <div class="List-NavBoxFont">
            <h2 class="font_hanSans">홈&nbsp;&nbsp; > &nbsp;&nbsp;웹개발</h2>
         </div>
         <table class="table table-bordered table-condensed">
            <tr>
               <td class="active List-NavTableTd">
                  <p class="font_hanSans List-NavPtag">개발언어</p>
               </td>
               <td>
                  <button class="font_jua List-Button">Java</button> 
                  <button class="font_jua List-Button">Java</button> 
                  <button class="font_jua List-Button">JSP</button> 
                  <button class="font_jua List-Button">XML</button>
                  <button class="font_jua List-Button">.NET</button>
                  <button class="font_jua List-Button">Ajax</button>
                  <button class="font_jua List-Button">Ruby</button>
                  <button class="font_jua List-Button">ASP</button>
                  <button class="font_jua List-Button">PHP</button>
                  <button class="font_jua List-Button">HTML</button>
                  <button class="font_jua List-Button">APM</button>
                  <button class="font_jua List-Button">PERL</button>
                  <button class="font_jua List-Button">Python</button>
                  <button class="font_jua List-Button">Node.js</button>
                  <button class="font_jua List-Button">C#</button>
                  <button class="font_jua List-Button">CSS</button>
                  <button class="font_jua List-Button">jQuery</button>
                  <button class="font_jua List-Button">Servlet</button>
                  <button class="font_jua List-Button">JavaScript</button>
                  <button class="font_jua List-Button">Go</button>
               </td>
            </tr>
            <tr>
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
            </tr>
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
   </body>
</html>