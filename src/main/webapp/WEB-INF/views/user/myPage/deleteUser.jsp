<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>회원탈퇴</title>
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
      <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
	  <link rel="stylesheet" type="text/css" href="resources/css/deleteUser.css">
   </head>
   <body>
      <!-- header 영역 -->
      <%@ include file="../../common/header.jsp" %>
      <!-- nav 영역 -->
      <%@ include file="../../user/myPage/common/nav.jsp" %>
      <form action="#" name="form1" id="form1" method="post" target="process">
         <div class="content_myleave">
            <div class="dataInform_myleave">
               <div class="tit2_myleave">비밀번호 및 탈퇴사유를 입력해 주십시오.</div>
               <div class="inform_myleave">
                  <ul>
                     <li><input type="password" class="password_myleave" name="user_pw" id="user_pw" placeholder="비밀번호를 입력해 주십시오."></li>
                  </ul>
               </div>
               <div class="tit2_myleave">탈퇴 사유</div>
               <div class="reason_myleave">
                  <ul>
                     <li>
                        <div class="custom-radio_myleave"><input type="radio" name="user_leave" id="s_reason01" class="radio_myleave"
                           value="다른 계정이름으로 사용하기 위해서"><label for="s_reason01" class="label"><span></span>다른
                           계정이름으로 사용하기 위해서</label>
                        </div>
                     </li>
                     <li>
                        <div class="custom-radio_myleave"><input type="radio" name="user_leave" id="s_reason02" class="radio_myleave"
                           value="사용빈도가 낮고, 개인정보 유출이 우려되서"><label for="s_reason02"
                           class="label"><span></span>사용빈도가 낮고, 개인정보 유출이
                           우려되서</label>
                        </div>
                     </li>
                     <li>
                        <div class="custom-radio_myleave"><input type="radio" name="user_leave" id="s_reason03" class="radio_myleave"
                           value="사이트 이용 시 장애가 많아서"><label for="s_reason03" class="label"><span></span>사이트
                           이용 시 장애가 많아서</label>
                        </div>
                     </li>
                     <li>
                        <div class="custom-radio_myleave"><input type="radio" name="user_leave" id="s_reason04" class="radio_myleave"
                           value="서비스의 질에 대한 불만이 있어서"><label for="s_reason04" class="label"><span></span>서비스의
                           질에 대한 불만이 있어서</label>
                        </div>
                     </li>
                     <li>
                        <div class="custom-radio_myleave"><input type="radio" name="user_leave" id="s_reason05" class="radio_myleave"
                           value="사이트 이용 시 고객응대가 나빠서"><label for="s_reason05" class="label"><span></span>사이트 이용
                           시 고객응대가 나빠서</label>
                        </div>
                     </li>
                     <li>
                        <div class="custom-radio_myleave"><input type="radio" name="user_leave" id="s_reason06" class="radio_myleave"
                           value="기타"><label for="s_reason06" class="label"><span></span>기타</label></div>
                     </li>
                  </ul>
                  <!-- 기타 버튼 누를 시 생성 -->
                  <ul class="directInput_myleave"><input type="text" class="text_myleave" name="user_leave_memo" id="user_leave_memo" placeholder="직접 입력"></ul>
               </div>
               <div class="pdBtn_myleave">
                  <a href="#">
                     <h2>회원 탈퇴</h2>
                  </a>
               </div>
            </div>
         </div>
      </form>
      <script>
         $("input[name='user_leave']").click(function () {
             $('.directInput_myleave').css('display', ($(this).val() == '기타') ? 'block' : 'none');
             $('.custom-radio_myleave label', this).css('color', 'black');
         });
      </script>
      <!-- footer 영역 -->
      <%@ include file="../../common/footer.jsp" %>
   </body>
</html>