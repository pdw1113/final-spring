<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <div class="header">
         <%@ include file="../../common/header.jsp" %>
    </div>
    <head>
        <meta charset="utf-8">
        <title>MY TEST PAGE</title>
         <!-- include libraries(jQuery, bootstrap) --> 
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

        <style>
            body,html{
            margin:0;
            padding:0;
            width:100%;
            }

            /*인풋 창 검은줄 없애기*/
            input:focus { outline:none; }


            /*"시간 상품등록" 텍스트*/
            .tit_sect_addproduct{
            margin: 35px 0 25px 0;
            font-size: 32px;
            font-weight: 500;
            }   

            /* 경고문 내용*/
            .text {
            color: #666;
            font-size: 15px;
            line-height: 22px;
            }

            /*경고문 틀*/
            .warring_text_addproduct{
                margin: 10px;
                margin-left: 50px;
            }

            .productaddtext_addproduct{
                width: auto;
                color: #333;
                font-size: 24px;
                font-weight: 500;
                line-height: 1.2;   
            }
            
            .product_input_addproduct{
                margin-left: 50px;
                margin-right:50px;
                margin-bottom: 20px;
                border-bottom: 1px solid gray;
            }

            .frame_addproduct{
                width: 1320px;
                margin: 0 auto;
                border-top: solid #fabe00;
            }
            
            .img_addproduct{
                position: relative;
                width: 150px;
                height: 150px; 
                border-radius: 70%;
                object-fit: cover;
                overflow: hidden;
                z-index: 0;
            }

            .img_addproduct2{
                float: right;
                margin-top: 120px;
                margin-right: 10px;
                background-color: white;
                border: none;
                outline: none;
            }

            .input_image_addproducthtml{
              visibility: hidden;
            }

            .priviewimg_addproduct{
                margin-left: 50px;
                float: left;
                border-radius: 70%
            }

            .person_status_addproduct{
                margin-left: 300px;
                margin-bottom: 10px;
            }

            .img_buttondiv_addproduct{
                border: 1px solid black;
                width: 30px;
                height: 30px;
            }

            .person_status_addproduct th{
                font-size: 18px;
                line-height: 36px;
            }

            .person_status_addproduct td{
                 border-bottom: 1px solid #e7e7e7;
                 font-size: 17px;
                 color: #666;
                 padding-left: 30px;
            }

            .frame1_addproduct{
                margin-left: 50px;
                margin-right:50px;
                border-bottom: 1px solid gray;
                padding-bottom: 65px;
            }

            .title_div_addproduct{
                margin-top: 15px;
                padding-bottom: 15px;
                border-bottom: 1px solid rgb(236, 236, 236);
                width: 1220px;
            }

            .input_div_addproduct{
                margin-top: 15px;
                margin-left: 50px;
                padding-bottom: 15px;
                width: 1220px;
            }

            .input_text_addproduct{
                margin-left: 15px;
                vertical-align: middle;
                padding: 0 15px;
                font-family: Malgun Gothic, sans-serif, Dotum, '돋움', arial;
                position: relative;
                height: 36px;
                border: 1px solid #a3a0a0;
                color: #333;
                font-size: 16px;
                width:1000px;
            }

            .input_title_addproduct{
                font-size: 16px;
                font-weight: 700;
            }

            .status_div_addproduct{
                margin-top: 15px;
                padding-bottom: 15px;
                border-bottom: 1px solid rgb(236, 236, 236);
            }

            .category_select_addproduct {
                height: 36px;
                border: 1px solid #a3a0a0;
                font-size: 16px;
                width: 312px;
            }

            .career_addproduct{
                margin-top: 15px;
                padding-bottom: 15px;
                border-bottom: 1px solid rgb(236, 236, 236);
            }

            .won_addproduct{
                border-color: #a3a0a0;
                border-style: solid;
                border-width: 1px 1px 1px 0;
                padding-top: 6px;
                padding-bottom: 10px;
                padding-right: 5px;
            }

            .price_div_addproduct{
                margin-top: 15px;
                padding-bottom: 15px;
                border-bottom: 1px solid rgb(236, 236, 236);
            }

            .input_money_addproduct{
                margin-left: 15px;
                vertical-align: middle;
                padding: 0 15px;
                font-family: Malgun Gothic, sans-serif, Dotum, '돋움', arial;
                position: relative;
                height: 36px;
                border: 1px solid #a3a0a0;
                color: #333;
                font-size: 16px;
                width: 290px; 
                margin-left: 90px; 
                border-right: none;
            }

            .finish_button_div_addproduct{
                margin-top: 30px;
            }

            .finish_button_addproduct{
			 	width: 120px;
			 	height: 40px;
			 	text-align: center;
			    line-height: 45px;
			    border-radius: 15px;
			    font-size: 25px;
			    border-radius: 7px 7px 7px 7px;
			    color: white;
			    background-color: #fabe00;
			    font-family: jua;
			    margin-left: 625px;
			    cursor:pointer;
            }
             .header div.login_box_Mainhead{
	         margin-top: 1.5rem;
	         line-height: 3rem;
	         margin-right: 0.3rem;
	         transition-duration:0s;
	         }
	         .header div.login_box_Mainhead .head_login_Mainhead{
	         height: 3.6rem;
	         width: 8.6rem;
	         transition-duration:0s;
	         }
    </style>
    </head>

    <body>
        
  <div class="frame_addproduct">
    <div class="warring_text_addproduct"> 
        <h2 class="tit_sect_addproduct">시간 상품등록</h2>
        <p class="text">자신의 재능을 시간 단위로 판매하는 내용이 아닌 홍보성 글이나 무성의한 글은 검수과정에서 승인 거절될 수 있습니다.<br>
        직거래를 유도하는 계좌이체 혹은 외부결제를 요구하지 마세요.<br>
        연락처, 이메일 등 개인정보가 포함된 글은 관리자에서 임의로 삭제될 수 있습니다.
        </p>
    </div>

    <div class="product_input_addproduct">
        <h3 class="productaddtext_addproduct">상품 정보 입력</h3>
    </div>

    <div class="frame1_addproduct">
            <!--이미지 파일 업로드-->
            <input class="input_image_addproducthtml" type='file' id='upload' name='upload'/>
            
            <!-- 이미지 미리보기 공간 -->
            <div class="priviewimg_addproduct" id='preview'>
                <button type="button" class="img_addproduct2" onclick="fileupload();" style="color: none;">
                    <img src="resources/img/btn_portrait_edit.png"> 
                </button>
                <img class="img_addproduct" src="resources/img/person_icon.png">
            </div>

        <!-- 닉네임 성별 나이 -->
        <div class="person_status_addproduct">
            <table>
                <tbody>
                    <tr>
                        <th>닉네임</th>
                        <td>지존파워동민</td>
                    </tr>
                    <tr>
                        <th>이름</th>
                        <td>천동민</td>
                    </tr>
                    <tr>
                        <th>성별</th>
                        <td>남성</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="input_div_addproduct">

        <!-- 제목 -->
        
        <div class="status_div_addproduct">
            <span class="input_title_addproduct">상품명 (한 줄 제목)</span> 
            <input type="text" placeholder="제목 입력" class="input_text_addproduct">
        </div>

        <!-- 카테고리 -->
        <div class="status_div_addproduct">
            <span class="input_title_addproduct">카테고리</span>
            <select style="margin-left: 90px; margin-right: 27px;" class="category_select_addproduct">
                <option value="">1차 분류</option>
                <option>디자이너</option><option>IT개발자</option><optio>사무/기획</option><option>회계/인사</option>
            </select>
            <select  style="margin-right: 27px;" class="category_select_addproduct">
                <option value="">2차 분류</option>
                <option>디자이너</option><option>IT개발자</option><optio>사무/기획</option><option>회계/인사</option>
            </select>
            <select  class="category_select_addproduct">
                <option value="">3차 분류</option>
                <option>디자이너</option><option>IT개발자</option><optio>사무/기획</option><option>회계/인사</option>
            </select>
        </div>



        <div class="status_div_addproduct">
            <span class="input_title_addproduct">기본금액</span> 
            <input  type="number" class="input_money_addproduct"><span class="won_addproduct">원</span>
        </div>


        <!-- 경력 -->
        <div class="status_div_addproduct">
            <span class="input_title_addproduct">경력</span>
            <select class="category_select_addproduct" style="margin-left: 122px;">
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
            <div class="input_title_addproduct" style="margin-bottom: 10px;">포트폴리오(상품관련)</div>

            <div class="portfolio_addproduct">
                <textarea id="summernote_portfolio"></textarea>
            </div>
        </div>

        <!-- 자기소개 및 상품 소개 -->
        <div class="status_div_addproduct">
            <div class="input_title_addproduct" style="margin-bottom: 10px;">자기소개 및 상품소개</div>
            
            <div class="Introduce_addproduct">
                <textarea id="summernote_Introduce"></textarea>
            </div>
        </div>
    </div>

    <!--등록 완료 -->
    <div class="finish_button_div_addproduct">
        <div class="finish_button_addproduct" onclick="">등록완료</div>
    </div>
</div>

      <%@ include file="../../common/footer.jsp" %>
</body>


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