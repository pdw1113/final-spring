<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>공지사항</title>
      <!-- Noto-Sans 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
      <!-- JUA 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
      <!-- JQUERY-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
      <!-- 썸머노트 를 위한 부트스트랩-->
      <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <!-- 썸머노트 css/js -->
      <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
      <style type="text/css">
         /* jua 폰트 */
         .font_jua {
         font-family: 'Jua', sans-serif;
         color: black;
         }
         /* hanSans 폰트 */
         .font_hanSans {
         font-family: 'Black Han Sans', sans-serif;
         }
         /* noto 폰트 */
         .font_noto {
         font-family: 'Noto Sans KR', sans-serif;
         }
         body {
         margin: 0;
         padding: 0;
         width: 100%;
         height: 100%;
         }
         a {
         text-decoration: none;
         }
         ul,
         li {
         list-style: none;
         text-align: center;
         padding: 0;
         margin: 0;
         }
         .notice_input_div{
         width: 69%;
         margin: 0 auto;
         margin-top: 10px;
         height: 65rem;
         }
         .notice_input_title{
         margin-top: 20px;
         margin-bottom: 25px;
         }
         .notice_title_text{
         height: 4rem;
         width: 100%;
         font-size: 17px;
         border: 1px solid rgb(179, 179, 179);
         padding-left: 7px;
         }
         .notice_button_div{
         width: 69%;
         margin: 0 auto;
         margin-top: 10px;
         }
         .notice_input_button{
         float: right;
         width: 100px;
         height: 45px;
         line-height: 38px;
         border-width: 1px 1px 3px 1px;
         border-style: solid;
         border-radius: 2px;
         font-size: 16px;
         font-weight: bold;
         background-color: rgb(250, 190, 0);
         }
         .notice_deny_button{
         float: right;
         width: 100px;
         height: 45px;
         line-height: 38px;
         border-width: 1px 1px 3px 1px;
         border-style: solid;
         border-radius: 2px;
         font-size: 16px;
         font-weight: bold;
         margin-right: 20px;
         background-color: rgb(189, 189, 189);
         }
      </style>
   </head>
   <body>
      <iframe class="headiframe" src="Mainhead.html" frameborder="0" scrolling="no" data-link="#header"  style="width: 100%; height: 65px;"></iframe>
      <iframe class="headiframe" src="customercenter.html" frameborder="0" scrolling="no" data-link="#header"  style="width: 100%; height: 181px;"></iframe>
      <div class="notice_container">
         <div class="notice_input_div">
            <div class="notice_input_title">
               <input type="text" class="notice_title_text" placeholder="제목을 입력하세요.">
            </div>
            <div class="notice_input_content">
               <textarea id="summernote_notice"></textarea>
            </div>
         </div>
         <div class="notice_button_div">
            <button class="notice_input_button" onclick="input()">등록하기</button>
            <button class="notice_deny_button" onclick="location.href='customer_notice_list.html'">취소하기</button>
         </div>
      </div>
      <iframe src="footer.html" frameborder="0" scrolling="no" data-link="#header"  style="width: 100%; height: 203px;"></iframe>
      <script>
         $(document).ready(function () {
         
         //썸머노트
         $('#summernote_notice').summernote({
             toolbar: [
                 // [groupName, [list of button]]
                 ['fontname', ['fontname']],
                 ['fontsize', ['fontsize']],
                 ['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
                 ['color', ['forecolor', 'color']],
                 ['table', ['table']],
                 ['para', ['ul', 'ol', 'paragraph']],
                 ['height', ['height']],
                 ['insert', ['picture', 'link', 'video']],
                 ['view', ['fullscreen', 'help']]
             ],
             height: 500,                 // 에디터 높이
             minHeight: 500,             // 최소 높이
             maxHeight: 500,             // 최대 높이
             focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
             lang: "ko-KR",					// 한글 설정
             placeholder: '내용을 입력하세요',	//placeholder 설정
             fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋음체', '바탕체'],
             fontSizes: ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36', '50', '72']
         
         });
         });
         
         function input(){
         var title = $('.notice_title_text').val();
         var content = $('#summernote_notice').val();
         
         alert("제목 : " + title + "\n" + "내용 : " + content);
         }
      </script>
   </body>
</html>