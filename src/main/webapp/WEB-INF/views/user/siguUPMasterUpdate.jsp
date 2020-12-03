<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>NeeziT</title>

    <!-- JUA 폰트-->
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

    <!-- JQUERY-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <link rel="stylesheet" type="text/css" href="resources/css/signUpMaster.css">
    
</head>
<body>
   
   <%@ include file="../common/header.jsp" %>

    <form action="signUpMasterUpdate.do" method="POST" enctype="multipart/form-data" name="master">
    <input type="hidden" value="${ loginUser.email }" name="email"/>
    <%-- <input type="hidden" value="${ masterList.mCategory }" name="_mCategory"/> --%>
    <input type="hidden" value="${ masterList.mWorkDay }" name="_mWorkDay"/>
    <input type="hidden" value="${ masterList.mWorkStyle }" name="_mWorkStyle"/>
    <input type="hidden" value="${SchoolList.sUnivPicRe}" name="_sUnivPicRe"/>
    <input type="hidden" value="${SchoolList.sUnivPicRe}" name="_sUniv2PicRe"/>
    <input type="hidden" value="${QualifcationList.q1PicRe}" name="_q1PicRe"/>
    <input type="hidden" value="${QualifcationList.q1PicRe}" name="_q2PicRe"/>
    <input type="hidden" value="${QualifcationList.q1PicRe}" name="_q3PicRe"/>
    <input type="hidden" value="${QualifcationList.q1PicRe}" name="_q4PicRe"/>
    <input type="hidden" value="${QualifcationList.q1PicRe}" name="_q5PicRe"/>
        <!-- 능력자 사진 등록 -->
        <div class="text-align-center-sgm">
            <div class="font_jua title-sgm">*능력자 수정</div>
            <span>
                <div class="img-container-sgm border-radius-100">
                	<input type="hidden" value="${masterList.mProPicRe}" name="_mProPicRe"/>
                    <img src="resources/masterImg/${masterList.mProPicRe}" class="img-style-size" id="profile_img" onclick="picUpload(this);">
                    <input type="file" id="profile_file" name="_mProPicOri" accept=".gif, .jpg, .png" class="pick" value="${masterList.mProPicOri}" hidden>
                </div>
                <div class="img-container-info">
                    <br>
                    * 다른 사람의 사진을 도용하는 것은 불법입니다.
                    <br>
                    * 정면 얼굴사진을 업로드 해주시기 바랍니다.
                    <br>
                    * 최대 용량은 5MB까지 입니다.
                    <br>
                    * (*)는 필수 항목입니다.
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
                <div class="sub-title-sgm">*별명 등록</div>
                <div>
                    <input class="input_master" type="text" name="mNickname" id="nickname" placeholder="한글 2글자 이상 작성"
                    value="${masterList.mNickname}">
                    <span class="btn_sgm font_jua" id="dupl_check">중복확인</span>
					<span class="hide-span-sgm"></span>
                </div>
            </li>
            <script>        
            
            function regExp(){
                var vNick    = document.getElementById('nickname');
       
                /* 이름 검사 : 2글자 이상, 한글*/
                if(!chk(/^[가-힣]{2,}$/,vNick ,"이름은 한글로 2글자 이상을 넣으세요!")){
                    return false;
                }

             } 
            
            function chk(re,ele,msg){
                if(!re.test(ele.value)){
                   // alert 메시지
                    alert(msg);   
                    // 드래그
                    ele.select(); 
                    // 넘어가지 않게 한다.
                    return false; 
                }
                // 위의 값이 아니면 넘긴다.
                return true;
            }
            
        	 // 별명 중복체크 AJAX
            $(function(){
   	         $("#dupl_check").on("click",function(){

   	         	matchcnt = 0;
	      		// #nickname의 값
	         	nickname2 = $('#nickname').val(); 
	         	let email2 = $("input[name=email]").val();  
	         	
					for(var i in filter){
					  try{
						  	var compare = nickname2.match( filter[i]);
						  	console.log( compare.index);
						  	alert(' 금지어가 포함 되어 있습니다. - ' + filter[i]);
						  	matchcnt ++;
						  	$('.hide-span-sgm').removeClass("green");
	         				$('.hide-span-sgm').addClass("red");
	                        $('.hide-span-sgm').text('사용불가');
	                     	$('.hide-span-sgm').show();
						  	
					  		if( matchcnt > 0 ) return false;
					  	} catch( err ) {
					  		console.log("통과");
					  	}
					  };      

   	         	$.ajax({
   	         		url:"nickCheckUp.do",
   	         		data:{nickname2:nickname2,
   	         			  email2:email2},
   	         		type:"post",
   	         		success:function(data){
   	         			// 중복되지 않았을 때
   	         			if(data == "ok" && regExp() != false){
   	         				$('.hide-span-sgm').removeClass("red");
   	         				$('.hide-span-sgm').addClass("green");
   	                        $('.hide-span-sgm').text('사용가능');
   	                     	$('.hide-span-sgm').show();
   	         			// 중복됐을 때
   	         			}else{
   	         				$('.hide-span-sgm').removeClass("green");
   	         				$('.hide-span-sgm').addClass("red");
   	                        $('.hide-span-sgm').text('사용불가');
   	                     	$('.hide-span-sgm').show();
   	         			}
   	         		},
   	         		error:function(jqxhr, textStatus, errorThrown){
   	         			console.log("ajax 처리 실패");
   	         		}
   	         	});
   	         });
            });
            </script>
            


            <hr>
            <!-- 카테고리 등록 -->
            <li>
                <div class="sub-title-sgm">*카테고리 등록</div>
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
                            <option disabled class="text-align-center-sgm" id="text-align">2 분류</option>
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
                            <option disabled class="text-align-center-sgm" id="text-align">3 분류</option>
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
                        <div class="l-btn-div">
                            <span class="l-btn-container">
                                <img src="resources/img/left_button_sgm.png" class="lr-btn-img-size" id="minus-category">
                            </span> 
                            <span class="r-btn-container">
                                <img src="resources/img/right_button_sgm.png" class="lr-btn-img-size" id="plus-category">
                            </span>
                            <span class="d-btn-container">
                                <img src="resources/img/rollback.png" class="lr-btn-img-size" id="delete-all">
                              </span>
                          </div>
                        <select size="8" class="font_jua select-sgm" id="my-cate" name="s3">
                            <option disabled class="text-align-center-sgm">나의 카테고리</option>
                            <option disabled>-------------------------------------------</option>
                        </select>
                        <input type="hidden" id="array2" name="mCategory"/>
                    </div>
                </div>
            </li>
           <script>
         // 컨트롤러에서 데이터 받기
         var jsonData = JSON.parse('${category}');
         console.log(jsonData);
         
         var cate1Arr = new Array();
         var cate1Obj = new Object();
         var testArray = new Object();
         
         var check1;
         var check2;
         var check3;
        var masterId = [];

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
             
             cate2Select.children().remove();
         
             $("option:selected", this).each(function(){
              
              var selectVal = $(this).val();  
                   /* check1 = $(this).text();  */ 
                   check1 = $(this).val(); 
                   
              cate2Select.append("<option disabled value='' id='text-align'>2 분류</option>");
              cate2Select.append("<option disabled>-----------------------</option>");
              
              console.log(check1);
              
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

             cate3Select.children().remove();
         
             $("option:selected", this).each(function(){
                
               /* check2 = $(this).text(); */
               check2 = $(this).val(); 
               console.log(check2);
              
              var selectVal = $(this).val();  
              cate3Select.append("<option disabled value='' id='text-align'>3 분류</option>");
              cate3Select.append("<option disabled>-----------------------</option>");
              
              for(var i = 0; i < cate3Arr.length; i++) {
               if(selectVal == cate3Arr[i].cateCodeRef) {
                cate3Select.append("<option value='" + cate3Arr[i].cateCode + "'>"
                     + cate3Arr[i].cateName + "</option>");
               }
              }
              
             });
             
            });
     
                // 나의 카테고리로 추가시키는 함수
                const addCategory = function(){
                    let temp    = [];
                    let obj     = $('#my-cate option');
                    let x       = 0;


                    // select박스의 선택된 값 가져오기.   
                  check3 = $('#3rd-cate option:selected').val();
                  let choice = $('#3rd-cate option:selected').text();

                   /*  masterId = check1+ "," + check2 + "," + check3; */

                    // 현재 option의 값을 임시 배열에 저장
                    $(obj).each(function(i){
                        temp[i] = $(this).val();
                        
                    });


                    // 선택한 옵션값이 임시 배열 속 문자열과 같은 경우 임시 변수값 증가
                    $(temp).each(function(i){

                        if(choice == temp[i]){
                            x++;
                        }
                    });

                    // 중복 값이 없을 경우 select박스에 option값 추가하기.
                    if(x == 0 && choice != undefined){
                        $("#my-cate").append("<option>" + choice + "</option>");
                        masterId.push(check3);
                        
                        console.log(masterId);
                    }
                }

                // [>] 버튼 클릭 시 추가
                $('#plus-category').click(function(){
                    addCategory();
                    $("#array2").val(masterId);
                });

                // [<] 버튼 클릭 시 삭제
                $('#minus-category').click(function(){

                      var index = $("#my-cate option").index($("#my-cate option:selected")) - 2;
            
                     if(index>-1){
                          masterId.splice(index,1);
                          console.log(masterId);
                          
                           $('#my-cate option:selected').remove();
                           $("#array2").val(masterId);
                     };

                });

                // 더블클릭 시 추가
                $('#3rd-cate').dblclick(function(){
                    addCategory();
                    $("#array2").val(masterId);
                });

                // 더블클릭 시 삭제 - 동적 요소에 이벤트를 바인딩 해야 할 때 사용해야 한다.
                $(document).on("dblclick","#my-cate option",function(){
                   
                   var index = $("#my-cate option").index($("#my-cate option:selected")) - 2; 
                   masterId.splice(index,1);
                   console.log(masterId);

                   $('#my-cate option:selected').remove();
                   $("#array2").val(masterId);
                    
                }); 

                // 전체 삭제
                $('#delete-all').click(function(){
                    let yes = confirm("정말 초기화 하시겠습니까?");
                    if(yes){
                        $('#my-cate option:gt(1)').remove();
                        masterId = [];
                        $("#array2").val(masterId);
                    }
                });  
                

                (function(){    				 
                   // Controller에서 받아온 능력자 카테고리
                    let category = '${categoryList}';
                    
                    // 문자열을 ,구분자로 잘라내어 배열에 담는다.
                    let arr = category.split(",");
                     
                    // for문으로 select option에 추가한다.
                    for(a in arr){
                       $("#my-cate").append("<option class='test' name='_mCategory'>" + arr[a] + "</option>");
                    }
                })();
                
            </script>
            <hr>
			<input id="fake" type="hidden" value="${ masterList.mCategory}" name="_mCategory2"/> 
            <!-- 능력 인증 -->
            <li>
                <div class="sub-title-sgm">능력 인증</div>
                <div class="text-align-center-sgm minus-margin-sgm">
                    <div class="font_jua">*신분증</div>
                    <div class="img-container-sgm-2">
                  		<input type="hidden" value="${masterList.mIdPicRe}" name="_mIdPicRe"/>
                        <img src="resources/masterImg/${masterList.mIdPicRe}"  class="img-style-size2" id="idCard_img" onclick="picUpload(this);">
                        <input type="file" id="idCard_file" name="_mIdPicOri" accept=".gif, .jpg, .png" class="pick">
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
                        <input class="input_master width_500" type="text" id="fword1" placeholder="고등학교" name="sHigh"
                        value="${SchoolList.sHigh}">
                        <span class="upCheck">OK</span>
                    </div>
                    <div>
                        <input class="input_master width_242" type="text" id="fword2" placeholder="대학교" name="sUniv"
                         value="${SchoolList.sUniv}">
                        <input class="input_master width_242" type="text" id="fword3" placeholder="학과(대학교 입력필수)" name="sUnivDept"
                         value="${SchoolList.sUnivDept}">
                        <span class="btn_sgm font_jua" id="btn-sUniv" onclick="picUpload(this);">업로드</span>          
                        <input type="file" name="_sUnivPicOri" accept=".gif, .jpg, .png" hidden onchange="ok(this);" >
                        <span class="upCheck">OK</span>
                    </div>
                    <div>
                        <input class="input_master width_242" type="text" id="fword4" placeholder="대학원" name="sUniv2"
                        value="${SchoolList.sUniv2}">
                        <input class="input_master width_242" type="text" id="fword5" placeholder="학과(대학원 입력필수)" name="sUniv2Dept"
                        value="${SchoolList.sUniv2Dept}">
                        <span class="btn_sgm font_jua" id="btn-sUniv2" onclick="picUpload(this);">업로드</span>
                        <input type="file"  name="_sUniv2PicOri" accept=".gif, .jpg, .png" hidden onchange="ok(this);">
                        <span class="upCheck">OK</span>
                    </div>
                </div>
            </li>
			<script>
				$(function(){
					// 처음 대학교 벨류 없을시 학과 텍스트 disabled
					let sUnivLength = $('input[name=sUniv]').val().length; 
					if(sUnivLength == 0){
						$('input[name=sUnivDept]').attr('disabled',true);
					}else{
						$('input[name=sUnivDept]').attr('disabled',false);
					}
					
					// 키입력시 학과 text disabled풀림
					$('input[name=sUniv]').on('keyup',function(){
						let inputLength = $(this).val().length; // sUniv의 벨류 길이값
						if(inputLength == 0){
							$('input[name=sUnivDept]').attr('disabled',true);
						}else{
							$('input[name=sUnivDept]').attr('disabled',false);
						}
					});
					
					// 처음 대학원 벨류 없을시 학과 텍스트 disabled
					let sUnivLength2 = $('input[name=sUniv2]').val().length; 
					if(sUnivLength2 == 0){
						$('input[name=sUniv2Dept]').attr('disabled',true);
					}else{
						$('input[name=sUniv2Dept]').attr('disabled',false);
					}
					
					// 키입력시 학과 text disabled풀림
					$('input[name=sUniv2]').on('keyup',function(){
						let inputLength = $(this).val().length; // sUniv2의 벨류 길이값
						if(inputLength == 0){
							$('input[name=sUniv2Dept]').attr('disabled',true);
						}else{
							$('input[name=sUniv2Dept]').attr('disabled',false);
						}
					});
					
					// 넘어온 벨류값 있으면 버튼 보이게
					let val1 = '${SchoolList.sUniv}';
					let val2 = '${SchoolList.sUnivDept}';
					if(val1 != "" && val2 != ""){
						$('#btn-sUniv').css('visibility','visible');
					}
					
					// 키입력 안할시 업로드버튼 안보이게
					$(this).on('keyup',function(){
						let inputLength = $('input[name=sUniv]').val().length; // sUniv의 벨류 길이값
						let inputLength2 = $('input[name=sUnivDept]').val().length; // sUnivDept의 벨류 길이값
 						if(inputLength2 > 0 && inputLength > 0){
							$('#btn-sUniv').css('visibility','visible');  // 길이가 0보다 클시 보이게
						}else{
							$('#btn-sUniv').css('visibility','hidden');   // 길이가 0보다 작을시 안보이게
						} 
					});
					
					let val3 = '${SchoolList.sUniv2}';
					let val4 = '${SchoolList.sUniv2Dept}';
					if(val3 != "" && val4 != ""){
						$('#btn-sUniv2').css('visibility','visible');
					}
					$(this).on('keyup',function(){
						let inputLength = $('input[name=sUniv2]').val().length; // sUniv의 벨류 길이값
						let inputLength2 = $('input[name=sUniv2Dept]').val().length; // sUnivDept의 벨류 길이값
 						if(inputLength2 > 0 && inputLength > 0){
							$('#btn-sUniv2').css('visibility','visible');  // 길이가 0보다 클시 보이게
						}else{
							$('#btn-sUniv2').css('visibility','hidden');   // 길이가 0보다 작을시 안보이게
						} 
					});
				});


			</script>
            <!-- 자격증 -->
            <li>
                <div class="certify-ability " title="자격증(최대5개)">
                    <div>
                        <input class="input_master" type="text" id="fword6" placeholder="자격증" name="q1"
                         value="${QualifcationList.q1}">
                        <span class="btn_sgm font_jua" id="btn-sUniv3" onclick="picUpload(this);">업로드</span>
                        <input type="file" hidden accept=".gif, .jpg, .png" onchange="ok(this);" name="_q1PicOri">
                        <span class="upCheck">OK</span>
                    </div>
                    <div>
                        <input class="input_master" type="text" id="fword7" placeholder="자격증" name="q2"
                        value="${QualifcationList.q2}">
                        <span class="btn_sgm font_jua" id="btn-sUniv4" onclick="picUpload(this);">업로드</span>
                        <input type="file" hidden accept=".gif, .jpg, .png" onchange="ok(this);" name="_q2PicOri">
                        <span class="upCheck">OK</span>
                    </div>
                    <div>
                        <input class="input_master" type="text" id="fword8" placeholder="자격증" name="q3"
                        value="${QualifcationList.q3}">
                        <span class="btn_sgm font_jua" id="btn-sUniv5" onclick="picUpload(this);">업로드</span>
                        <input type="file" hidden accept=".gif, .jpg, .png" onchange="ok(this);" name="_q3PicOri">
                        <span class="upCheck">OK</span>
                    </div>
                    <div>
                        <input class="input_master" type="text" id="fword9" placeholder="자격증" name="q4"
                        value="${QualifcationList.q4}">
                        <span class="btn_sgm font_jua" id="btn-sUniv6" onclick="picUpload(this);">업로드</span>
                        <input type="file" hidden accept=".gif, .jpg, .png" onchange="ok(this);" name="_q4PicOri">
                        <span class="upCheck">OK</span>
                    </div>
                    <div>
                        <input class="input_master" type="text" id="fword10" placeholder="자격증" name="q5"
                        value="${QualifcationList.q5}">
                        <span class="btn_sgm font_jua" id="btn-sUniv7" onclick="picUpload(this);">업로드</span>
                        <input type="file" hidden accept=".gif, .jpg, .png" onchange="ok(this);" name="_q5PicOri">
                        <span class="upCheck">OK</span>
                    </div>

                </div>
            </li>
			<script>
				$(function(){

					// 넘어온 벨류값 있으면 버튼 보이게
					let val1 = '${QualifcationList.q1}';
					if(val1 != "" ){
						$('#btn-sUniv3').css('visibility','visible');
					}
					// 키입력 안할시 업로드버튼 안보이게
					$(this).on('keyup',function(){
						let inputLength = $('input[name=q1]').val().length; 
 						if(inputLength > 0){
							$('#btn-sUniv3').css('visibility','visible'); 
						}else{
							$('#btn-sUniv3').css('visibility','hidden');   
						} 
					});
					
					// 넘어온 벨류값 있으면 버튼 보이게
					let val2 = '${QualifcationList.q2}';
					if(val2 != "" ){
						$('#btn-sUniv4').css('visibility','visible');
					}
					// 키입력 안할시 업로드버튼 안보이게
					$(this).on('keyup',function(){
						let inputLength = $('input[name=q2]').val().length; 
 						if(inputLength > 0){
							$('#btn-sUniv4').css('visibility','visible'); 
						}else{
							$('#btn-sUniv4').css('visibility','hidden');   
						} 
					});
					
					// 넘어온 벨류값 있으면 버튼 보이게
					let val3 = '${QualifcationList.q3}';
					if(val3 != "" ){
						$('#btn-sUniv5').css('visibility','visible');
					}
					// 키입력 안할시 업로드버튼 안보이게
					$(this).on('keyup',function(){
						let inputLength = $('input[name=q3]').val().length; 
 						if(inputLength > 0){
							$('#btn-sUniv5').css('visibility','visible'); 
						}else{
							$('#btn-sUniv5').css('visibility','hidden');   
						} 
					});
					
					// 넘어온 벨류값 있으면 버튼 보이게
					let val4 = '${QualifcationList.q4}';
					if(val4 != "" ){
						$('#btn-sUniv6').css('visibility','visible');
					}
					// 키입력 안할시 업로드버튼 안보이게
					$(this).on('keyup',function(){
						let inputLength = $('input[name=q4]').val().length; 
 						if(inputLength > 0){
							$('#btn-sUniv6').css('visibility','visible'); 
						}else{
							$('#btn-sUniv6').css('visibility','hidden');   
						} 
					});
					
					// 넘어온 벨류값 있으면 버튼 보이게
					let val5 = '${QualifcationList.q5}';
					if(val5 != "" ){
						$('#btn-sUniv7').css('visibility','visible');
					}
					// 키입력 안할시 업로드버튼 안보이게
					$(this).on('keyup',function(){
						let inputLength = $('input[name=q5]').val().length; 
 						if(inputLength > 0){
							$('#btn-sUniv7').css('visibility','visible'); 
						}else{
							$('#btn-sUniv7').css('visibility','hidden');   
						} 
					});					
				});
			</script>
         	<script>
                let ok = function(obj){
                    $(obj).next().css("display","inline");
                };
            </script> 
            
            <hr>

            <!-- 소셜 미디어 -->
            <li>
                <div class="social-media" title="소셜미디어">
                    <div class="instagram">
                        <input class="input_master_2" type="text" id="fword11" placeholder="인스타그램" name="snsInsta"
                        value="${SnsList.snsInsta }">
                    </div>
                    <div class="twitter">
                        <input class="input_master_2" type="text" id="fword12" placeholder="트위터" name="snsTwit"
                        value="${SnsList.snsTwit}">
                    </div>
                    <div class="blog">
                        <input class="input_master_2" type="text" id="fword13" placeholder="블로그" name="snsBlog"
                        value="${SnsList.snsBlog}">
                    </div>
                    <div class="git">
                        <input class="input_master_2" type="text" id="fword14" placeholder="GIT" name="snsGit"
                         value="${SnsList.snsGit}">
                    </div>
                </div>
                <div class="video-link" title="영상링크">
                    <div>
                        <input class="input_master_2" type="text" id="fword15" onfocusout="youtube(this);"
                        name="snsYou1" value="${SnsList.snsYou1}">
                        <div>
                        </div>
                    </div>
                    <div>
                        <input class="input_master_2" type="text" id="fword16" onfocusout="youtube(this);"
                        name="snsYou2" value="${SnsList.snsYou2}">
                        <div>
                        </div>
                    </div>
                    <div>
                        <input class="input_master_2" type="text" id="fword17" onfocusout="youtube(this);"
                        name="snsYou3" value="${SnsList.snsYou3}">
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
                <div class="sub-title-sgm">*선호하는 업무 시간 / 방식</div>
                <div class="margin-first-sgm">
                    <div class="radio-wrap">
                        <input type="checkbox" id="monday" value="월" class="checkSelect" name="work-day"/>
                        <label class="font_jua day11" for="monday">월</label>
                    </div>
                    <div class="radio-wrap">
                        <input type="checkbox" id="tuesday" value="화" class="checkSelect" name="work-day"/>
                        <label class="font_jua day11" for="tuesday">화</label>
                    </div>
                    <div class="radio-wrap">
                        <input type="checkbox" id="wednesday" value="수" class="checkSelect" name="work-day"/>
                        <label class="font_jua day11" for="wednesday">수</label>
                    </div>
                    <div class="radio-wrap">
                        <input type="checkbox" id="thursday" value="목" class="checkSelect" name="work-day"/>
                        <label class="font_jua day11" for="thursday">목</label>
                    </div>
                    <div class="radio-wrap">
                        <input type="checkbox" id="friday" value="금" class="checkSelect" name="work-day"/>
                        <label class="font_jua day11" for="friday">금</label>
                    </div>
                    <div class="radio-wrap">
                        <input type="checkbox" id="saturday" value="토" class="checkSelect" name="work-day"/>
                        <label class="font_jua day11" for="saturday">토</label>
                    </div>
                    <div class="radio-wrap">
                        <input type="checkbox" id="sunday" value="일" class="checkSelect" name="work-day"/>
                        <label class="font_jua day11" for="sunday">일</label>
                    </div>
                    <span class="dupl_choose">*(중복선택가능)</span>
                    <br>
                    <div class="radio-wrap">
                        <input type="checkbox" id="home" name="work-style" value="자택" class="checkSelect1 "/>
                        <label class="font_jua home_choose" for="home">자택</label>
                    </div>
                    <div class="radio-wrap">
                        <input type="checkbox" id="work" name="work-style" value="출근" class="checkSelect1"/>
                        <label class="font_jua home_choose" for="work">출근</label>
                    </div>
                    <span class="dupl_choose">*(중복선택가능)</span>
                </div>
                <div>
                    <input class="input_master_3" type="time" name="mStartTime" id="" value="${masterList.mStartTime }">
                    &nbsp;~&nbsp;
                    <input class="input_master_3" type="time" name="mEndTime" id="" value="${masterList.mEndTime }">
                </div>
            </li>

            <hr>

            <!-- 저장 / 취소 버튼 -->
            <li class="margin-top-sgm">
                <span class="btn_sgm"  onclick="validate();">저장</span>
                <span class="btn_sgm_2" id="cancel">취소</span>
            </li>
        </ul>
    </div>
    <input type="hidden" id="array" name="mWorkDay"/>
    <input type="hidden" id="array1" name="mWorkStyle"/>
    </form>
    
    
    <%@ include file="../common/footer.jsp" %>
     
      <script>
    /*day check*/
    (function(){
        let workday= '${ masterList.mWorkDay }';
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
        let workstyle= '${ masterList.mWorkStyle }';
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
      
   
    
    function act(){

      	  if($('.hide-span-sgm').text() == '사용가능'){
      		return true;
      	  }else{
      		alert('중복되거나 형식에맞지않는 아이디입니다!(중복확인 필수)');
      		document.master.mNickname.focus();
      		  return false;
      	  };
	
    }
    
    function validate(){ 
    	
    	matchcnt = 0;
    	fContent = "";
       	for(var i=0; i<17; i++){
        		fContent += $('#fword'+(i+1)).val() +','; 
        } 
       	fContent += $('#nickname').val(); 
        console.log(fContent);
       	
  		for(var i in filter){

  		try{
  		  	var compare = fContent.match( filter[i]);
  		  	console.log( compare.index);
  		  	alert(' 금지어가 포함 되어 있습니다. - ' + filter[i]);
  		  	matchcnt ++;
  		  	
  		  	if( matchcnt > 0 ) return false;
  		  } catch( err ) {
  		  	console.log("통과");
  		  }
  		 };   
    	
    	
   
        if(!document.master.mNickname.value){
            alert("별명을 입력해주세요"); 
            document.master.mNickname.focus();
              return false;
      	}
        
         
          if($('#my-cate').children().length < 3){
                alert("카테고리 등록을 해주세요"); 
                  return false;
         }  
         
         if($('input[name=sUniv]').val().length == 0 && $('input[name=sUnivDept]').val().length > 0){
             alert("대학교를 입력해주세요"); 
             document.master.sUniv.focus();
             return false;
         }
         
         if($('input[name=sUniv]').val().length > 0 && $('input[name=sUnivDept]').val().length == 0){
             alert("대학교 학과 입력해주세요"); 
             document.master.sUniv.focus();
             return false;
         }
         
         if($('input[name=sUniv]').val().length > 0 && $('input[name=sUnivDept]').val().length > 0 && $('input[name=_sUnivPicOri]').val() == false){
             alert("대학교 사진 등록해주세요"); 
             document.master.sUniv.focus();
             return false;
         }
         
         if($('input[name=sUniv2]').val().length == 0 && $('input[name=sUniv2Dept]').val().length > 0){
             alert("대학원를 입력해주세요"); 
             document.master.sUniv2.focus();
             return false;
         }
         
         if($('input[name=sUniv2]').val().length > 0 && $('input[name=sUniv2Dept]').val().length == 0){
             alert("대학원 학과 입력해주세요"); 
             document.master.sUniv2.focus();
             return false;
         }
         
         if($('input[name=sUniv2]').val().length > 0 && $('input[name=sUniv2Dept]').val().length > 0 && $('input[name=_sUniv2PicOri]').val() == false){
             alert("대학원 사진 등록해주세요"); 
             document.master.sUniv2.focus();
             return false;
         }
         
         if($('input[name=q1]').val().length > 0 && $('input[name=_q1PicOri]').val() == false){
             alert("자격증 사진 등록해주세요"); 
             document.master.q1.focus();
             return false;
         }
         
         if($('input[name=q2]').val().length > 0 && $('input[name=_q2PicOri]').val() == false){
             alert("자격증 사진 등록해주세요"); 
             document.master.q2.focus();
             return false;
         }
         
         if($('input[name=q3]').val().length > 0 && $('input[name=_q3PicOri]').val() == false){
             alert("자격증 사진 등록해주세요"); 
             document.master.q3.focus();
             return false;
         }
         
         if($('input[name=q4]').val().length > 0 && $('input[name=_q4PicOri]').val() == false){
             alert("자격증 사진 등록해주세요"); 
             document.master.q4.focus();
             return false;
         }
         
         if($('input[name=q5]').val().length > 0 && $('input[name=_q5PicOri]').val() == false){
             alert("자격증 사진 등록해주세요"); 
             document.master.q5.focus();
             return false;
         }
         
         if($('.checkSelect').is(":checked") == false){
             alert("선호하는 업무 요일을 선택해주세요"); 
               return false;
     	 }
         
         if($('.checkSelect1').is(":checked") == false){
             alert("선호하는 업무 방식을 선택해주세요"); 
               return false;
      	 } 
         
         if(act() == true){
        	 alert('수정완료!');
         	document.forms[0].submit();
         }
      }

     

     </script> 
  
      <script>
      $(function(){
          $('#cancel').on('click', function(){
           if(confirm("정말로 취소하시겠습니까?") == false) {
                   return false;
               }else{
                  location.href='index.do';
               }
          });
      });
 
      
      
    // 선호하는 요일
    $(document).on("change", ".checkSelect", function(){
       
      var send_array = Array();
      var send_cnt = 0;
      var chkbox = $(".checkSelect");
      
      for(i=0;i<chkbox.length;i++) {
          if (chkbox[i].checked == true){
              send_array[send_cnt] = chkbox[i].value;
              send_cnt++;
          }
      }

      console.log(send_array);
      
      $("#array").val(send_array);
    });   
    
    // 선호하는 방식
    $(document).on("change", ".checkSelect1", function(){
      var send_array1 = Array();
      var send_cnt1 = 0;
      var chkbox1 = $(".checkSelect1");
      
      for(i=0;i<chkbox1.length;i++) {
          if (chkbox1[i].checked == true){
              send_array1[send_cnt1] = chkbox1[i].value;
              send_cnt1++;
          }
      }
      
      console.log(send_array1);
      
      $("#array1").val(send_array1);
    });   
    
    
    
    
      
   </script>    
   
   <script>
   $(function(){

 
      let fake = $('#fake').val(); // 변수 밸류를 받아왔다
      console.log(fake);
   

      
   	  let fakeArr = [];
   	  fakeArr = fake.split(","); // fake변수를 쪼개서 배열을 만들었다
   
      masterId = masterId.concat(fakeArr); // 진짜와 배열을 합쳤다
 
      $("#array2").val(masterId.sort()); // sort 오름차순정렬
   

   
   });
   </script>
   <script>
	// 금지어 기본 세팅
	   var fjsonData = JSON.parse('${fList}');

	   var fListArr = new Array();
	   var fListObj = new Object();
	   var filter = [];
	   var fContent;
	   let nickname2; 
	   
       for(var i = 0; i < fjsonData.length; i++) {

       fListObj = new Object();  //초기화
       fListObj = fjsonData[i].fword;
       /* fListArr.push(fListObj); */
       filter.push(fListObj);
       }
   		console.log(filter);

	   var matchcnt = 0;

   </script>
    
</body>
</html>