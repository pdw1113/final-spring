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

</head>

<body>
	<div class="frame_addproduct">
		<form action="pInsert.do" role="form" method="post" autocomplete="off" id="success">
			<div class="warring_text_addproduct">
				<h2 class="tit_sect_addproduct">시간 상품등록</h2>
				<p class="text">
					자신의 재능을 시간 단위로 판매하는 내용이 아닌 홍보성 글이나 무성의한 글은 검수과정에서 승인 거절될 수 있습니다.<br>
					직거래를 유도하는 계좌이체 혹은 외부결제를 요구하지 마세요.<br> 연락처, 이메일 등 개인정보가 포함된 글은
					관리자에서 임의로 삭제될 수 있습니다.
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
								<td><input class="pro_nicname" type="text" name="nickName" value="${master.MASTER_NICKNAME}" readonly="readonly"></td>
							</tr>
							<tr>
								<th>이름</th>
								<td>${loginUser.name}</td>
							</tr>
							<tr>
								<th>등급</th>
								<td>${master.MASTER_RANKNAME}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="input_div_addproduct">
				<!-- 제목 -->
				<div class="status_div_addproduct">
					<span class="input_title_addproduct">상품명 (한 줄 제목)</span> 
					<input type="text" placeholder="제목 입력" class="input_text_addproduct" name="title">
				</div>
				<!-- 카테고리 -->
				<div class="status_div_addproduct">

					<span class="input_title_addproduct">카테고리</span> 
					<select class="category1 category_select_addproduct m-r-27 m-l-90">
						<option value="">1차 분류</option>
					</select>

				</div>
				<div class="status_div_addproduct">
					<span class="input_title_addproduct">기본금액</span> 
					<input type="number" class="input_money_addproduct" name="price"><span
						class="won_addproduct">원</span>
				</div>
				<!-- 경력 -->
				<div class="status_div_addproduct">
					<span class="input_title_addproduct">경력</span>
					<select class="category_select_addproduct m-l-122" name="career">
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
						<textarea id="summernote_portfolio" name="portfolio"></textarea>
					</div>
				</div>
				<!-- 자기소개 및 상품 소개 -->
				<div class="status_div_addproduct">
					<div class="input_title_addproduct m-b-10">자기소개 및 상품소개</div>
					<div class="Introduce_addproduct">
						<textarea id="summernote_Introduce" name="introduce"></textarea>
					</div>
				</div>
			</div>
			<!--등록 완료 -->
			<div class="finish_button_div_addproduct">
				<button class="finish_button_addproduct">등록완료</button>
			</div>
		</form>
	</div>
	<%@ include file="../../common/footer.jsp"%>
	</body>
	
	<script>
	    let category = '${category}';
	    let arr = category.split(",");
	    for(a in arr){
	        console.log(a + " : " + arr[a] + " 배열 : " + arr);
	    }   
	</script>


<!-- 썸머노트 -->
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
         			  lang: "ko-KR",					// 한글 설정
         			  placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정
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
         			  lang: "ko-KR",					// 한글 설정
         			  placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정
         			  fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
             			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
         	          
         		});
         	});
   </script>
</html>