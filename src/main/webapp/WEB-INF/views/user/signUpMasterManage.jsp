<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <!-- JUA 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
         rel="stylesheet">
      <!-- JQUERY-->
      <script type="text/javascript"
         src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
      <link rel="stylesheet" type="text/css"
         href="resources/css/signUpMaster.css">
   </head>
   <body>
      <%@ include file="../common/header.jsp"%>
      <form action="signUpMasterUpdateView.do" method="POST" enctype="multipart/form-data" name="master">
         <!-- 능력자 사진 등록 -->
         <div class="text-align-center-sgm">
            <div class="font_jua title-sgm">프로필 사진</div>
            <span>
               <div class="img-container-sgm border-radius-100">
                  <img src="resources/masterImg/${masterList.MASTER_PROFILE_PIC_RE}"
                     class="mImg img-style-size" id="profile_img">
               </div>
            </span>
         </div>
         <!-- 능력자 정보 등록 -->
         <div class="font_jua info-container-sgm">
            <ul>
               <!-- 별명 등록 -->
               <li>
                  <div class="sub-title-sgm">별명</div>
                  <div>
                     <input class="input_master" type="text"
                        value="${masterList.MASTER_NICKNAME}" readonly>
                  </div>
               </li>
               <hr>
               <!-- 카테고리 -->
               <li>
                  <div class="sub-title-sgm">나의 카테고리</div>
                  <div>
                     <div>
                        <select size="8" class="font_jua select-sgm" id="my-cate">
                        </select>
                     </div>
                  </div>
               </li>
               <hr>
               <script>
                  (function(){
                  	// Controller에서 받아온 능력자 카테고리
                      let category = '${categoryList}';
                      
                      // 문자열을 ,구분자로 잘라내어 배열에 담는다.
                      let arr = category.split(", ");
                      
                      // for문으로 select option에 추가한다.
                      for(a in arr){
                      	$("#my-cate").append("<option>" + arr[a] + "</option>");
                      }
                  })();
               </script>
               <!-- 능력 -->
               <li>
                  <div class="sub-title-sgm">능력 인증</div>
                  <div class="text-align-center-sgm minus-margin-sgm">
                     <div class="font_jua">신분증</div>
                     <div class="img-container-sgm-2">
                        <img src="resources/masterImg/${masterList.MASTER_ID_PIC_RE}"
                           class="mImg img-style-size2" id="idCard_img"
                           onclick="picUpload(this);">
                     </div>
                  </div>
               </li>
               <!-- 학력 -->
               <li>
                  <div class="edu-ability" title="학력">
                     <c:if test="${!empty SchoolList.MASTER_HIGH}">
                     <div>
                        <input class="input_master width_600" type="text"
                           placeholder="${SchoolList.MASTER_HIGH}">
                     </div>
                     </c:if>
                     <c:if test="${!empty SchoolList.MASTER_UNIV || SchoolList.MASTER_UNIV_DEPT}">
                     <div>
                        <input class="input_master width_242" type="text"
                           placeholder="${SchoolList.MASTER_UNIV}">                
                         <input class="input_master width_242" type="text"
                           placeholder="${SchoolList.MASTER_UNIV_DEPT}">
                     </div>
                     </c:if>
                     <c:if test="${!empty SchoolList.MASTER_UNIV2 || SchoolList.MASTER_UNIV2_DEPT}">
                     <div>
                        <input class="input_master width_242" type="text"
                           placeholder="${SchoolList.MASTER_UNIV2}"> <input
                           class="input_master width_242" type="text"
                           placeholder="${SchoolList.MASTER_UNIV2_DEPT}">
                     </div>
                     </c:if>
                  </div>
                  <c:if test="${!empty SchoolList.MASTER_UNIV_PIC_RE }">
                     <div class="img-container-sgm">
                        <img src="resources/masterImg/${SchoolList.MASTER_UNIV_PIC_RE}"
                           class="mImg img-style-size2" id="idCard_img">
                     </div>
                  </c:if>
                  <c:if test="${!empty SchoolList.MASTER_UNIV2_PIC_RE}">
                     <div class="img-container-sgm">
                        <img src="resources/masterImg/${SchoolList.MASTER_UNIV2_PIC_RE}"
                           class="mImg img-style-size2" id="idCard_img">
                     </div>
                  </c:if>
               </li>
               <!-- 자격증 -->
               <li>
                  <div class="edu-ability" title="자격증">
                  	 <c:if test="${!empty QualifcationList.MASTER_QUALIFICATION1}">
                     <div>
                        <input class="input_master" type="text"
                           placeholder="${QualifcationList.MASTER_QUALIFICATION1}">
                     </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.MASTER_QUALIFICATION1_PIC_RE}">
                        <div class="img-container-sgm">
                           <img src="resources/masterImg/${QualifcationList.MASTER_QUALIFICATION1_PIC_RE}"
                              class="mImg img-style-size2" id="idCard_img">
                        </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.MASTER_QUALIFICATION2}">
                     <div>
                        <input class="input_master" type="text"
                           placeholder="${QualifcationList.MASTER_QUALIFICATION2}">
                     </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.MASTER_QUALIFICATION2_PIC_RE}">
                        <div class="img-container-sgm">
                           <img src="resources/masterImg/${QualifcationList.MASTER_QUALIFICATION2_PIC_RE}"
                              class="mImg img-style-size2" id="idCard_img">
                        </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.MASTER_QUALIFICATION3}">
                     <div>
                        <input class="input_master" type="text"
                           placeholder="${QualifcationList.MASTER_QUALIFICATION3}">
                     </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.MASTER_QUALIFICATION3_PIC_RE}">
                        <div class="img-container-sgm">
                           <img src="resources/masterImg/${QualifcationList.MASTER_QUALIFICATION3_PIC_RE}"
                              class="mImg img-style-size2" id="idCard_img">
                        </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.MASTER_QUALIFICATION4}">
                     <div>
                        <input class="input_master" type="text"
                           placeholder="${QualifcationList.MASTER_QUALIFICATION4}">
                     </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.MASTER_QUALIFICATION4_PIC_RE}">
                        <div class="img-container-sgm">
                           <img src="resources/masterImg/${QualifcationList.MASTER_QUALIFICATION4_PIC_RE}"
                              class="mImg img-style-size2" id="idCard_img">
                        </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.MASTER_QUALIFICATION5}">
                     <div>
                        <input class="input_master" type="text"
                           placeholder="${QualifcationList.MASTER_QUALIFICATION5}">
                     </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.MASTER_QUALIFICATION5_PIC_RE}">
                        <div class="img-container-sgm">
                           <img src="resources/masterImg/${QualifcationList.MASTER_QUALIFICATION5_PIC_RE}"
                              class="mImg img-style-size2" id="idCard_img">
                        </div>
                     </c:if>
                  </div>
               </li>
               <hr>
               <!-- 소셜 미디어 -->
               <li>
                  <div class="social-media" title="소셜미디어">
                     <div class="instagram">
                        <input class="input_master_2" type="text"
                           placeholder="${SnsList.MASTER_INSTAGRAM}">
                     </div>
                     <div class="twitter">
                        <input class="input_master_2" type="text"
                           placeholder="${SnsList.MASTER_TWITTER}">
                     </div>
                     <div class="blog">
                        <input class="input_master_2" type="text"
                           placeholder="${SnsList.MASTER_BLOG}">
                     </div>
                     <div class="git">
                        <input class="input_master_2" type="text"
                           placeholder="${SnsList.MASTER_GIT}">
                     </div>
                  </div>
                  <div class="video-link" title="영상링크">
                     <div>
                        <input class="input_master_2 youtube_show" type="text"
                           value="${SnsList.MASTER_YOTUBUE1}">
                        <div></div>
                     </div>
                     <div>
                        <input class="input_master_2 youtube_show" type="text"
                           value="${SnsList.MASTER_YOTUBUE2}">
                        <div></div>
                     </div>
                     <div>
                        <input class="input_master_2 youtube_show" type="text"
                           value="${SnsList.MASTER_YOTUBUE3}">
                        <div></div>
                     </div>
                  </div>
               </li>
               <script>
                  let youtube = function(input){
                      var videoId = $(input).val();
                      console.log(videoId);
                      var myId = getId(videoId);
                  
                      function getId(url) {
                          var regExp = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/;
                          var match = url.match(regExp);
                  
                          if (match && match[2].length == 11) {
                              return match[2];
                          } else {
                              return 'error';
                          }
                      }
                  
                      $(input).next().html('<iframe src="//www.youtube.com/embed/' + myId + '" frameborder="0"></iframe>');
                  };
                  
                  (function(){
                      let a = document.getElementsByClassName("youtube_show");
                      let obj = {1 : a[0], 2 : a[1], 3 : a[2]}
                  
                      let all = document.getElementsByTagName("input");
                      $(all).attr("readonly",true);
                  
                      console.log(obj);
                      for(link in obj){
                          youtube(obj[link]);
                      }
                  })();
               </script>
               <hr>
               <!-- 작업 가능 시간 -->
               <li>
                  <div class="sub-title-sgm">선호하는 업무 시간 / 방식</div>
                  <div class="margin-first-sgm">
                     <div class="radio-wrap">
                        <input type="checkbox" id="monday" value="월" class="checkSelect" name="work-day" disabled/>
                        <label class="font_jua day11" for="monday">월</label>
                     </div>
                     <div class="radio-wrap">
                        <input type="checkbox" id="tuesday" value="화" class="checkSelect" name="work-day" disabled/>
                        <label class="font_jua day11" for="tuesday">화</label>
                     </div>
                     <div class="radio-wrap">
                        <input type="checkbox" id="wednesday" value="수" class="checkSelect" name="work-day" disabled/>
                        <label class="font_jua day11" for="wednesday">수</label>
                     </div>
                     <div class="radio-wrap">
                        <input type="checkbox" id="thursday" value="목" class="checkSelect" name="work-day" disabled/>
                        <label class="font_jua day11" for="thursday">목</label>
                     </div>
                     <div class="radio-wrap">
                        <input type="checkbox" id="friday" value="금" class="checkSelect" name="work-day" disabled/>
                        <label class="font_jua day11" for="friday">금</label>
                     </div>
                     <div class="radio-wrap">
                        <input type="checkbox" id="saturday" value="토" class="checkSelect" name="work-day" disabled/>
                        <label class="font_jua day11" for="saturday">토</label>
                     </div>
                     <div class="radio-wrap">
                        <input type="checkbox" id="sunday" value="일" class="checkSelect" name="work-day" disabled/>
                        <label class="font_jua day11" for="sunday">일</label>
                     </div>
                     <div class="radio-wrap">
                        <input type="checkbox" id="home" name="work-style" value="자택" class="checkSelect1 " disabled/>
                        <label class="font_jua home_choose" for="home">자택</label>
                     </div>
                     <div class="radio-wrap">
                        <input type="checkbox" id="work" name="work-style" value="출근" class="checkSelect1" disabled/>
                        <label class="font_jua home_choose" for="work">출근</label>
                     </div>
                     <span class="dupl_choose">*(중복선택가능)</span>
                  </div>
                  <div>
                     <input class="input_master_3" type="time" name="" id=""
                        value="${masterList.MASTER_STARTTIME }"> &nbsp;~&nbsp; <input
                        class="input_master_3" type="time" name="" id=""
                        value="${ masterList.MASTER_ENDTIME }">
                  </div>
               </li>
               <hr>
               <!-- 저장 / 취소 버튼 -->
               <li class="margin-top-sgm"><span class="btn_sgm"  onclick="document.forms[0].submit()">수정</span></li>
            </ul>
         </div>
      </form>
      <script>
         /*day check*/
           (function(){
               let workday= '${ masterList.MASTER_WORKDAY }';
               let arr1 = workday.split(",");
               let arr2 = $("input[name=work-day]");
           
               for(var i=0; i<arr2.length; i++){
           
                  for(var j=0; j<arr1.length; j++){
                  
                 if(   arr1[j] == $("input[name=work-day]")[i].attributes[2].value  ){
           
                        document.getElementsByClassName('checkSelect')[i].checked = true;
           
                     };
                  };      
           
               };
               
               /*work-style check*/
               let workstyle= '${ masterList.MASTER_WORKSTYLE }';
               let arr3 = workstyle.split(",");
               let arr4 = $("input[name=work-style]");
               for(var i=0; i<arr4.length; i++){
                   
                   for(var j=0; j<arr3.length; j++){
                   
                  if(   arr3[j] == $("input[name=work-style]")[i].attributes[3].value){
                         document.getElementsByClassName('checkSelect1')[i].checked = true;
            
                      };
                   };      
            
                };
                
         
           })();
         
         /*img click*/
          let img = document.getElementsByClassName("mImg");
          
          for (let x = 0; x < img.length; x++) {
            img.item(x).onclick=function() {window.open(this.src,"new", 
            "width=1000, height=1000, left=500, top=500, scrollbars=no,titlebar=no,status=no,resizable=no,fullscreen=no")}; 
          }
      </script>
   </body>
</html>