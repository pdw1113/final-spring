<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
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
   </head>
   <body>
     
      <div class="section">
         <!-- 관리자 카테고리 및 제목  -->
         <div class="mian-header">
            <div class="cate_Managerheader">알림,상담 > <U>메일 발송</U></div>
            <div class="title_Managerheader">메일 발송</div>
         </div>
         <!-- 받는사람 -->
         <div class="input_div_Mail">
            <span class="title_Mail">받는사람</span><input type="text" class="input_recipient_Mail">
            <button class="address_Mail" onclick="eMailCheck();">주소록</button>
         </div>
         <!-- 메일제목 -->
         <div class="input_div_Mail">
            <span class="title_Mail title">제목</span><input type="text" class="input_title_Mail">
         </div>
         <!-- 메일 내용 썸머노트 -->
         <div class="content_Mail">
            <textarea id="summernote_Mail"></textarea> 
          
         </div>
         <!-- 보내기 버튼 -->
         <div class="button_Mail">
            <button class="send_button_Mail">보내기</button>
         </div>
      </div>
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
                  <div class="searcheMail_div_Mail"><input type="text" class="searcheMail_text_Mail"
                     placeholder="E-Mail을 입력하세요"><span class="searcheMail_button_Mail">검색</span></div>
                  <!-- 이메일 전체검색 -->
                  <div class="all_check_div_Mail"><input type="checkbox" class="checkbox_Mail" id="allcheck_Mail"><span class="chk_text_Mail">이메일 전체선택</span></div>
                  <!-- 이메일 목록 -->
                  <div class="eMail_check_div_Mail">
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                     <div class="eMail_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="usereMail_Mail">cdm1234@gMail.com</span>)</div>
                  </div>
               </div>
               <!-- 모달 풋터 -->
               <div class="modal-footer">
                  <!-- 확인창 닫기창 -->
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
               </div>
            </div>
         </div>
      </div>
      <script>
      
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
      </script>
   </body>
</html>