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
                  <img src="resources/masterImg/${masterList.mProPicRe}"
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
                        value="${masterList.mNickname}" readonly>
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
                        <img src="resources/masterImg/${masterList.mIdPicRe}"
                           class="mImg img-style-size2" id="idCard_img"
                           onclick="picUpload(this);">
                     </div>
                  </div>
               </li>
               <!-- 학력 -->
               <li>
                    <c:if test="${!empty SchoolList.sHigh || !empty SchoolList.sUniv || !empty SchoolList.sUnivDept ||
                                !empty SchoolList.sUniv2 || !empty SchoolList.sUniv2Dept}">   
                  <div class="edu-ability" title="학력">
                  </c:if>
                    <c:if test="${empty SchoolList.sHigh && empty SchoolList.sUniv && empty SchoolList.sUnivDept &&
                                empty SchoolList.sUniv2 && empty SchoolList.sUniv2Dept}">   
                  <div class="edu-ability" title="등록된 학력이 없습니다.">
                  </c:if>
                     <c:if test="${!empty SchoolList.sHigh}">
                     <div>
                        <input class="input_master width_600" type="text"
                           placeholder="${SchoolList.sHigh}">
                     </div>
                     </c:if>
                     <c:if test="${!empty SchoolList.sUniv || SchoolList.sUnivDept}">
                     <div>
                        <input class="input_master width_242" type="text"
                           placeholder="${SchoolList.sUniv}">                
                         <input class="input_master width_242" type="text"
                           placeholder="${SchoolList.sUnivDept}">
                     </div>
                     </c:if>
                     <c:if test="${!empty SchoolList.sUniv2 || SchoolList.sUniv2Dept}">
                     <div>
                        <input class="input_master width_242" type="text"
                           placeholder="${SchoolList.sUniv2}"> <input
                           class="input_master width_242" type="text"
                           placeholder="${SchoolList.sUniv2Dept}">
                     </div>
                     </c:if>
                  </div>
                  <c:if test="${!empty SchoolList.sUnivPicRe }">
                     <div class="img-container-sgm">
                        <img src="resources/masterImg/${SchoolList.sUnivPicRe}"
                           class="mImg img-style-size2" id="idCard_img">
                     </div>
                  </c:if>
                  <c:if test="${!empty SchoolList.sUniv2PicRe}">
                     <div class="img-container-sgm">
                        <img src="resources/masterImg/${SchoolList.sUniv2PicRe}"
                           class="mImg img-style-size2" id="idCard_img">
                     </div>
                  </c:if>
               </li>
               <!-- 자격증 -->
               <li>
                    <c:if test="${empty QualifcationList.q1 && empty QualifcationList.q2 && empty QualifcationList.q3 && 
                                empty QualifcationList.q4 && empty QualifcationList.q5}">
                  <div class="edu-ability" title="등록된 자격증이 없습니다.">
                  </c:if>
                  <c:if test="${!empty QualifcationList.q1 || !empty QualifcationList.q2 || !empty QualifcationList.q3 || 
                                !empty QualifcationList.q4 || !empty QualifcationList.q5}">
                  <div class="edu-ability" title="자격증">
                  </c:if>
                      <c:if test="${!empty QualifcationList.q1}">
                     <div>
                        <input class="input_master" type="text"
                           placeholder="${QualifcationList.q1}">
                     </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.q1PicRe}">
                        <div class="img-container-sgm">
                           <img src="resources/masterImg/${QualifcationList.q1PicRe}"
                              class="mImg img-style-size2" id="idCard_img">
                        </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.q2}">
                     <div>
                        <input class="input_master" type="text"
                           placeholder="${QualifcationList.q2}">
                     </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.q2PicRe}">
                        <div class="img-container-sgm">
                           <img src="resources/masterImg/${QualifcationList.q2PicRe}"
                              class="mImg img-style-size2" id="idCard_img">
                        </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.q3}">
                     <div>
                        <input class="input_master" type="text"
                           placeholder="${QualifcationList.q3}">
                     </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.q3PicRe}">
                        <div class="img-container-sgm">
                           <img src="resources/masterImg/${QualifcationList.q3PicRe}"
                              class="mImg img-style-size2" id="idCard_img">
                        </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.q4}">
                     <div>
                        <input class="input_master" type="text"
                           placeholder="${QualifcationList.q4}">
                     </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.q4PicRe}">
                        <div class="img-container-sgm">
                           <img src="resources/masterImg/${QualifcationList.q4PicRe}"
                              class="mImg img-style-size2" id="idCard_img">
                        </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.q5}">
                     <div>
                        <input class="input_master" type="text"
                           placeholder="${QualifcationList.q5}">
                     </div>
                     </c:if>
                     <c:if test="${!empty QualifcationList.q5PicRe}">
                        <div class="img-container-sgm">
                           <img src="resources/masterImg/${QualifcationList.q5PicRe}"
                              class="mImg img-style-size2" id="idCard_img">
                        </div>
                     </c:if>
                  </div>
               </li>
               <hr>
               <!-- 소셜 미디어 -->
               <li>
               <c:if test="${!empty SnsList.snsInsta || !empty SnsList.snsTwit || !empty SnsList.snsBlog || !empty SnsList.snsGit}">
                  <div class="social-media" title="소셜미디어">
                </c:if>
               <c:if test="${empty SnsList.snsInsta && empty SnsList.snsTwit && empty SnsList.snsBlog && empty SnsList.snsGit}">
                  <div class="social-media" title="등록된 소셜미디어가 없습니다.">
                </c:if>
                  <c:if test="${!empty SnsList.snsInsta}">
                     <div class="instagram">
                        <input class="input_master_2" type="text"
                           placeholder="${SnsList.snsInsta}">
                     </div>
                   </c:if>
                   <c:if test="${!empty SnsList.snsTwit}">
                     <div class="twitter">
                        <input class="input_master_2" type="text"
                           placeholder="${SnsList.snsTwit}">
                     </div>
                     </c:if>
                     <c:if test="${!empty SnsList.snsBlog}">
                     <div class="blog">
                        <input class="input_master_2" type="text"
                           placeholder="${SnsList.snsBlog}">
                     </div>
                     </c:if>
                     <c:if test="${!empty SnsList.snsGit}">
                     <div class="git">
                        <input class="input_master_2" type="text"
                           placeholder="${SnsList.snsGit}">
                     </div>
                     </c:if>
                  </div>
                  <div class="video-link" title="영상링크">
                  <c:if test="${!empty SnsList.snsYou1}">
                     <div>
                        <input class="input_master_2 youtube_show" type="text"
                           value="${SnsList.snsYou1}">
                        <div></div>
                     </div>
                     </c:if>
                     <c:if test="${!empty SnsList.snsYou2}">
                     <div>
                        <input class="input_master_2 youtube_show" type="text"
                           value="${SnsList.snsYou2}">
                        <div></div>
                     </div>
                     </c:if>
                     <c:if test="${!empty SnsList.snsYou3}">
                     <div>
                        <input class="input_master_2 youtube_show" type="text"
                           value="${SnsList.snsYou3}">
                        <div></div>
                     </div>
                     </c:if>
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
                        value="${masterList.mStartTime }"> &nbsp;~&nbsp; <input
                        class="input_master_3" type="time" name="" id=""
                        value="${ masterList.mEndTime }">
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
               let workday= '${ masterList.mWorkDay}';
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
               let workstyle= '${ masterList.mWorkStyle}';
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