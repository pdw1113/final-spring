<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
    <div class="header">
         <%@ include file="../common/header.jsp"%>
    </div>
    
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
      <!-- css파일 -->
      <link rel="stylesheet" type="text/css" href="./resources/css/noticeInsert.css">	
   </head>
   <body >
   	<c:if test="${empty thanos}">
      <form action="thanosInsert.do" id="frm" enctype="multipart/form-data" method="post">
         <input type="hidden" value="${ master.mNickname }" name="masterName"/>
        <h2 class="font_jua" id="power">메인 파워노출 등록</h2>
      <div class="container_noticeInsert">
         <div class="input_div_noticeInsert">
            <div class="input_title_noticeInsert">
               <input class="input_image_addproducthtml" type='file' accept=".gif, .jpg, .png" id='upload' name='upload' />
            </div>
            <div class="input_content_noticeInsert font_jua">
               <input type="text" maxlength="30" id="input_text" class="notice_title_text" placeholder="내용을 입력하세요." name="content">
            </div>
         </div>
         <div class="button_div_noticeInsert">
            <button class="input_button_noticeInsert" onclick="document.getElementById('frm').submit();">등록하기</button>
         </div>
      </div>
     </form>
       <button class="deny_button_noticeInsert" onclick="location.href='index.do'">취소하기</button>
     </c:if>
     
     <c:if test="${!empty thanos}">
     <form action="thanosUpdate.do" id="frm" enctype="multipart/form-data" method="post">
         <input type="hidden" value="${ master.mNickname }" name="masterName"/>
        <h2 class="font_jua" id="power">메인 파워노출 수정</h2>
      <div class="container_noticeInsert">
         <div class="input_div_noticeInsert">
            <div class="input_title_noticeInsert">
               <input class="input_image_addproducthtml" type='file' accept=".gif, .jpg, .png" id='upload' name='upload' />
            </div>
            <div class="input_content_noticeInsert font_jua">
               <input type="text" maxlength="30" id="input_text" class="notice_title_text" placeholder="내용을 입력하세요." name="content">
            </div>
         </div>
         <div class="button_div_noticeInsert">
            <button class="input_button_noticeInsert" onclick="document.getElementById('frm').submit();">수정하기</button>
         </div>
      </div>
     </form>
      <button class="input_button_noticeInsert" onclick="location.href='thanosDelete.do'">삭제하기</button>
      <button class="deny_button_noticeInsert" onclick="location.href='index.do'">취소하기</button>
     </c:if>
     
     <script>
      $(document).ready(function(){
          $('#input_text').keyup(function(){
              if ($(this).val().length > $(this).attr('maxlength')) {
                  alert('제한길이 초과');
                  $(this).val($(this).val().substr(0, $(this).attr('maxlength')));
              }
          });
      });

      </script>
   </body>
</html>