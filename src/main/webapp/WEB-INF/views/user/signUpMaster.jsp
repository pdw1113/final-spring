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

    <style>
        /* 기본 셋팅 */
        body,html{
            margin: 0;
            padding: 0;
            width: 100%;
        }

        ul{
            padding: 0;
        }

        li{
            list-style: none;
        }

        hr{
            width: 90%;
        }

        a{
            text-decoration: none;
        }
        
        .green{
            color: springgreen;
        }
        .red{
            color: red;
        }
        /* ------------------------ */

        /* margin */
        .margin-first-sgm{
            margin-bottom: 0.3rem;
        }

        .minus-margin-sgm{
            margin-bottom: -2rem;
        }

        .margin-top-sgm{
            margin-top: 1rem;
        }
        /* ------------------------ */

        /* jua 폰트 */
        .font_jua{
          font-family: 'Jua', sans-serif;
        }

        /* 능력자 등록 정보입력 창 */
        .info-container-sgm{
            text-align: center; 
            margin: 0 auto; 
            border: 3px solid rgb(250, 190, 0); 
            border-radius: 15px; 
            width: 50rem; 
            height: fit-content;
            box-shadow: 0 0 25px 3px rgb(0,0,0,0.22);
        }

        /* input width 500px*/
        .input_master{
            border: 0.2rem solid black;
            border-radius: 7px;
            height: 1.2em;
            width: 500px;
            font-size: 20px;
            margin-bottom: 15px;
        }
        
        /* input width 570px*/
        .input_master_2{
            border: 0.2rem solid black;
            border-radius: 7px;
            height: 1.2em;
            width: 570px;
            font-size: 20px;
            margin-bottom: 15px;
        }

        /* input width 260px*/
        .input_master_3{
            border: 0.2rem solid black;
            border-radius: 7px;
            height: 1.2em;
            width: 150px;
            font-size: 20px;
            margin-bottom: 15px;
            font-family: 'Jua', sans-serif;
        }

        /* 버튼 */
        .btn_sgm{
            height: 1.2em;
            text-align: center;
            margin-left: 10px;
            font-size: 1.3rem;
            border-radius: 7px;
            border: 3px solid black;
            color: white;
            background-color: black;
            padding: 0.2em 0;
            box-shadow: 0 0 2px 2px rgb(0,0,0,0.2);
        }

        .btn_sgm_2{
            height: 1.2em;
            text-align: center;
            margin-left: 10px;
            font-size: 1.3rem;
            border-radius: 7px;
            background-color: red; 
            color: white; 
            border: 3px solid red;
            padding: 0.2em 0;
            box-shadow: 0 0 2px 2px rgb(0,0,0,0.2);
        }

        .btn_sgm:hover{
            cursor: pointer;
            opacity: 0.6;
        }

        .btn_sgm_2:hover{
            cursor: pointer;
            opacity: 0.6;
        }
        /* -------------------------- */

        /*인풋 창 검은줄 없애기*/
        input:focus { outline:none; }

        /* 능력인증 → 학력인증 before 가상요소 */
        .edu-ability:before{
            content: attr(title);
            position: relative;
            left: -270px;
            font-size: 1rem;
        }

        /* 능력인증 → 자격증 before 가상요소 */
        .certify-ability:before{
            content: attr(title);
            position: relative;
            left: -232px;
            font-size: 1rem;
        }

        /* 능력인증 → 소셜미디어 before 가상요소 */
        .social-media:before{
            content: attr(title);
            position: relative;
            left: -253px;
            font-size: 1rem;
        }

        /* 능력인증 → 영상링크 before 가상요소 */ 
        .video-link:before{
            content: attr(title);
            position: relative;
            left: -259px;
            font-size: 1rem;
        }

        /* 라디오 버튼 디자인 */
        div.radio-wrap {
            display: inline-flex;
            align-items: center;
            transform : scale(1.2);
        }

        input[type='checkbox']:hover, input[type='checkbox']+label:hover{
            cursor: pointer;
            opacity: 0.4;
        }

        /* input[type='radio'],
        input[type='radio']:checked {
            appearance: none;
            width: 1.3rem;
            height: 1.3rem;
            border-radius: 100%;
            margin-right: 0.1rem;   
        }

        input[type='radio'] {
            border: 3px solid rgb(250,190,0);
        }

        .toggle-sgm{
            background-color: rgb(250,190,0);
        }

        input[type='radio']:focus {
            outline: 0;
        }

        input[type='radio']:hover{
            cursor: pointer;
            opacity: 0.6;
        } */
        /* -------------------- */

        /* textarea 디자인 */
        .noresize-ta{
            resize: none;
            width: 36rem;
            height: 20rem;
            border: 3px solid black;
            border-radius: 7px;
        }

        /* focus 할 때 검은 테두리 없애기 */
        .noresize-ta:focus{
            outline: 0;
        }

        /* border-radius: 100% */
        .border-radius-100{
            border-radius: 100%;
        }
        
        /* img 커버 div */
        .img-container-sgm{
            overflow: hidden; 
            margin-top: 0.5rem; 
            margin-bottom: 2rem; 
            width: 12rem; 
            height: 12rem; 
            display: inline-block; 
            transition: 1s;
        }

        .img-container-sgm-2{
            overflow: hidden; 
            margin-top: 0.5rem; 
            margin-bottom: 3.5rem; 
            width: 12rem; 
            height: 10rem; 
            display: inline-block; 
            transition: 1s;
        }

        /* 능력자 사진 옆 설명 */
        .img-container-info{
            overflow: hidden; 
            display: inline-block; 
            text-align: left;
            width: 20rem; 
            height: 6rem; 
            margin-top: 0.5rem;
            margin-left: 2rem; 
            padding-left: 1rem;
            position: absolute;
            top: 4rem;
            background-color: rgb(250, 190, 0);
            border-top-left-radius: 50px;
            border-top-right-radius: 50px;
            border-bottom-right-radius: 50px;
            font-family: 'Jua', sans-serif;
            transition: 1s;
            box-shadow: 12px 4px 8px 0px rgb(0,0,0,0.6);
        }

        /* 신분증 사진 옆 설명 */
        .img-container-info-2{
            position: relative; 
            top: -200px; 
            right: -520px;
            border: 3px solid black;
            width: fit-content;
            height: fit-content;
            border-top-left-radius: 50px;
            border-top-right-radius: 50px;
            border-bottom-right-radius: 50px;
            margin-bottom: -90px;
            padding-bottom: 10px;
            padding-left: 10px;
            padding-right: 10px;
        }

        .img-container-sgm:hover{
            margin: 0.5rem;
            margin-bottom: 2rem;
            width: 15rem;
            height: 15rem;
            box-shadow: 0px 10px 3px 1px  rgb(0,0,0,0.25);
        }

        .img-container-sgm-2:hover{
            margin-top: 0.5rem;
            width: 14rem;
            height: 12rem;
            box-shadow: 0px 25px 20px 1px  rgb(0,0,0,0.25);
        }
        /* --------------------- */

        /* img 사이즈 */
        .img-style-size{
            width: 100%; 
            height: 100%;
            object-fit: cover;
        }

        .img-style-size2{
            width: 100%;
            height: 100%;
        }

        .img-style-size:hover, .img-style-size2:hover{
            cursor: pointer;
        }

        /* title 및 sub-title*/
        .title-sgm{
            margin-top: 0.5em; 
            font-size: 2em;
        }

        .sub-title-sgm{
            font-size: 1.5em; 
            margin-bottom: 0.5em;
        }
        /* ---------------- */

        /* text-algin:center */
        .text-align-center-sgm{
            text-align: center;
        }

        /* 카테고리 등록 창 */
        .select-sgm{
            border: 3px solid black; 
            border-radius: 7px; 
            font-size: 1rem; 
            margin-right: 1em;
        }

        /* 카테고리 등록 좌,우,백 버튼 */
        .lr-btn-img-size{
            width: 1.7rem; 
            height: 1.7rem;
            border-radius: 20%;
            box-shadow: 0 0 3px 2px rgb(0,0,0,0.2);
        }

        .lr-btn-img-size:hover{
            cursor: pointer;
            opacity: 0.6;
        }

        .l-btn-container{
            position: relative; 
            bottom: 5rem; 
            margin-right: 1rem;
        }

        .r-btn-container{
            position: relative; 
            bottom: 5rem; 
            margin-right: 1rem;
        }

        .d-btn-container{
            position: relative;
            bottom: 2.3rem;
            right: 4.5rem;
            margin-right: -2rem;
        }

        /* ----------------------- */

        .hide-span-sgm{
            position: absolute; 
            padding-left: 10px; 
            padding-top: 5px;
            display: none;
        }

        .instagram:before, .twitter:before, .blog:before, .git:before{
            content: '';
            position: absolute;
            margin-left: -34px;
            margin-top: 2px;
            background-size: cover;
            background-position: center;
            width:1.7rem;
            height: 1.7rem;
        }

        .instagram:before{
            background-image: url("resources/img/instagram.png");
        }
        .twitter:before{
            background-image: url("resources/img/twitter.png");
        }
        .blog:before{
            background-image: url("resources/img/blog.png");
        }
        .git:before{
            background-image: url("resources/img/git.png")
        }

        /* 유튜브 아이프레임 크기 */
        iframe{
            margin: 0 auto;
            width: 550px;
            display: block;
            height: 300px;
            margin-bottom: 10px;
        }

        /* 업로드 버튼 'OK' 표시*/
        .upCheck{
            position: absolute;
            margin-left: 10px;
            margin-top: 4px;
            color: rgb(250, 190, 0);
            display: none;
        }
    </style>
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
                        <select size="8" class="font_jua select-sgm">
                            <option disabled class="text-align-center-sgm">1 분류</option>
                            <option disabled>----------</option>
                            <option>데이터베이스</option>
                            <option>프레임워크</option>
                            <option>백엔드</option>
                            <option>프론트엔드</option>
                            <option>웹개발</option>
                            <option>게임개발</option>
                            <option>아두이노</option>
                            <option>넥사크로</option>
                            <option>기타등등</option>
                        </select>
                        <select size="8" class="font_jua select-sgm" >
                            <option disabled class="text-align-center-sgm">2 분류</option>
                            <option disabled>----------</option>
                            <option>데이터베이스</option>
                            <option>프레임워크</option>
                            <option>백엔드</option>
                            <option>프론트엔드</option>
                            <option>웹개발</option>
                            <option>게임개발</option>
                            <option>아두이노</option>
                            <option>넥사크로</option>
                            <option>기타등등</option>
                        </select>
                        <select size="8" class="font_jua select-sgm" id="3rd-cate">
                            <option disabled class="text-align-center-sgm">3 분류</option>
                            <option disabled>----------</option>
                            <option>데이터베이스</option>
                            <option>프레임워크</option>
                            <option>백엔드</option>
                            <option>프론트엔드</option>
                            <option>웹개발</option>
                            <option>게임개발</option>
                            <option>아두이노</option>
                            <option>넥사크로</option>
                            <option>기타등등</option>
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
                        <input class="input_master" type="text" placeholder="고등학교" style="width: 500px;">
                        <span class="btn_sgm font_jua" onclick="picUpload(this);">업로드</span>
                        <input type="file" hidden onchange="ok(this);">
                        <span class="upCheck">OK</span>
                    </div>
                    <div>
                        <input class="input_master" type="text" placeholder="대학교" style="width: 242px;">
                        <input class="input_master" type="text" placeholder="학과" style="width: 242px;">
                        <span class="btn_sgm font_jua" onclick="picUpload(this);">업로드</span>
                        <input type="file" hidden onchange="ok(this);">
                        <span class="upCheck">OK</span>
                    </div>
                    <div>
                        <input class="input_master" type="text" placeholder="대학원" style="width: 242px;">
                        <input class="input_master" type="text" placeholder="학과" style="width: 242px;">
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
                    <img src="resources/img/plus-icon.png" class="lr-btn-img-size" id="add-input" style="position: absolute; margin-top: -140px; margin-left: -330px;">
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
                        <label class="font_jua" for="home" style="background-color: rgb(250, 190, 0); border: 1px solid black; border-radius: 20%;">자택</label>
                    </div>
                    <div class="radio-wrap">
                        <input type="checkbox" id="work" value="출근"/>
                        <label class="font_jua" for="work" style="background-color: rgb(250, 190, 0); border: 1px solid black; border-radius: 20%;">출근</label>
                    </div>
                    <span style="position: absolute; margin-left: 10px;">*(중복선택가능)</span>
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
    
</body>
</html>