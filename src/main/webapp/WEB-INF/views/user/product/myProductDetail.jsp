<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<div class="header">
<%@ include file="../../common/header.jsp"%>
</div>
<head>

<meta charset="utf-8">
<title>MY TEST PAGE</title>
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="resources/css/productInsert.css">
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<!-- JUA 폰트-->
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

</head>

<body>
   <div class="frame_addproduct">
      <form action="pInsert.do" role="form" method="post" autocomplete="off" id="success" enctype="multipart/form-data" >
         <div class="warring_text_addproduct">
            <h2 class="tit_sect_addproduct">시간 상품등록</h2>
            <p class="text">
               자신의 재능을 시간 단위로 판매하는 내용이 아닌 홍보성 글이나 무성의한 글은 검수과정에서 승인 거절될 수 있습니다.<br>
               직거래를 유도하는 계좌이체 혹은 외부결제를 요구하지 마세요.<br> 연락처, 이메일 등 개인정보가 포함된 글은
               관리자에서 임의로 삭제될 수 있습니다.<br>
               * 모든 항목은 필수 항목입니다.
            </p>
         </div>
         <div class="product_input_addproduct">
            <h3 class="productaddtext_addproduct">상품 정보 입력</h3>
         </div>
         <div class="frame1_addproduct">
            <!--이미지 파일 업로드-->
            <input class="input_image_addproducthtml" type='file' id='upload' name='upload' />
            <!-- 이미지 미리보기 공간 -->
            <div class="priviewimg_addproduct" id='preview'>
               <button type="button" class="img_addproduct2"
                  onclick="fileupload();">
                  <img src="resources/img/btn_portrait_edit.png">
               </button>
               <img class="img_addproduct" src="resources/img/not_image.png">
            </div>
            <!-- 닉네임 성별 나이 -->
            <div class="person_status_addproduct">
               <table>
                  <tbody>
                     <tr>
                        <th>닉네임</th>
                        <td><input class="pro_nicname" type="text" name="nickName" value="${master.mNickname}" readonly="readonly"></td>
                     </tr>
                     <tr>
                        <th>이름</th>
                        <td>${loginUser.name}</td>
                     </tr>
                     <tr>
                        <th>등급</th>
                        <td>${master.mRankname}</td>
                     </tr>
                  </tbody>
               </table>
            </div>
         </div>
         <div class="input_div_addproduct">
            <!-- 제목 -->
            <div class="status_div_addproduct">
               <span class="input_title_addproduct">상품명 (한 줄 제목)</span> 
               <input type="text" placeholder="제목 입력" class="input_text_addproduct" name="title" id="title"
               value="${product.title}">
            </div>
            <!-- 카테고리 -->
            <div class="status_div_addproduct">

               <span class="input_title_addproduct">카테고리</span> 
               <select class="category1 category_select_addproduct m-l-90" id="oneCate">
               <option>대분류를 선택해주세요.</option>
               </select>
               <select class="category1 category_select_addproduct m-r-27 m-l-30" id="category">
                   </select>
                   <button type="button" class="cate_add_btn" id="add">추가</button>
               </div>
   
               <div class="status_div_addproduct">
   
                  <span class="input_title_addproduct">추가됨</span>
                  <span class="m-l-add" id="added">
                  </span>
               </div>
               
               <!-- 등록한 카테고리 -->
               <input type="hidden" class="input_text_addproduct" name="category" id="hiddenInput">
               
            <div class="status_div_addproduct">
               <span class="input_title_addproduct">기본금액</span> 
               <input type="number" class="input_money_addproduct" name="price" id="price" value="${product.price}"><span
                  class="won_addproduct">원</span>
            </div>
            <!-- 경력 -->
            <div class="status_div_addproduct">
               <span class="input_title_addproduct">경력</span>
               <select class="category_select_addproduct m-l-122" name="career" id="career">
                  <option value="">선택</option>
                  <option value="00">1년 미만</option>
                  <option value="01">1년</option>
                  <option value="02">2년</option>
                  <option value="03">3년</option>
                  <option value="04">4년</option>
                  <option value="05">5년</option>
                  <option value="06">6년</option>
                  <option value="07">7년</option>
                  <option value="08">8년</option>
                  <option value="09">9년</option>
                  <option value="10">10년 이상</option>
                  <option value="15">15년 이상</option>
                  <option value="20">20년 이상</option>
               </select>
            </div>
            <!-- 수상내역 포트폴리오 -->
            <div class="status_div_addproduct">
               <div class="input_title_addproduct m-b-10">포트폴리오(상품관련)</div>
               <div class="portfolio_addproduct">
                  <textarea id="summernote_portfolio" name="portfolio" value="${product.portfolio}" ></textarea>
               </div>
            </div>
            <!-- 자기소개 및 상품 소개 -->
            <div class="status_div_addproduct">
               <div class="input_title_addproduct m-b-10">자기소개 및 상품소개</div>
               <div class="Introduce_addproduct">
                  <textarea id="summernote_Introduce" name="introduce" value="${product.introduce}"></textarea>
               </div>
            </div>
         </div>
         <!-- 대분류 카테고리 -->
         <input type="hidden" name="cateone" value="" id="cateone">
         <!--등록 완료 -->
         <div class="finish_button_div_addproduct">
            <button class="finish_button_addproduct" onclick="return validate();">등록완료</button>
         </div>
      </form>
   </div>
   <%@ include file="../../common/footer.jsp"%>
   </body>
   
   <script>
      // 대분류 가져오기
      (function(){
         let $mycate = '${category}';
         let allCate = ["웹개발", "데이터베이스", "모바일웹", "임베디드", "블록체인", "서버", "게임", "데이터분석", "보안"];
         
         for(var i = 0; i < allCate.length; i++){
            if($mycate.match(allCate[i]) != null){
               $("#oneCate").append("<option>" + allCate[i] + "</option>");
            }
         }
      })();
      
      // option태그는 onclick, onselect등 먹히질 않으니 
      // select태그에 onchange메소드를 걸어준다.
      $("#oneCate").change(function(){
         let oneSelected = $('#oneCate option:selected').val();
         $("#cateone").val(oneSelected);
         console.log($("#cateone").val());
      });
      
      (function(){
         // Controller에서 받아온 능력자 카테고리
          let category = '${category}';
          
          // 문자열을 ,구분자로 잘라내어 배열에 담는다.
          let arr = category.split(", ");
          
          // for문으로 select option에 추가한다.
          for(a in arr){
             $("#category").append("<option>" + arr[a] + "</option>");
          }
      })();

      
      // 대분류 선택 안하면 "대분류를 선택해주세요"가 등록되어버린다.
      let dame = $('#oneCate option:selected').val();
      $("#cateone").val(dame);
      
      // 유효성 검사
      function validate(){
         
         // 이미지 등록
          if(!document.getElementById("upload").value){
              alert("사진을 넣어주세요");
              return false;
            }
            
            if(!document.getElementById("title").value){
               alert("상품명을 넣어주세요");
               document.getElementById("title").focus();
              return false;
            }
            
            if($("#cateone").val().match("대분류")){
            alert("대분류를 선택해 주세요.");
            return false;
         }
         
         if($('#hiddenInput').val()==""){
                alert("카테고리를 추가해주세요"); 
                document.getElementById("hiddenInput").focus();
                return false;
             }

         if(!document.getElementById("price").value){
                alert("기본금액을 입력해주세요"); 
                document.getElementById("price").focus();
                return false;
             }
         
         if(!document.getElementById("career").value){
                alert("경력을 선택해주세요"); 
                document.getElementById("career").focus();
                  return false;
             }
             
             if(!document.getElementById("summernote_portfolio").value){
                alert("포트폴리오를 입력해주세요"); 
                $("#summernote_portfolio").focus();
                return false;
             }
             
             if(!document.getElementById("summernote_Introduce").value){
                alert("상품소개를 입력해주세요"); 
                document.getElementById("summernote_Introduce").focus();
                  return false;
             }
         
         return true;
         
      }
   </script>
   
    <script>
        // 나의 카테고리로 추가시키는 함수
        const addCategory = function(){
             let temp    = [];
             let category = [];
             let obj     = $('#added span');
             let x       = 0;

             // select박스의 선택된 값 가져오기.
             let choice = $('#category option:selected').val();

             // 현재 option의 값을 임시 배열에 저장
             $(obj).each(function(i){
                 temp[i] = $(this).html();
             });

             // 선택한 옵션값이 임시 배열 속 문자열과 같은 경우 임시 변수값 증가
             $(temp).each(function(i){

                 if(choice == temp[i]){
                     x++;
                 }
             });

             // 중복 값이 없을 경우 select박스에 option값 추가하기.
             if(x == 0 && choice != undefined){
                 $("#added").append("<span>" + choice + "</span>");
             }
             
             // Controller 전달용 
             let obj2 = $('#added span');
             
             $(obj2).each(function(i){
                category[i] = $(this).html();
             });
             console.log(category);
             
             // 전송 form의 name="category"에 추가하기
             $("#hiddenInput").val(category);
         }

        $("#add").click(function(){
           addCategory();
        });
     </script>



