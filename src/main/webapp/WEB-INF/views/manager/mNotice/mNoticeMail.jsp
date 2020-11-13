<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <div class="header">
         <%@ include file="../common/mheader.jsp" %>
    </div>
      <div class="left-bar">
         <%@ include file="../common/mLeftBar.jsp" %>
      </div>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>

    <!-- 썸머노트 script -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	<!-- css -->
	<link rel="stylesheet" type="text/css" href="resources/css/mNoticeMail.css">
	<link rel="stylesheet" type="text/css" href="resources/css/loading.css">
	 
   </head>
   <body>
      <form action="sendemail.do" method="POST">
      <div class="section">
         <!-- 관리자 카테고리 및 제목  -->
         <div class="mian-header">
            <div class="cate_Managerheader">알림,상담 > <U>메일 발송</U></div>
            <div class="title_Managerheader">메일 발송</div>
         </div>
         <!-- 받는사람 -->
         <div class="input_div_Mail">
            <span class="title_Mail">받는사람</span>
            <input type="text" class="input_recipient_Mail" name="mEmail">
            <input type="button" class="address_Mail" onclick="eMailCheck();" value="주소록">
         </div>
         <!-- 메일제목 -->
         <div class="input_div_Mail">
            <span class="title_Mail title">제목</span>
            <input type="text" class="input_title_Mail" name="mTitle">
         </div>
         <!-- 메일 내용 썸머노트 -->
         <div class="content_Mail">
            <textarea id="summernote_Mail" name="mContent"></textarea> 
         </div>
         <!-- 보내기 버튼 -->
         <div class="button_Mail">
            <button class="send_button_Mail" onclick='return send()'>보내기</button>
         </div>
      </div>
    </form>
      <!-- 이메일 검색 모달 -->
      <div class="modal fade" id="findadress_Mail">
         <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
               <!-- 모달 헤더 -->
               <div class="modal-header">
                  <b>회원 주소록</b>
               </div>
               <!-- 모달 바디 -->
               <div class="modal-body">
                  <!-- 이메일 전체검색 -->
                  <div class="all_check_div_Mail"><input type="checkbox" class="checkbox_Mail" id="allcheck_Mail"><span class="chk_text_Mail">이메일 전체선택</span></div>
                  <!-- 이메일 목록 -->
                  <div class="eMail_check_div_Mail">
                  	<c:forEach var="u" items="${user}">
                  		<div class="eMail_checkbox_div">
                  		<input type="checkbox" class="checkbox_Mail" name="get_mail" value="${u.email}">
                  		<span class="chk_text_Mail">${u.name}</span> (<span id="usereMail_Mail">${u.email}</span>)
                  		</div>
                  	</c:forEach>
                  </div>
               </div>
               <!-- 모달 풋터 -->
               <div class="modal-footer">
                  <!-- 확인창 닫기창 -->
                  <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="value_check();">확인</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
               </div>
            </div>
         </div>
      </div>
      <script>
  	 let sw = "${sw}";
      
      if(sw==1){
    	  alert("메일 보내기를 완료했습니다!");
    	  sw = null;
    	  location.href="mNoticeMail.do";
      }
      
      var email = new Array();
		
		function send(){
			if($(".input_recipient_Mail").val()==""){
				alert("보낼 이메일을 입력해주세요.");
				return false;
			}else if($(".input_title_Mail").val()==""){
				alert("제목을 입력해주세요.");
				return false;
			}else if($("#summernote_Mail").val()==""){
				alert("내용을 입력해주세요.");
				return false;
			}else{
				  let loadingDiv = "<div class='loading-container' pointer-events: none;><div class='loading'></div><div id='loading-text'>loading</div></div>";
			      $(".section").prepend(loadingDiv);
				return true;
			}

		}
		
      
      $(document).ready(function () {
          //썸머노트
          $('#summernote_Mail').summernote({
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
              height: 400,                 // 에디터 높이
              minHeight: null,             // 최소 높이
              maxHeight: null,             // 최대 높이
              focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
              lang: "ko-KR",					// 한글 설정
              placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정
              fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋음체', '바탕체'],
              fontSizes: ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36', '50', '72']

          });
      });
      
         // 모달 팝업 띄우기
         function eMailCheck() {
             $('#findadress_Mail').modal().show();
         }
         
         // 전체선택 체크 반응
         $("#allcheck_Mail").click(function () {
             if ($(this).is(":checked") == true) {
                 $(".checkbox_Mail").each(function (index) {
                     $(this).prop("checked", true);
                 });
             } else {
                 $(".checkbox_Mail").each(function (index) {
                     $(this).prop("checked", false);
                 });
             }
         });
         
         // 전체선택 하나라도 체크 풀으면
         $(".checkbox_Mail").click(function () {
             if ($(this).is(":checked") == false) {
                 $("#allcheck_Mail").prop("checked", false);
             }
         });
         
        
		function value_check(){
			var content;
			 var size = document.getElementsByName("get_mail").length;
			    for(var i = 0; i < size; i++){
			        if(document.getElementsByName("get_mail")[i].checked == true){
			            console.log(document.getElementsByName("get_mail")[i].value);
			            content += (document.getElementsByName("get_mail")[i].value+",");
			        }
			    }
			    if(content!=null){
			    	 content = content.replace("undefined","");
			    	 content = content.substr(0,content.length-1);
			          $(".input_recipient_Mail").val(content);
			    }
			    $(".input_recipient_Mail").val(content);
		}
		
      </script>
   </body>
</html>