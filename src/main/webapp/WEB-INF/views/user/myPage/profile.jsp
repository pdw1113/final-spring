<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>Slide Project</title>
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
      <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
	  <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
	  <link rel="stylesheet" type="text/css" href="resources/css/profile.css">
   </head>
   <body>
      <!-- header 영역 -->
      <%@ include file="../../common/header.jsp" %>
      <!-- nav 영역 -->
      <%@ include file="../myPage/common/nav.jsp" %>
      <!-- 프로필 영역 -->
      <div class="profile_myPage_profile">
         <h3>프로필</h3>
         <div class="profileInfo_myPage_profile">
            <table class="table_myPage_profile">
               <tbody>
                  <tr>
                     <th class="profile_th_myPage_profile" scope="row"><span>이메일</span></th>
                     <td>
                        <div class="btnApp_myPage_profile">
                           <input type="text" id="user_id" name="user_id" value="cdm9900@gmail.com" readonly="true">
                        </div>
                     </td>
                  </tr>
                  <tr>
                     <th class="profile_th_myPage_profile" scope="row"><span>이름</span></th>
                     <td>
                        <div class="btnApp_myPage_profile">
                           <input type="text" id="user_nick" name="user_nick" value="천동민" readonly="true">
                        </div>
                     </td>
                  </tr>
                  <tr>
                     <th scope="row"><span>휴대폰번호</span></th>
                     <td>
                        <div class="btnApp_myPage_profile">
                           <input type="text" id="user_hp_profile" name="user_hp" value="01083754499" readonly="true">
                           <div class="pAppBtn_myPage_profile">
                              <button class="phone_modify_profile" onclick="modify_ph();">수정</button>
                           </div>
                        </div>
                     </td>
                  </tr>
               </tbody>
            </table>
         </div>
         <div class="noticeSet_myPage_profile">
            <div class="tit_myPage_profile">
               <h4>마케팅 수신동의</h4>
            </div>
            <div class="nbox_myPage_profile">
               <ul>
                  <li>
                     <div class="custom-checkbox_myPage_profile"><input type="checkbox" class="checkbox_myprofile"
                        name="user_sms" id="smsYes" value="Y"><label for="smsYes" class="">알림톡</label><span
                        class="checkmark_myPage_profile"></span></div>
                  </li>
                  <li>
                     <div class="custom-checkbox_myPage_profile"><input type="checkbox" class="checkbox_myprofile"
                        name="user_mailing" id="emailYes" value="Y"><label for="emailYes">이메일</label><span
                        class="checkmark_myPage_profile"></span>
                     </div>
                  </li>
               </ul>
            </div>
         </div>
         <div class="joinFinBtn_myPage_profile">
            <a href="#">
               <h2>저장하기</h2>
            </a>
         </div>
      </div>
      <script>
         var sw = 0;
         function modify_ph() {
         
           if (sw == 0) {
             $('#user_hp_profile').attr('readonly', false);
             $('#user_hp_profile').css('border-color', '#fabe00');
             $('#user_hp_profile').css('background','lightyellow');
             $('.phone_modify_profile').css('background-color', 'green');
             $('.phone_modify_profile').text('확인');
             sw = 1;
           } else {
             $('#user_hp_profile').attr('readonly', true);
             $('#user_hp_profile').css('border-color', '#000');
             $('#user_hp_profile').css('background','white');
             $('.phone_modify_profile').css('background-color', '#fabe00');
             $('.phone_modify_profile').text('수정');
             sw = 0;
           }
         
         }
      </script>
      <!-- footer 영역 -->
      <%@ include file="../../common/footer.jsp" %>
   </body>
</html>