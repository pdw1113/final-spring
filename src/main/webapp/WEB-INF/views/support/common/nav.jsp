<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>Slide Project</title>
      <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      <style>
         html,
         body {
         padding: 0;
         margin: 0;
         overflow: hidden;
         }
         h1 {
         font-size:2.4rem;
         text-align: center;
         font-family: jua;
         margin: 32px auto 32px auto;
         width:100%;
         }
         a {
         font-size: 1em;
         }
         /* 전체 메뉴 div */
         .container_mynav {
         background-color: #ffff;
         border-top: solid rgb(250, 190, 0) 2px;
         border-right: 1px #e5e5e5 solid;
         border-left: 1px #e5e5e5 solid;
         border-bottom: 1px #e5e5e5 solid;
         width: 82.5rem;
         display: flex;
         /*가로 row*/
         flex-direction: row;
         /* 한줄에 가득차면 다음줄로 이동 안하겠다.*/
         flex-wrap: nowrap;
         justify-content: space-between;
         margin: 0 auto;
         overflow-y: hidden;
         }
         /* 주 메뉴 div */
         .dropdown_mynav {
         float: left;
         overflow: hidden;
         width: 20.625rem;
         }
         /* 주 메뉴 글씨 */
         .dropdown_mynav a {
         float: left;
         font-size: 16px;
         color: black;
         text-align: center;
         padding: 14px 16px;
         text-decoration: none;
         }
         /* 주 메뉴 버튼 */
         .dropdown_mynav .dropbtn_mynav {
         font-size: 16px;
         width: 20.625rem;
         height: 55px;
         border: none;
         outline: none;
         color: black;
         padding: 14px 16px;
         background-color: inherit;
         font-family: jua;
         margin: 0 auto;
         }
         /* 주 메뉴 hover */
         .dropdown_mynav .dropbtn_mynav:hover {
         background-color: #fabe00;
         cursor: pointer;
         }
         @media (max-width: 1360px) {
         .container_mynav {
         width:96%;
         margin: 0 20px 0 20px;
         }
         .dropdown_mynav .dropdown-content_mynav{
         width: 50%;
         }
         .dropdown_mynav .dropbtn_mynav{
         width: 100%;
         }
         }
         @media (max-width: 940px) {
         .dropdown_mynav .dropdown_mynav {
         width: 25%;
         }
         }
         @media (max-width: 860px){
         .container_mynav {
         width:95%;
         margin: 0 20px 0 20px;
         }
         }
         @media (max-width: 740px){
         .container_mynav {
         width:94%;
         margin: 0 20px 0 20px;
         }
         }
         @media (max-width: 640px) {
         .container_mynav {
         width:93%;
         margin: 0 20px 0 20px;
         }
         .content_myPage_money .layoutSubbox_myPage_money {
         margin: 0 12px;
         }
         .contain_mynav h1 {
         padding: 0 14px 0  14px;
         }
         }
         .display_customercenter{
         width: 82.5rem;
         margin: 0 auto;
         margin-top: 10px;
         height: auto;
         }
      </style>
   </head>
   <body>
      <nav class="contain_mynav">
         <h1>고객센터</h1>
         <div class="container_mynav">
            <div class="dropdown_mynav">
               <button class="dropbtn_mynav" value="1" onclick="location.href='noticeList.do'">공지사항</button>
            </div>
            <div class="dropdown_mynav">
               <button class="dropbtn_mynav" value="2">뭘하죠?
               </button>
            </div>
            <!--로그인 했을경우 환불신청 -->
            <div class="dropdown_mynav">
               <button class="dropbtn_mynav" value="3">FAQ</button>
            </div>
            <div class="dropdown_mynav">
               <button class="dropbtn_mynav" value="4">관리자 니즈톡</button>
            </div>
         </div>
         <div class="display_customercenter">
         </div>
      </nav>
      <script>
         $(".dropbtn_mynav").click(function(){
           if($(this).attr('value')=="1"){
                 $(".dropbtn_mynav").css("background-color","white");
                 $(this).css("background-color","#fabe00");
         
             }else if($(this).attr('value')=="2"){
                 $(".dropbtn_mynav").css("background-color","white");
                 $(this).css("background-color","#fabe00");
         
             }else if($(this).attr('value')=="3"){
                 $(".dropbtn_mynav").css("background-color","white");
                 $(this).css("background-color","#fabe00");
             
             }else if($(this).attr('value')=="4"){
                 $(".dropbtn_mynav").css("background-color","white");
                 $(this).css("background-color","#fabe00");
             }
         });
      </script>
   </body>
</html>