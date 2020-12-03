<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>NeeziT</title>
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
      
      <!-- 폰트 어썸 -->
      <script src="https://kit.fontawesome.com/fef720d792.js" crossorigin="anonymous"></script>
      <script>
         $(document).ready(function(){
           $('.slider').bxSlider({
        	    touchEnabled : false
           }); //
         });
         
      </script>
	  <link rel="stylesheet" type="text/css" href="resources/css/section.css">
	  <!-- Vue.js -->
	  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
   </head>
   <body>
      <div class="main_container_index">
         <span class="main_title_index">별빛이 내린다</span>
         <div class="slider">
            <ul class="main_contents_container_index">
               <c:forEach var="ps"  begin="0" end="2" step="1" items="${proStar}">
                <c:url var="productDetail" value="productDetail.do">
					<c:param name="no" value="${ps.no}" />
				</c:url>
	         <li class="main_contents_index" onclick="location.href='${productDetail}'">
                  <div>
                     <img src="resources/pUploadFiles/${ps.renamePic}" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                         ${ps.title}
                     </p>
                     <div>
                        <img src="resources/img/${ps.mRankPic}" class="main_rank_index">
                        <span class="font_jua">${ps.nickName}</span>
                        <span class="main_star_container_index">
                        <c:forEach var="num" begin="1" end="5" step="1" >
	                        <c:choose>
		                        <c:when test="${num <= ps.star}">
		                            <i class="fas fa-star" aria-hidden="true"></i>
		                        </c:when>
		                         <c:when test="${num == ps.star+0.5}">
		                            <i class="fas fa-star-half-alt" aria-hidden="true"></i>
		                        </c:when>
		                         <c:otherwise>
		                              <i class="far fa-star" aria-hidden="true"></i>
		                         </c:otherwise>
		                    </c:choose>    
                        </c:forEach>
                        </span>
                        <span class="font_jua">(${ps.star})</span>
                        <span>
                        <span class="font_jua">${ps.count}명선택</span>
                        </span>
                     </div>
                  </div>
               </li>
          </c:forEach>
            </ul>
             <ul class="main_contents_container_index">
            <c:forEach var="ps"  begin="3" end="5" step="1" items="${proStar}">
	         <c:url var="productDetail" value="productDetail.do">
					<c:param name="no" value="${ps.no}"/>
			</c:url>
	         <li class="main_contents_index" onclick="location.href='${productDetail}'">
                  <div>
                     <img src="resources/pUploadFiles/${ps.renamePic}"  class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                         ${ps.title}
                     </p>
                     <div>
                        <img src="resources/img/${ps.mRankPic}" class="main_rank_index">
                        <span class="font_jua">${ps.nickName}</span>
                        <span class="main_star_container_index">
                        <c:forEach var="num" begin="1" end="5" step="1" >     
	                        <c:choose>
		                        <c:when test="${num <= ps.star}">
		                            <i class="fas fa-star" aria-hidden="true"></i>
		                        </c:when>
		                         <c:when test="${num == ps.star+0.5}">
		                            <i class="fas fa-star-half-alt" aria-hidden="true"></i>
		                        </c:when>
		                         <c:otherwise>
		                              <i class="far fa-star" aria-hidden="true"></i>
		                         </c:otherwise>
		                    </c:choose>    
                        </c:forEach>
                        </span>
                        <span class="font_jua">(${ps.star})</span>
                        <span>
                        <span class="font_jua">${ps.count}명선택</span>
                        </span>
                     </div>
                  </div>
               </li>
          </c:forEach>
            </ul>
         </div>
      </div>
      <div class="main_container_index">
         <span class="main_title_index">최고 인기</span>
         <div class="slider">
            <ul class="main_contents_container_index">
               <c:forEach var="pb"  begin="0" end="2" step="1" items="${proBest}">
                <c:url var="productDetail" value="productDetail.do">
					<c:param name="no" value="${pb.no}" />
				</c:url>
	         <li class="main_contents_index" onclick="location.href='${productDetail}'">
                  <div>
                     <img src="resources/pUploadFiles/${pb.renamePic}" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                         ${pb.title}
                     </p>
                     <div>
                        <img src="resources/img/${pb.mRankPic}" class="main_rank_index">
                        <span class="font_jua">${pb.nickName}</span>
                        <span class="main_star_container_index">
                        <c:forEach var="num" begin="1" end="5" step="1" >
	                        <c:choose>
		                        <c:when test="${num <= pb.star}">
		                            <i class="fas fa-star" aria-hidden="true"></i>
		                        </c:when>
		                         <c:when test="${num == pb.star+0.5}">
		                            <i class="fas fa-star-half-alt" aria-hidden="true"></i>
		                        </c:when>
		                         <c:otherwise>
		                              <i class="far fa-star" aria-hidden="true"></i>
		                         </c:otherwise>
		                    </c:choose>    
                        </c:forEach>
                        </span>
                        <span class="font_jua">(${pb.star})</span>
                        <span>
                        <span class="font_jua">${pb.count}명선택</span>
                        </span>
                     </div>
                  </div>
               </li>
          </c:forEach>
            </ul>
             <ul class="main_contents_container_index">
            <c:forEach var="pb"  begin="3" end="5" step="1" items="${proBest}">
	         <c:url var="productDetail" value="productDetail.do">
					<c:param name="no" value="${pb.no}"/>
			</c:url>
	         <li class="main_contents_index" onclick="location.href='${productDetail}'">
                  <div>
                     <img src="resources/pUploadFiles/${pb.renamePic}"  class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                         ${pb.title}
                     </p>
                     <div>
                        <img src="resources/img/${pb.mRankPic}" class="main_rank_index">
                        <span class="font_jua">${pb.nickName}</span>
                        <span class="main_star_container_index">
                        <c:forEach var="num" begin="1" end="5" step="1" >     
	                        <c:choose>
		                        <c:when test="${num <= pb.star}">
		                            <i class="fas fa-star" aria-hidden="true"></i>
		                        </c:when>
		                         <c:when test="${num == pb.star+0.5}">
		                            <i class="fas fa-star-half-alt" aria-hidden="true"></i>
		                        </c:when>
		                         <c:otherwise>
		                              <i class="far fa-star" aria-hidden="true"></i>
		                         </c:otherwise>
		                    </c:choose>    
                        </c:forEach>
                        </span>
                        <span class="font_jua">(${pb.star})</span>
                        <span>
                        <span class="font_jua">${pb.count}명선택</span>
                        </span>
                     </div>
                  </div>
               </li>
          </c:forEach>
            </ul>
         </div>
      </div>
      <div class="main_container_index">
         <span class="main_title_index">가성비 갑</span>
         <div class="slider">
            <ul class="main_contents_container_index">
            <c:forEach var="pc"  begin="0" end="2" step="1" items="${proCost}">
                <c:url var="productDetail" value="productDetail.do">
					<c:param name="no" value="${pc.no}" />
				</c:url>
	         <li class="main_contents_index" onclick="location.href='${productDetail}'">
                  <div>
                     <img src="resources/pUploadFiles/${pc.renamePic}" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                         ${pc.title}
                     </p>
                     <div>
                        <img src="resources/img/${pc.mRankPic}" class="main_rank_index">
                        <span class="font_jua">${pc.nickName}</span>
                        <span class="main_star_container_index">
                        <c:forEach var="num" begin="1" end="5" step="1" >
	                        <c:choose>
		                        <c:when test="${num <= pc.star}">
		                            <i class="fas fa-star" aria-hidden="true"></i>
		                        </c:when>
		                         <c:when test="${num == pc.star+0.5}">
		                            <i class="fas fa-star-half-alt" aria-hidden="true"></i>
		                        </c:when>
		                         <c:otherwise>
		                              <i class="far fa-star" aria-hidden="true"></i>
		                         </c:otherwise>
		                    </c:choose>    
                        </c:forEach>
                        </span>
                        <span class="font_jua">(${pc.star})</span>
                        <span>
                        <span class="font_jua">${pc.count}명선택</span>
                        </span>
                     </div>
                  </div>
               </li>
          </c:forEach>
            </ul>
             <ul class="main_contents_container_index">
            <c:forEach var="pc"  begin="3" end="5" step="1" items="${proCost}">
	         <c:url var="productDetail" value="productDetail.do">
					<c:param name="no" value="${pc.no}"/>
			</c:url>
	         <li class="main_contents_index" onclick="location.href='${productDetail}'">
                  <div>
                     <img src="resources/pUploadFiles/${pc.renamePic}"  class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                         ${pc.title}
                     </p>
                     <div>
                        <img src="resources/img/${pc.mRankPic}" class="main_rank_index">
                        <span class="font_jua">${pc.nickName}</span>
                        <span class="main_star_container_index">
                        <c:forEach var="num" begin="1" end="5" step="1" >     
	                        <c:choose>
		                        <c:when test="${num <= pc.star}">
		                            <i class="fas fa-star" aria-hidden="true"></i>
		                        </c:when>
		                         <c:when test="${num == pc.star+0.5}">
		                            <i class="fas fa-star-half-alt" aria-hidden="true"></i>
		                        </c:when>
		                         <c:otherwise>
		                              <i class="far fa-star" aria-hidden="true"></i>
		                         </c:otherwise>
		                    </c:choose>    
                        </c:forEach>
                        </span>
                        <span class="font_jua">(${pc.star})</span>
                        <span>
                        <span class="font_jua">${pc.count}명선택</span>
                        </span>
                     </div>
                  </div>
               </li>
          </c:forEach>
            </ul>
         </div>
      </div>
      <div class="main_container_index">
         <span class="main_title_index">루키 인사드립니다</span>
         <div class="slider">
            <ul class="main_contents_container_index">
                <c:forEach var="pr"  begin="0" end="2" step="1" items="${proRookie}">
                <c:url var="productDetail" value="productDetail.do">
					<c:param name="no" value="${pr.no}" />
				</c:url>
	         <li class="main_contents_index" onclick="location.href='${productDetail}'">
                  <div>
                     <img src="resources/pUploadFiles/${pr.renamePic}" class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                         ${pr.title}
                     </p>
                     <div>
                        <img src="resources/img/${pr.mRankPic}" class="main_rank_index">
                        <span class="font_jua">${pr.nickName}</span>
                        <span class="main_star_container_index">
                        <c:forEach var="num" begin="1" end="5" step="1" >
	                        <c:choose>
		                        <c:when test="${num <= pr.star}">
		                            <i class="fas fa-star" aria-hidden="true"></i>
		                        </c:when>
		                         <c:when test="${num == pr.star+0.5}">
		                            <i class="fas fa-star-half-alt" aria-hidden="true"></i>
		                        </c:when>
		                         <c:otherwise>
		                              <i class="far fa-star" aria-hidden="true"></i>
		                         </c:otherwise>
		                    </c:choose>    
                        </c:forEach>
                        </span>
                        <span class="font_jua">(${pr.star})</span>
                        <span>
                        <span class="font_jua">${pr.count}명선택</span>
                        </span>
                     </div>
                  </div>
               </li>
          </c:forEach>
            </ul>
             <ul class="main_contents_container_index">
            <c:forEach var="pr"  begin="3" end="5" step="1" items="${proRookie}">
	         <c:url var="productDetail" value="productDetail.do">
					<c:param name="no" value="${pr.no}"/>
			</c:url>
	         <li class="main_contents_index" onclick="location.href='${productDetail}'">
                  <div>
                     <img src="resources/pUploadFiles/${pr.renamePic}"  class="main_contents_img_index">
                     <p class="font_jua main_explain_index">
                         ${pr.title}
                     </p>
                     <div>
                        <img src="resources/img/${pr.mRankPic}" class="main_rank_index">
                        <span class="font_jua">${pr.nickName}</span>
                        <span class="main_star_container_index">
                        <c:forEach var="num" begin="1" end="5" step="1" >     
	                        <c:choose>
		                        <c:when test="${num <= pr.star}">
		                            <i class="fas fa-star" aria-hidden="true"></i>
		                        </c:when>
		                         <c:when test="${num == pr.star+0.5}">
		                            <i class="fas fa-star-half-alt" aria-hidden="true"></i>
		                        </c:when>
		                         <c:otherwise>
		                              <i class="far fa-star" aria-hidden="true"></i>
		                         </c:otherwise>
		                    </c:choose>    
                        </c:forEach>
                        </span>
                        <span class="font_jua">(${pr.star})</span>
                        <span>
                        <span class="font_jua">${pr.count}명선택</span>
                        </span>
                     </div>
                  </div>
               </li>
          </c:forEach>
            </ul>
         </div>
      </div>
      <script>
      $(function(){
    	  $('.bx-next').css('right','10%');
    	  
    	  var main_contents_css = { 
    	            'margin-right': '60px', 
    	            'margin-left': '60px' 
    	        };
    	  
    	  $('.main_contents_index').css(main_contents_css);
      });
      </script>
   </body>
</html>