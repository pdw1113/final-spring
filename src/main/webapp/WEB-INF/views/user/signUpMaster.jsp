<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Document</title>

    <!-- JUA 폰트-->
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

    <!-- JQUERY-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <link rel="stylesheet" type="text/css" href="resources/css/signUpMaster.css">
</head>
<body>
	
	<%@ include file="../common/header.jsp" %>

    <form action="">
        <!-- 능력자 사진 등록 -->
        <div class="text-align-center-sgm">
            <div class="font_jua title-sgm">능력자 등록</div>
            <span>
                <div class="img-container-sgm border-radius-100">
                    <img src="resources/img/no-image.png" class="img-style-size" id="profile_img" onclick="picUpload(this);">
                    <input type="file" id="profile_file" hidden>
                </div>
                <div class="img-container-info">
                    <br>
                    * 다른 사람의 사진을 도용하는 것은 불법입니다.
                    <br>
                    * 정면 얼굴사진을 업로드 해주시기 바랍니다.
                    <br>
                    * 최대 용량은 5MB까지 입니다.
                </div>
            </span>
        </div>
        <script>
            /* img 클릭 시 사진 업로드 */
            let picUpload = function(obj){
                $(obj).next().click();
            }
            
            $("#profile_file").change(function(event){
                /*
                    let : 기본적인 변수 형태
                    var : 변수 할당전에도 출력 가능함. 
                        블럭밖에서도 호출 가능.
                        var hositing : 어디에 선언했건 위로 끌어 올려준다. 
                    const : 한번 선언하면 변경 불가능
                */

                /* 
                    FileReader란?
                    웹 애플리케이션이 비동기적으로 데이터를 읽기 위하여 읽을 파일을 가리키는 File혹은 Blob객체를 이용해 
                    파일의 내용을(혹은 raw data버퍼로) 읽고 사용자의 컴퓨터에 저장하는 것을 가능하게 한다.
                */

                /*
                    readAsDataURL 메소드란?
                    readAsDataURL 메서드는 컨텐츠를 특정 Blob 이나 File에서 읽어 오는 역할을 합니다. 
                    읽어오는 read 행위가 종료되는 경우에, readyState 의 상태가 DONE이 되며,   loadend 이벤트가 트리거 됩니다. 
                    이와 함께,  base64 인코딩 된 스트링 데이터가 result  속성(attribute)에 담아지게 됩니다.
                */

                // 이벤트 동작을 중단시킨다.
                event.preventDefault();

                // 업로드 된 파일
                let file = this.files[0];

                // 미리보기 용 FileReader
                reader = new FileReader();

                // src를 변경할 img
                let preview = document.querySelector('#profile_img');
                
                // FileReader 업로드 시 이벤트!
                reader.onload = function (event) {
                    $(preview).attr('src', event.target.result); // src를 불러온 String값으로 치환한다.
                }

                reader.readAsDataURL(file); // DataURL 형식으로 파일을 읽어준다.
            });
        </script>

        <!-- 능력자 정보 등록 -->
        <div class="font_jua info-container-sgm">

            <ul>
            <!-- 별명 등록 -->
            <li>
                <div class="sub-title-sgm">별명 등록</div>
                <div>
                    <input class="input_master" type="text">
                    <span class="btn_sgm font_jua" id="dupl_check">중복확인</span>
                    <span class="hide-span-sgm green">사용가능</span>
                    <span class="hide-span-sgm red">사용불가</span>
                </div>
            </li>
            <script>
                clicked="true";
                $("#dupl_check").click(function() {
                    if (clicked) {
                        $('.green').show();
                        $('.red').hide();
                        clicked = false;
                    } else {
                        $('.green').hide();
                        $('.red').show();
                        clicked = true;
                    }
                });
            </script>


            <hr>
            <!-- 카테고리 등록 -->
            <li>
                <div class="sub-title-sgm">카테고리 등록</div>
                <div>
                    <div>
                        <select size="8" class="category1 font_jua select-sgm">
                            <option disabled class="text-align-center-sgm">1 분류</option>
                            <option disabled>----------</option>
                         <!--    <option>데이터베이스</option>
                            <option>프레임워크</option>
                            <option>백엔드</option>
                            <option>프론트엔드</option>
                            <option>웹개발</option>
                            <option>게임개발</option>
                            <option>아두이노</option>
                            <option>넥사크로</option>
                            <option>기타등등</option> -->
                        </select>
                        <select size="8" class="category2 font_jua select-sgm" >
                            <option disabled class="text-align-center-sgm">2 분류</option>
                            <option disabled>----------</option>
                            <!-- <option>데이터베이스</option>
                            <option>프레임워크</option>
                            <option>백엔드</option>
                            <option>프론트엔드</option>
                            <option>웹개발</option>
                            <option>게임개발</option>
                            <option>아두이노</option>
                            <option>넥사크로</option>
                            <option>기타등등</option> -->
                        </select>
                        <select size="8" class="category3 font_jua select-sgm" id="3rd-cate">
                            <option disabled class="text-align-center-sgm">3 분류</option>
                            <option disabled>----------</option>
                           <!--  <option>데이터베이스</option>
                            <option>프레임워크</option>
                            <option>백엔드</option>
                            <option>프론트엔드</option>
                            <option>웹개발</option>
                            <option>게임개발</option>
                            <option>아두이노</option>
                            <option>넥사크로</option>
                            <option>기타등등</option> -->
                        </select>
                            <span class="l-btn-container">
                                <img src="resources/img/left_button_sgm.png" class="lr-btn-img-size" id="minus-category">
                            </span>
                            <span class="r-btn-container">
                                <img src="resources/img/right_button_sgm.png" class="lr-btn-img-size" id="plus-category">
                            </span>
                            <span class="d-btn-container">
                                <img src="resources/img/rollback.png" class="lr-btn-img-size" id="delete-all">
                            </span>
                        <select size="8" class="font_jua select-sgm" id="my-cate">
                            <option disabled class="text-align-center-sgm">나의 카테고리</option>
                            <option disabled>-----------</option>
                        </select>
                    </div>
                </div>
            </li>
            <script>
                // 나의 카테고리로 추가시키는 함수
                const addCategory = function(){
                    let temp    = [];
                    let obj     = $('#my-cate option');
                    let x       = 0;

                    // select박스의 선택된 값 가져오기.
                    let choice = $('#3rd-cate option:selected').val();

                    // 현재 option의 값을 임시 배열에 저장
                    $(obj).each(function(i){
                        temp[i] = $(this).val();
                    });
                    console.log(temp)

                    // 선택한 옵션값이 임시 배열 속 문자열과 같은 경우 임시 변수값 증가
                    $(temp).each(function(i){

                        if(choice == temp[i]){
                            x++;
                        }
                    });
                    console.log(x);

                    // 중복 값이 없을 경우 select박스에 option값 추가하기.
                    if(x == 0 && choice != undefined){
                        $("#my-cate").append("<option>" + choice + "</option>");
                    }
                }

                // [>] 버튼 클릭 시 추가
                $('#plus-category').click(function(){
                    addCategory();
                });

                // [<] 버튼 클릭 시 삭제
                $('#minus-category').click(function(){
                    $('#my-cate option:selected').remove();
                });

                // 더블클릭 시 추가
                $('#3rd-cate option').dblclick(function(){
                    addCategory();
                });

                // 더블클릭 시 삭제 - 동적 요소에 이벤트를 바인딩 해야 할 때 사용해야 한다.
                $(document).on("dblclick","#my-cate option",function(){
                    $('#my-cate option:selected').remove();
                });

                // 전체 삭제
                $('#delete-all').click(function(){
                    let yes = confirm("정말 초기화 하시겠습니까?");
                    if(yes){
                        $('#my-cate option:gt(1)').remove();
                    }
                });
            </script>

            <hr>

            <!-- 능력 인증 -->
            <li>
                <div class="sub-title-sgm">능력 인증</div>
                <div class="text-align-center-sgm minus-margin-sgm">
                    <div class="font_jua">신분증</div>
                    <div class="img-container-sgm-2">
                        <img src="resources/img/profile.png" class="img-style-size2" id="idCard_img" onclick="picUpload(this);">
                        <input type="file" id="idCard_file" hidden>
                    </div>
                    <div class="img-container-info-2">
                        <br>
                        * 주민등록번호 뒷자리는 가려주세요.
                        <br>
                    </div>
                </div>
            </li>
            <script>
                $("#idCard_file").change(function(event){
                    /*
                        let : 기본적인 변수 형태
                        var : 변수 할당전에도 출력 가능함. 
                              블럭밖에서도 호출 가능.
                              var hositing : 어디에 선언했건 위로 끌어 올려준다. 
                        const : 한번 선언하면 변경 불가능
                    */
        
                    /* 
                        FileReader란?
                        웹 애플리케이션이 비동기적으로 데이터를 읽기 위하여 읽을 파일을 가리키는 File혹은 Blob객체를 이용해 
                        파일의 내용을(혹은 raw data버퍼로) 읽고 사용자의 컴퓨터에 저장하는 것을 가능하게 한다.
                    */
        
                    /*
                        readAsDataURL 메소드란?
                        readAsDataURL 메서드는 컨텐츠를 특정 Blob 이나 File에서 읽어 오는 역할을 합니다. 
                        읽어오는 read 행위가 종료되는 경우에, readyState 의 상태가 DONE이 되며,   loadend 이벤트가 트리거 됩니다. 
                        이와 함께,  base64 인코딩 된 스트링 데이터가 result  속성(attribute)에 담아지게 됩니다.
                    */
        
                    // 이벤트 동작을 중단시킨다.
                    event.preventDefault();
        
                    // 업로드 된 파일
                    let file = this.files[0];
        
                    // 미리보기 용 FileReader
                    reader = new FileReader();
        
                    // src를 변경할 img
                    let preview = document.querySelector('#idCard_img');
                    
                    // FileReader 업로드 시 이벤트!
                    reader.onload = function (event) {
                        $(preview).attr('src', event.target.result); // src를 불러온 String값으로 치환한다.
                    }
        
                    reader.readAsDataURL(file); // DataURL 형식으로 파일을 읽어준다.
                });
            </script>

            <!-- 학력 인증 -->
            <li>
                <div class="edu-ability" title="학력">
                    <div>
                        <input class="input_master width_500" type="text" placeholder="고등학교">
                        <span class="btn_sgm font_jua" onclick="picUpload(this);">업로드</span>
                        <input type="file" hidden onchange="ok(this);">
                        <span class="upCheck">OK</span>
                    </div>
                    <div>
                        <input class="input_master width_242" type="text" placeholder="대학교">
                        <input class="input_master width_242" type="text" placeholder="학과">
                        <span class="btn_sgm font_jua" onclick="picUpload(this);">업로드</span>
                        <input type="file" hidden onchange="ok(this);">
                        <span class="upCheck">OK</span>
                    </div>
                    <div>
                        <input class="input_master width_242" type="text" placeholder="대학원">
                        <input class="input_master width_242" type="text" placeholder="학과">
                        <span class="btn_sgm font_jua" onclick="picUpload(this);">업로드</span>
                        <input type="file" hidden onchange="ok(this);">
                        <span class="upCheck">OK</span>
                    </div>
                </div>
            </li>

            <!-- 자격증 -->
            <li>
                <div class="certify-ability " title="자격증(최대10개)">
                    <div>
                        <input class="input_master" type="text" placeholder="자격증">
                        <span class="btn_sgm font_jua" onclick="picUpload(this);">업로드</span>
                        <input type="file" hidden onchange="ok(this);">
                        <span class="upCheck">OK</span>
                    </div>
                    <div>
                        <input class="input_master" type="text" placeholder="자격증">
                        <span class="btn_sgm font_jua" onclick="picUpload(this);">업로드</span>
                        <input type="file" hidden onchange="ok(this);">
                        <span class="upCheck">OK</span>
                    </div>
                    <div>
                        <input class="input_master" type="text" placeholder="자격증">
                        <span class="btn_sgm font_jua" onclick="picUpload(this);">업로드</span>
                        <input type="file" hidden onchange="ok(this);">
                        <span class="upCheck">OK</span>
                    </div>
                    <img src="resources/img/plus-icon.png" class="lr-btn-img-size btn_add_input" id="add-input">
                </div>
            </li>

            <script>
                $('#add-input').click(function(){

                    let inputTag = "<div><input class='input_master' type='text' placeholder='자격증'><span class='btn_sgm font_jua' onclick='picUpload(this);'>업로드</span>";
                    let inputTag2 = "<input type='file' hidden onchange='ok(this);'><span class='upCheck'>OK</span></div>"
                    $(this).parent().append(inputTag + inputTag2);
                })


                let ok = function(obj){
                    $(obj).next().css("display","inline");
                };
            </script>
            
            <hr>

            <!-- 소셜 미디어 -->
            <li>
                <div class="social-media" title="소셜미디어">
                    <div class="instagram">
                        <input class="input_master_2" type="text" placeholder="인스타그램">
                    </div>
                    <div class="twitter">
                        <input class="input_master_2" type="text" placeholder="트위터">
                    </div>
                    <div class="blog">
                        <input class="input_master_2" type="text" placeholder="블로그">
                    </div>
                    <div class="git">
                        <input class="input_master_2" type="text" placeholder="GIT">
                    </div>
                </div>
                <div class="video-link" title="영상링크">
                    <div>
                        <input class="input_master_2" type="text" value="https://" onfocusout="youtube(this);">
                        <div>
                        </div>
                    </div>
                    <div>
                        <input class="input_master_2" type="text" value="https://" onfocusout="youtube(this);">
                        <div>
                        </div>
                    </div>
                    <div>
                        <input class="input_master_2" type="text" value="https://" onfocusout="youtube(this);">
                        <div>
                        </div>
                    </div>
                </div>
            </li>
            <script>
                let youtube = function(input){
                    function getId(url) {
                        var regExp = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/;
                        var match = url.match(regExp);

                        if (match && match[2].length == 11) {
                            return match[2];
                        } else {
                            return 'error';
                        }
                    }
                    
                    var videoId = $(input).val();
                    var myId = getId(videoId);

                    $(input).next().html('<iframe src="//www.youtube.com/embed/' + myId + '" frameborder="0"></iframe>');
                };
            </script>

            <hr>

            <!-- 작업 가능 시간 -->
            <li>
                <div class="sub-title-sgm">선호하는 업무 시간 / 방식</div>
                <div class="margin-first-sgm">
                    <div class="radio-wrap">
                        <input type="checkbox" id="monday" value="월"/>
                        <label class="font_jua" for="monday">월</label>
                    </div>
                    <div class="radio-wrap">
                        <input type="checkbox" id="tuesday" value="화"/>
                        <label class="font_jua" for="tuesday">화</label>
                    </div>
                    <div class="radio-wrap">
                        <input type="checkbox" id="wednesday" value="수"/>
                        <label class="font_jua" for="wednesday">수</label>
                    </div>
                    <div class="radio-wrap">
                        <input type="checkbox" id="thursday" value="목"/>
                        <label class="font_jua" for="thursday">목</label>
                    </div>
                    <div class="radio-wrap">
                        <input type="checkbox" id="friday" value="금"/>
                        <label class="font_jua" for="friday">금</label>
                    </div>
                    <div class="radio-wrap">
                        <input type="checkbox" id="saturday" value="토"/>
                        <label class="font_jua" for="saturday">토</label>
                    </div>
                    <div class="radio-wrap">
                        <input type="checkbox" id="sunday" value="일"/>
                        <label class="font_jua" for="sunday">일</label>
                    </div>
                    <div class="radio-wrap">
                        <input type="checkbox" id="home" name="a" value="자택"/>
                        <label class="font_jua home_choose" for="home">자택</label>
                    </div>
                    <div class="radio-wrap">
                        <input type="checkbox" id="work" value="출근"/>
                        <label class="font_jua home_choose" for="work">출근</label>
                    </div>
                    <span class="dupl_choose">*(중복선택가능)</span>
                </div>
                <div>
                    <input class="input_master_3" type="time" name="" id="">
                    &nbsp;~&nbsp;
                    <input class="input_master_3" type="time" name="" id="">
                </div>
            </li>

            <hr>

            <!-- 저장 / 취소 버튼 -->
            <li class="margin-top-sgm">
                <span class="btn_sgm">저장</span>
                <span class="btn_sgm_2">취소</span>
            </li>
        </ul>
    </div>
    </form>
    
    <%@ include file="../common/footer.jsp" %>
    
    <script>
         // 컨트롤러에서 데이터 받기
         var jsonData = JSON.parse('${category}');
         console.log(jsonData);
         
         var cate1Arr = new Array();
         var cate1Obj = new Object();
         
         // 1차 분류 셀렉트 박스에 삽입할 데이터 준비
         for(var i = 0; i < jsonData.length; i++) {
          
          if(jsonData[i].level == "1") {
           cate1Obj = new Object();  //초기화
           cate1Obj.cateCode = jsonData[i].cateCode;
           cate1Obj.cateName = jsonData[i].cateName;
           cate1Arr.push(cate1Obj);
          }
         }
         
         // 1차 분류 셀렉트 박스에 데이터 삽입
         var cate1Select = $("select.category1")
         
         for(var i = 0; i < cate1Arr.length; i++) {
          cate1Select.append("<option value='" + cate1Arr[i].cateCode + "'>"
               + cate1Arr[i].cateName + "</option>"); 
         }
         
         
         $(document).on("change", "select.category1", function(){
         
         	 var cate2Arr = new Array();
         	 var cate2Obj = new Object();
         	 
         	 // 2차 분류 셀렉트 박스에 삽입할 데이터 준비
         	 for(var i = 0; i < jsonData.length; i++) {
         	  
         	  if(jsonData[i].level == "2") {
         	   cate2Obj = new Object();  //초기화
         	   cate2Obj.cateCode = jsonData[i].cateCode;
         	   cate2Obj.cateName = jsonData[i].cateName;
         	   cate2Obj.cateCodeRef = jsonData[i].cateCodeRef;
         	   
         	   cate2Arr.push(cate2Obj);
         	  }
         	 }
         	 
         	 var cate2Select = $("select.category2");
         	 
         	 /*
         	 for(var i = 0; i < cate2Arr.length; i++) {
         	   cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
         	        + cate2Arr[i].cateName + "</option>");
         	 }
         	 */
         	 
         	 cate2Select.children().remove();
         
         	 $("option:selected", this).each(function(){
         	  
         	  var selectVal = $(this).val();  
         	  cate2Select.append("<option disabled value=''>2 분류</option>");
         	  cate2Select.append("<option disabled>----------</option>");
         	  
         	  for(var i = 0; i < cate2Arr.length; i++) {
         	   if(selectVal == cate2Arr[i].cateCodeRef) {
         	    cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
         	         + cate2Arr[i].cateName + "</option>");
         	   }
         	  }
         	  
         	 });
         	 
         	});
         
         
         
         
         $(document).on("change", "select.category2", function(){
             
         	 var cate3Arr = new Array();
         	 var cate3Obj = new Object();
         	 
         	 // 3차 분류 셀렉트 박스에 삽입할 데이터 준비
         	 for(var i = 0; i < jsonData.length; i++) {
         	  
         	  if(jsonData[i].level == "3") {
         	   cate3Obj = new Object();  //초기화
         	   cate3Obj.cateCode = jsonData[i].cateCode;
         	   cate3Obj.cateName = jsonData[i].cateName;
         	   cate3Obj.cateCodeRef = jsonData[i].cateCodeRef;
         	   
         	   cate3Arr.push(cate3Obj);
         	  }
         	 }
         	 
         	 var cate3Select = $("select.category3");
         	 
         	 /*
         	 for(var i = 0; i < cate2Arr.length; i++) {
         	   cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
         	        + cate2Arr[i].cateName + "</option>");
         	 }
         	 */
         	 
         	 cate3Select.children().remove();
         
         	 $("option:selected", this).each(function(){
         	  
         	  var selectVal = $(this).val();  
         	  cate3Select.append("<option disabled value=''>3 분류</option>");
         	  cate3Select.append("<option disabled>----------</option>");
         	  
         	  for(var i = 0; i < cate3Arr.length; i++) {
         	   if(selectVal == cate3Arr[i].cateCodeRef) {
         	    cate3Select.append("<option value='" + cate3Arr[i].cateName + "'>"
         	         + cate3Arr[i].cateName + "</option>");
         	   }
         	  }
         	  
         	 });
         	 
         	});
     
      </script>
    
</body>
</html>