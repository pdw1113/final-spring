<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <!-- 부가적인 테마 -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
      <!-- include libraries(jQuery, bootstrap) -->
      <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
      <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
      <style>
         html,
         body {
         width: 100%;
         padding: 0;
         margin: 0;
         }
         .header {
         width: 100%;
         height: 8rem;
         background-color: aqua;
         }
         .left-bar {
         float: left;
         width: 13%;
         height: 88.9rem;
         background-color: aquamarine;
         }
         .section {
         width: 87%;
         float: left;
         height: 55.5rem;
         }
         .cate_Managerheader {
         color: rgb(141, 141, 141);
         height: 35px;
         line-height: 35px;
         border-bottom: 1px solid rgb(141, 141, 141);
         padding-left: 15px;
         }
         .title_Managerheader {
         font-size: 30px;
         font-family: jua;
         margin-top: 30px;
         padding-bottom: 10px;
         margin-bottom: 10px;
         margin-left: 20px;
         margin-right: 20px;
         border-bottom: 3px solid black;
         }
         h2 {
         text-align: center;
         font-family: jua;
         }
         ul,
         li {
         list-style: none;
         }
         /* 전체 div */
         .content_MemberManager {
         width: 100%;
         padding: 57px 0 125px 0;
         }
         .content_MemberManager .layoutSubbox_MemberManager {
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         .searchbox_MemberManager {
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         .content_MemberManager .layoutSubbox_MemberManager:after {
         content: "";
         display: block;
         clear: both;
         }
         /* 달력 date-picker */
         label {
         margin-left: 20px;
         }
         .date {
         width: 140px;
         margin: 0 1px 10px 1px;
         }
         .date>span:hover {
         cursor: pointer;
         }
         /* 비밀번호 입력 div */
         .dataInform_MemberManager .inform_MemberManager {
         width: 100%;
         overflow: hidden;
         }
         /*검색버튼*/
         .searchBtn_MemberManager {
         margin: -3px 14px 0px 0;
         padding-bottom: 8px;
         }
         .searchBtn_MemberManager .btn_search_MemberManager {
         background-color: #ddd;
         border: none;
         color: black;
         font-weight: 600;
         padding: 16px 32px;
         text-align: center;
         font-size: 16px;
         margin: 4px 2px;
         transition: 0.3s;
         }
         .searchBtn_MemberManager .btn_search_MemberManager:hover {
         background-color: #fabe00;
         font-weight: 600;
         color: white;
         }
         /* 회원 리스트 table */
         table.type07 {
         border-collapse: collapse;
         text-align: left;
         line-height: 1.5;
         margin-top: 20px;
         }
         table.type07 thead {
         border-right: 1px solid #ccc;
         border-left: 1px solid #ccc;
         background: #bcbcbc;
         }
         table.type07 thead th {
         padding: 10px;
         font-weight: bold;
         vertical-align: top;
         color: #fff;
         border: 1px solid #ccc;
         text-align: center;
         }
         table.type07 td {
         width: 350px;
         padding: 10px;
         vertical-align: top;
         border-bottom: 1px solid #ccc;
         border: 1px solid #ccc;
         text-align: center;
         }
         .id_text_MemberManager {
         font-size: 12px;
         }
         .nickname_text_MemberManager {
         color: cornflowerblue;
         font-size: 13px;
         }
         /* 반응형~ */
         @media (max-width: 1360px) {
         /* 사이드 여백 */
         .content_MemberManager .layoutSubbox_MemberManager {
         width: auto;
         margin: 0 20px;
         }
         }
         table,
         td {
         text-align: center;
         vertical-align: middle;
         }
         .title_Mail {
         font-weight: 600;
         font-size: 19px;
         }
         .input_div_Mail {
         margin-left: 40px;
         margin-top: 25px;
         margin-bottom: 20px;
         }
         .input_recipient_mail {
         border: 1px solid rgb(177, 177, 177);
         margin-left: 20px;
         width: 80%;
         height: 30px;
         }
         .input_title_mail {
         border: 1px solid rgb(177, 177, 177);
         margin-left: 58px;
         width: 80%;
         height: 30px;
         }
         .address_mail {
         border: 1px solid rgb(177, 177, 177);
         height: 30px;
         margin-left: 20px;
         width: 70px;
         background-color: white;
         font-weight: 600;
         }
         .content_Mail {
         margin: 40px;
         }
         .send_button_Mail {
         width: 180px;
         font-size: 19px;
         background-color: rgb(247, 185, 185);
         border-radius: 5px;
         text-shadow: 0px -1px 1px rgba(0, 0, 0, 3);
         border: 1px solid black;
         box-shadow: inset 0 1px 0 rgba(255, 255, 255, 3), inset 0 0 2px rgba(255, 255, 255, 3), 0 1px 2px rgba(0, 0, 0, 29);
         font-family: sans-serif;
         outline-style: none;
         cursor: pointer;
         margin-top: 10px;
         margin-bottom: 10px;
         margin-right: 40px;
         float: right;
         }
         .adress_model_Mail {
         position: fixed;
         top: 50%;
         left: 50%;
         transform: translate(-50%, -50%);
         }
         .modal-header {
         font-weight: 600;
         font-size: 20px;
         }
         .searchemail_text_Mail {
         align-content: center;
         width: 50rem;
         height: 3rem;
         }
         .searchemail_button_Mail {
         padding: 6px;
         margin-left: 5px;
         border: 1px solid gray;
         cursor: pointer;
         border-radius: 3px;
         }
         .all_check_div_Mail {
         vertical-align: middle;
         font-size: 16px;
         margin-top: 5px;
         padding-bottom: 5px;
         width: 50rem;
         border-bottom: 1px solid rgb(184, 182, 182);
         }
         .checkbox_Mail {
         zoom: 1.5;
         vertical-align: -3px;
         padding-right: 5px;
         }
         .email_check_div_Mail {
         height: 500px;
         overflow: auto;
         }
         .email_checkbox_div {
         margin-top: 5px;
         }
         .chk_text_Mail{
         margin-left: 8px;
         }
         /*인풋 창 검은줄 없애기*/
         input:focus {
         outline: none;
         }
      </style>
   </head>
   <body>
      <div class="header">
      	<%@ include file="../../common/header.jsp" %>
      </div>
      <div class="left-bar">
      	<%@ include file="../common/mLeftBar.jsp" %>
      </div>
      <div class="section">
         <!-- 관리자 카테고리 및 제목  -->
         <div class="mian-header">
            <div class="cate_Managerheader">알림,상담 > <U>메일 발송</U></div>
            <div class="title_Managerheader">메일 발송</div>
         </div>
         <!-- 받는사람 -->
         <div class="input_div_Mail">
            <span class="title_Mail">받는사람</span><input type="text" class="input_recipient_mail">
            <button class="address_mail" onclick="emailCheck();">주소록</button>
         </div>
         <!-- 메일제목 -->
         <div class="input_div_Mail">
            <span class="title_Mail title">제목</span><input type="text" class="input_title_mail">
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
                  <div class="searchemail_div_Mail"><input type="text" class="searchemail_text_Mail"
                     placeholder="E-MAIL을 입력하세요"><span class="searchemail_button_Mail">검색</span></div>
                  <!-- 이메일 전체검색 -->
                  <div class="all_check_div_Mail"><input type="checkbox" class="checkbox_Mail" id="allcheck_Mail"><span class="chk_text_Mail">이메일 전체선택</span></div>
                  <!-- 이메일 목록 -->
                  <div class="email_check_div_Mail">
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
                     <div class="email_checkbox_div"><input type="checkbox" class="checkbox_Mail"><span class="chk_text_Mail">"천동민"</span> (<span id="useremail_Mail">cdm1234@gmail.com</span>)</div>
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
      
      <%@ include file="../../common/footer.jsp" %>
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
         function emailCheck() {
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