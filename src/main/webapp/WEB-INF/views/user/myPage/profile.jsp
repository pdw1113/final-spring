<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
   <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
   <style>
      html,
      body {
      width: 100%;
      padding: 0;
      margin: 0;
      }

      /*프로필 영역*/
      .profile_myPage_profile {
      position: relative;
      width: 696px;
      margin: 0 auto;
      }
      .profile_myPage_profile h3 {
      font-size: 40px;
      color: #272d32;
      font-weight: 600;
      line-height: 1.2;
      text-align: center;
      padding: 76px 0 36px 0;
      border-bottom: 3px #000 solid;
      }
      .profile_myPage_profile .profileInfo_myPage_profile {
      position: relative;
      width: 100%;
      overflow: hidden;
      }
      .profile_myPage_profile .profileInfo_myPage_profile .picUpload_myPage_profile .upload_myPage_profile input {
      position: absolute;
      left: 0;
      top: 0;
      width: 39px;
      height: 39px;
      z-index: 2;
      }
      .profile_myPage_profile .profileInfo_myPage_profile .table_myPage_profile {
      text-align: center;
      }
      .table_myPage_profile {
      width: 100%;
      border-collapse: collapse;
      border-spacing: 0;
      table-layout: fixed;
      word-break: break-all;
      }
      .profile_myPage_profile .profileInfo_myPage_profile .table_myPage_profile .th_myPage_profile {
      padding: 22px 0;
      vertical-align: top;
      }
      .profile_myPage_profile .profileInfo_myPage_profile .table_myPage_profile .th_myPage_profile span {
      font-size: 16px;
      color: #272d32;
      font-weight: 500;
      line-height: 1.2;
      letter-spacing: -1px;
      }
      .profile_myPage_profile .profileInfo_myPage_profile .table_myPage_profile td {
      position: relative;
      font-size: 13px;
      color: #9d9d9d;
      font-weight: 300;
      line-height: 1.4;
      padding: 12px 25px 12px 0;
      letter-spacing: -1px;
      border-bottom: 1px #e5e5e5 solid;
      }
      .profile_myPage_profile .profileInfo_myPage_profile .table_myPage_profile td input {
      height: 38px;
      line-height: 38px;
      font-size: 13px;
      color: #6c6d70;
      font-weight: 300;
      border-radius: 5px;
      outline: none;
      }
      .profile_th_myPage_profile {
      border-bottom: 1px #e5e5e5 solid;
      }
      .profile_myPage_profile .profileInfo_myPage_profile .table_myPage_profile .btnApp_myPage_profile {
      position: relative;
      padding: 0 112px 0 0;
      }
      .profile_myPage_profile .profileInfo_myPage_profile .table_myPage_profile .btnApp_myPage_profile .pAppBtn_myPage_profile {
      position: absolute;
      right: 40px;
      top: 9px;
      width: 100px;
      }
      .profile_myPage_profile .profileInfo_myPage_profile .table_myPage_profile .btnApp_myPage_profile:after {
      content: "";
      display: block;
      clear: both;
      }
      .profile_myPage_profile .profileInfo_myPage_profile .table_myPage_profile .addTxt_myPage_profile {
      font-size: 13px;
      color: #9d9d9d;
      font-weight: 300;
      line-height: 1.4;
      padding: 10px 0 0 0;
      letter-spacing: -1px;
      }
      .profile_myPage_profile .profileInfo_myPage_profile .table_myPage_profile tr:last-child td {
      border: 0;
      }
      .profile_myPage_profile .profileInfo_myPage_profile .table_myPage_profile .btnApp_myPage_profile {
      position: relative;
      padding: 0 112px 0 0;
      }

      .phone_modify_profile {
      background-color: #fabe00;
      color: white;
      padding: 5px;
      visibility: none;
      border: none;
      cursor: pointer;
      border-radius: 10px;
      outline: none;
      }
   
      /* 마케팅 수신 동의 영역*/
      .profile_myPage_profile .noticeSet_myPage_profile {
      width: 100%;
      margin-top: 35px;
      border-top: 3px #000 solid;
      overflow: hidden;
      }
      .profile_myPage_profile .noticeSet_myPage_profile .tit_myPage_profile {
      font-size: 18px;
      color: #272d32;
      font-weight: 500;
      line-height: 1.2;
      letter-spacing: -1px;
      padding: 30px 0 0 0;
      font-family: jua;
      }
      .profile_myPage_profile .noticeSet_myPage_profile .nbox_myPage_profile {
      border: 1px #d4d4d4 solid;
      text-align: center;
      padding: 15px 0;
      border-radius: 10px;
      }
      .profile_myPage_profile .noticeSet_myPage_profile .nbox_myPage_profile ul li {
      display: inline-block;
      padding: 0 20px;
      }
      .custom-checkbox_myPage_profile {
      position: relative;
      z-index: 1;
      }
      .profile_myPage_profile .noticeSet_myPage_profile .nbox_myPage_profile ul li .custom-checkbox_myPage_profile label {
      font-size: 14px;
      color: #6c6d70;
      letter-spacing: -1px;
      vertical-align: middle;
      }
      /* 저장하기 버튼 */
      .joinFinBtn_myPage_profile {
      display: table;
      width: 696px;
      height: 50px;
      background-color: #fabe00;
      border-radius: 10px;
      margin: 40px 0 0 0;
      overflow: hidden;
      text-align: center;
      font-family: jua;
      }
      .joinFinBtn_myPage_profile a {
      text-decoration: none;
      color: white;
      vertical-align: middle;
      }
      /* checkbox custom */
      input[type=checkbox]+label {
      margin: 0.2em;
      cursor: pointer;
      padding: 0.2em;
      }
      input[type=checkbox] {
      display: none;
      margin: 0.2em;
      }
      input[type=checkbox]+label:before {
      content: "\2714";
      border: 0.1em solid#000000;
      border-radius: 0.2em;
      display: inline-block;
      width: 1em;
      height: 1em;
      padding-left: 0.2em;
      padding-bottom: 0.3em;
      margin-right: 0.2em;
      vertical-align: bottom;
      color: transparent;
      transition: .2s;
      }
      input[type=checkbox]+label:active:before {
      transform: scale(0);
      }
      input[type=checkbox]:checked+label:before {
      background-color: #fabe00;
      border-color: #fabe00;
      color: #fff;
      }
   </style>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>Slide Project</title>
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
      <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
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
                           <input type="text" id="user_hp" name="user_hp" value="01083754499" readonly="true">
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
                     <div class="custom-checkbox_myPage_profile"><input type="checkbox" class="user_update_myPage_profile"
                        name="user_sms" id="smsYes" value="Y"><label for="smsYes" class="">알림톡</label><span
                        class="checkmark_myPage_profile"></span></div>
                  </li>
                  <li>
                     <div class="custom-checkbox_myPage_profile"><input type="checkbox" class="user_update_myPage_profile"
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
             $('#user_hp').attr('readonly', false);
             $('#user_hp').css('border-color', '#fabe00');
             $('#user_hp').css('background','lightyellow');
             $('.phone_modify_profile').css('background-color', 'green');
             $('.phone_modify_profile').text('확인');
             sw = 1;
           } else {
             $('#user_hp').attr('readonly', true);
             $('#user_hp').css('border-color', '#000');
             $('#user_hp').css('background','white');
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