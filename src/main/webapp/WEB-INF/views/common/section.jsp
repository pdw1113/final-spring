<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Header</title>
      <!-- 같은 단어 선택 : ctrl + shift + L -->
      <!-- BLACK HAN SANS 폰트 -->
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
      <!-- JUA 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
      <!--xeicon-cdn-->
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
      <!--bxslider-cdn-->
      <script src="resources/js/bxslider.min.js"></script>
      <!--bxslider-script-->
      <script>
         $(document).ready(function(){
           $('.slider').bxSlider();
         });
      </script>
      <style>
         body,html{
         padding: 0;
         margin: 0;
         width: 100%;
         }
         /* jua 폰트 */
         .font_jua{
         font-family: 'Jua', sans-serif;
         }
         /* 추천 능력자들 최고 부모 div */
         .main_container_index{
         margin-bottom: 70px;
         }
         /* 추천 능력자들 제목 */
         .main_title_index{
         font-family: 'Black Han Sans', sans-serif;
         font-style: italic;
         font-size: 3em;
         margin-left: auto; 
         margin-right: auto; 
         width: fit-content; 
         display: block;
         }
         /* 4개를 감싸는 ul 태그 */
         .main_contents_container_index{
         text-align: center;
         }
         /* 별 img */
         .main_star_container_index > img{
         margin: 0 -2px;
         width: 13px; 
         height: 13px;
         object-fit: cover;
         }
         /* ul의 li 태그[사람 한명 한명] */
         .main_contents_index{
         margin-right: 80px;
         width: fit-content;
         list-style: none; 
         display: inline-block;
         }
         .main_contents_index:hover{
         	cursor:pointer;
         }
         /* 썸네일 사진 */
         .main_contents_img_index{
         width: 280px; 
         height: 200px; 
         border-radius: 5%;
         box-shadow: 0 0 10px rgb(0,0,0,0.7);
         object-fit: cover; 
         }
         /* 내용 설명 */
         .main_explain_index{
         margin: 2px 0px;
         }
         /* 손바닥 사진 */
         .main_rank_index{
         width: 18px; 
         height: 27px;
         object-fit: cover; 
         }
         /* 선택 사진 */
         .main_choice_img_index{
         width: 15px; 
         height: 15px;
         object-fit: cover; 
         }
         .bx-wrapper{position: relative;}
         .bx-viewport div{height: 280px }
         /*슬라이드버튼*/
         .bx-controls-direction{font-size: 50px;}
         .bx-controls-direction a {
         position: absolute; 
         top: 50%; 
         display: block; 
         width: fit-content; 
         height: fit-content; 
         overflow: hidden;
         text-decoration: none;
         transform: translateY(-50%); color: #5a5a5a; }/*글자를 감추기 위해 크기를 100px(before 크기)로 맞추고 overflow:hidden 적용시켜준다 */
         .bx-controls-direction .bx-prev{
         left: 5%;
         }
         .bx-controls-direction .bx-next{
         right: 2%;
         }
         .bx-controls-direction .bx-prev:before{
         content: "\e93d"; font-family: "xeicon"; /*검사창에서 xi-angle-left-thin:before 를보면 content: "\e93d" 를 가지고 있으므로 적용 시켜준다*/
         }
         .bx-controls-direction .bx-next:before{
         content: "\e940"; font-family: "xeicon"; /*검사창에서 xi-angle-left-thin:before 를보면 content: "\e93d" 를 가지고 있으므로 적용 시켜준다*/
         }
         /*페이징*/
         .bx-pager{position: absolute; left: 0; bottom: 92; width: 100%; text-align: center;}
         .bx-pager div{display: inline-block; padding: 0 5px;} /*가운데 정렬해놓은상태에서 여백주기위해 양쪽에 5px씩준다(한쪽에만 주면 기울어짐)*/
         .bx-pager div a {display: block; width: 24px; height: 3px; background: #999; font-size: 0; color: transparent;}/*block 구조라 inline속성넣어주고 폰트(1,2,3)사이즈 0하고 투명하게(transparent)한다*/
         .bx-pager div a.active {background: #000;}
      </style>
   </head>
   <body>
      <div class="main_container_index">
         <span class="main_title_index">프리미엄 능력자들</span>
         <div class="slider">
            <ul class="main_contents_container_index">
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/1.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/2.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/3.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/4.jpg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
            </ul>
            <ul class="main_contents_container_index">
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/5.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/6.jpeg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/44.jpg" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/7.jpg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/8.jpg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
            </ul>
         </div>
      </div>
      <div class="main_container_index">
         <span class="main_title_index">별빛이 내린다</span>
         <div class="slider">
            <ul class="main_contents_container_index">
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/1.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/2.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/3.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/4.jpg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
            </ul>
            <ul class="main_contents_container_index">
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/5.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/6.jpeg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/44.jpg" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/7.jpg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/8.jpg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
            </ul>
         </div>
      </div>
      <div class="main_container_index">
         <span class="main_title_index">최고 인기</span>
         <div class="slider">
            <ul class="main_contents_container_index">
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/1.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/2.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/3.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/4.jpg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
            </ul>
            <ul class="main_contents_container_index">
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/5.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/6.jpeg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/44.jpg" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/7.jpg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/8.jpg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
            </ul>
         </div>
      </div>
      <div class="main_container_index">
         <span class="main_title_index">가성비 갑</span>
         <div class="slider">
            <ul class="main_contents_container_index">
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/1.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/2.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/3.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/4.jpg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
            </ul>
            <ul class="main_contents_container_index">
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/5.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/6.jpeg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/44.jpg" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/7.jpg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/8.jpg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
            </ul>
         </div>
      </div>
      <div class="main_container_index">
         <span class="main_title_index">루키 인사드립니다</span>
         <div class="slider">
            <ul class="main_contents_container_index">
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/1.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/2.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/3.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/4.jpg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
            </ul>
            <ul class="main_contents_container_index">
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/5.png" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/6.jpeg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/44.jpg" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/7.jpg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
               <li class="main_contents_index">
                  <div>
                     <img src="resources/img/8.jpg" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                        자바 뉴비들 드루와
                     </p>
                     <div>
                        <img src="resources/img/lv1.png" class="main_rank_index">
                        <span class="font_jua">조정호</span>
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
            </ul>
         </div>
      </div>
      <script>
      $(function(){
    	  $('.bx-next').css('right','5%');
    	  
    	  var main_contents_css = { 
    	            'margin-right': '60px', 
    	            'margin-left': '60px' 
    	        };
    	  
    	  $('.main_contents_index').css(main_contents_css);
      });
      </script>
   </body>
</html>