<script>
      var upload = document.querySelector('#upload');
      
      /* FileReader 객체 생성 */
      var reader = new FileReader();
      
         /* reader 시작시 함수 구현 */
      reader.onload = (function () {
      
         this.image = document.createElement('img');
         var vm = this;
         
         return function (e) {
             /* base64 인코딩 된 스트링 데이터 */
             vm.image.src = e.target.result
         }
      })()
      
         upload.addEventListener('change',function (e) {
         var get_file = e.target.files;
      
         if(get_file){
             reader.readAsDataURL(get_file[0]);
         }
         $('.img_addproduct').remove();
         image.className = "img_addproduct";
         preview.appendChild(image);
      })
      
      function fileupload(){
         $('#upload').click();
      }
         
      <!-- 썸머노트 -->
      $(document).ready(function() {
               //여기 아래 부분
               $('#summernote_portfolio').summernote({
                    toolbar: [
                          // [groupName, [list of button]]
                          ['fontname', ['fontname']],
                          ['fontsize', ['fontsize']],
                          ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
                          ['color', ['forecolor','color']],
                          ['table', ['table']],
                          ['para', ['ul', 'ol', 'paragraph']],
                          ['height', ['height']],
                          ['insert',['picture','link','video']],
                          ['view', ['fullscreen', 'help']]
                        ],
                    height: 300,                 // 에디터 높이
                    minHeight: null,             // 최소 높이
                    maxHeight: null,             // 최대 높이
                    focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
                    lang: "ko-KR",               // 한글 설정
                    placeholder: '최대 2048자까지 쓸 수 있습니다',   //placeholder 설정
                    fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
                      fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
                      
               });
      
                 $('#summernote_Introduce').summernote({
                    toolbar: [
                          // [groupName, [list of button]]
                          ['fontname', ['fontname']],
                          ['fontsize', ['fontsize']],
                          ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
                          ['color', ['forecolor','color']],
                          ['table', ['table']],
                          ['para', ['ul', 'ol', 'paragraph']],
                          ['height', ['height']],
                          ['insert',['picture','link','video']],
                          ['view', ['fullscreen', 'help']]
                        ],
                    height: 200,                 // 에디터 높이
                    minHeight: null,             // 최소 높이
                    maxHeight: null,             // 최대 높이
                    focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
                    lang: "ko-KR",               // 한글 설정
                    placeholder: '최대 2048자까지 쓸 수 있습니다',   //placeholder 설정
                    fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
                      fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
                      
               });
            });
   </script>
</html>