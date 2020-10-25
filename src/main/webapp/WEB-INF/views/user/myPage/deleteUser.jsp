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
      <style>
         /* 공통 CSS */
         html,
         body {
         width: 100%;
         padding: 0;
         margin: 0;
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
         .content_myleave {
         width: 100%;
         min-height: 368px;
         overflow: hidden;
         }
         .dataInform_myleave {
         width: 696px;
         margin: 0 auto;
         overflow: hidden;
         }
         .content_myleave .tit2_myleave {
         /* 비번 & 탈퇴사유 글씨 */
         font-size: 20px;
         color: #272d32;
         font-weight: 500;
         line-height: 1.4;
         padding: 20px 0 12px 0;
         letter-spacing: -0.5px;
         word-break: keep-all;
         font-family: jua;
         }
         /* 패스워드 입력 div */
         .dataInform_myleave .inform_myleave {
         width: 100%;
         overflow: hidden;
         }
         input[type='password'] {
         width: 100%;
         height: 50px;
         font-size: 15px;
         color: #9d9d9d;
         font-weight: 300;
         letter-spacing: -0.5px;
         line-height: 50px;
         padding: 0 0 0 20px;
         border: 2px #fabe00 solid;
         margin: 0;
         box-sizing: border-box;
         border-radius: 10px;
         outline: none;
         }
         .dataInform_myleave .inform_myleave ul li {
         display: block;
         margin: 0 0 18px 0;
         }
         /* 탈퇴 사유 */
         .dataInform_myleave .reason_myleave {
         width: 100%;
         overflow: hidden;
         }
         .custom-checkbox_myleave,
         .custom-radio_myleave {
         position: relative;
         z-index: 1;
         }
         .dataInform_myleave .reason_myleave ul li {
         font-size: 15px;
         color: #9d9d9d;
         font-weight: 500;
         letter-spacing: -1px;
         line-height: 21px;
         margin: 2% 0 2% 0;
         }
         /* 탈퇴 사유 [기타] 눌렀을 때 나오는 inputtext */
         .directInput_myleave {
         display: none;
         }
         /* 탈퇴 사유 radio 버튼 custom */
         input[type="radio"] {
         display: none;
         }
         input[type="radio"]+label {
         font-weight: 400;
         font-size: 14px;
         cursor: pointer;
         }
         input[type="radio"]+label span {
         display: inline-block;
         width: 18px;
         height: 18px;
         margin: -2px 10px 0 0;
         vertical-align: middle;
         cursor: pointer;
         -moz-border-radius: 50%;
         border-radius: 50%;
         border: 3px solid #ffffff;
         }
         input[type="radio"]+label span {
         background-color: #ffff;
         border: 2px solid #9d9d9d;
         }
         /* 체크 했을 때 보여지는 radio 버튼 */
         input[type="radio"]:checked+label {
         color: #333;
         font-weight: 700;
         }
         input[type="radio"]:checked+label span {
         background-color: #fabe00;
         border: 2px solid #ffffff;
         box-shadow: 2px 2px 2px rgba(0, 0, 0, .1);
         }
         input[type="radio"]+label span,
         input[type="radio"]:checked+label span {
         -webkit-transition: background-color 0.24s linear;
         -o-transition: background-color 0.24s linear;
         -moz-transition: background-color 0.24s linear;
         transition: background-color 0.24s linear;
         }
         /* 기타 text */
         .reason_myleave input[type='text'] {
         width: 100%;
         height: 50px;
         font-size: 15px;
         color: #9d9d9d;
         font-weight: 300;
         letter-spacing: -0.5px;
         line-height: 50px;
         padding: 0 0 0 20px;
         border: 2px #fabe00 solid;
         margin: 0;
         box-sizing: border-box;
         border-radius: 10px;
         outline: none;
         cursor: pointer;
         }
         /* 회원탈퇴 버튼 */
         .pdBtn_myleave {
         display: table;
         width: 696px;
         height: 50px;
         background-color: #fabe00;
         border-radius: 10px;
         margin: 60px 0 0 0;
         overflow: hidden;
         }
         .pdBtn_myleave a {
         text-decoration: none;
         color: white;
         vertical-align: middle;
         }
      </style>
   </head>
   <body>
      <iframe src="Mainhead.html" frameborder="0" style="width: 100%;margin: 0 0px -30px 0px; "></iframe>
      <iframe src="myPage_nav.html" frameborder="0"
         style="width: 100%; height: 370px; margin: -20px 0px -20px 0px;"></iframe>
      <form action="#" name="form1" id="form1" method="post" target="process">
         <div class="content_myleave">
            <div class="dataInform_myleave">
               <div class="tit2_myleave">비밀번호 및 탈퇴사유를 입력해 주십시오.</div>
               <div class="inform_myleave">
                  <ul>
                     <li><input type="password" name="user_pw" id="user_pw" placeholder="비밀번호를 입력해 주십시오."></li>
                  </ul>
               </div>
               <div class="tit2_myleave">탈퇴 사유</div>
               <div class="reason_myleave">
                  <ul>
                     <li>
                        <div class="custom-radio_myleave"><input type="radio" name="user_leave" id="s_reason01"
                           value="다른 계정이름으로 사용하기 위해서"><label for="s_reason01" class="label"><span></span>다른
                           계정이름으로 사용하기 위해서</label>
                        </div>
                     </li>
                     <li>
                        <div class="custom-radio_myleave"><input type="radio" name="user_leave" id="s_reason02"
                           value="사용빈도가 낮고, 개인정보 유출이 우려되서"><label for="s_reason02"
                           class="label"><span></span>사용빈도가 낮고, 개인정보 유출이
                           우려되서</label>
                        </div>
                     </li>
                     <li>
                        <div class="custom-radio_myleave"><input type="radio" name="user_leave" id="s_reason03"
                           value="사이트 이용 시 장애가 많아서"><label for="s_reason03" class="label"><span></span>사이트
                           이용 시 장애가 많아서</label>
                        </div>
                     </li>
                     <li>
                        <div class="custom-radio_myleave"><input type="radio" name="user_leave" id="s_reason04"
                           value="서비스의 질에 대한 불만이 있어서"><label for="s_reason04" class="label"><span></span>서비스의
                           질에 대한 불만이 있어서</label>
                        </div>
                     </li>
                     <li>
                        <div class="custom-radio_myleave"><input type="radio" name="user_leave" id="s_reason05"
                           value="사이트 이용 시 고객응대가 나빠서"><label for="s_reason05" class="label"><span></span>사이트 이용
                           시 고객응대가 나빠서</label>
                        </div>
                     </li>
                     <li>
                        <div class="custom-radio_myleave"><input type="radio" name="user_leave" id="s_reason06"
                           value="기타"><label for="s_reason06" class="label"><span></span>기타</label></div>
                     </li>
                  </ul>
                  <ul class="directInput_myleave"><input type="text" name="user_leave_memo" id="user_leave_memo"
                     placeholder="직접 입력"></ul>
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
             $('label', this).css('color', 'black');
         });
      </script>
      <iframe src="footer.html" frameborder="0" style="width: 100%; height: 220px;"></iframe>
   </body>
</html>