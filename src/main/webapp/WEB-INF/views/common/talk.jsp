<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <!-- Noto-Sans 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
      <!-- JUA 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
      <style>
         /* 기본 셋팅 */
         *{ margin: 0; padding: 0; }
         body,html{
         margin:0;
         padding:0;
         width:100%;
         }
         ul, li{
         padding: 0;
         margin: 0;
         }
         li{
         list-style-type: none;
         }
         .floatLeft{
         float: left;
         }
         .floatRight{
         float: right;
         }
         p{
         margin: 0;
         padding: 0;
         }
         /* ----------------- */
         /* ----- font ----- */
         /* jua 폰트 */
         .font_jua{
         font-family: 'Jua', sans-serif;
         }
         /* noto 폰트 */
         .font_noto{
         font-family: 'Noto Sans KR', sans-serif;
         }
         /* -------------- */
         /* 오른쪽 하단 채팅 아이콘 */
         .chatIcon{
         position: fixed;
         bottom: 0px;
         right: 1rem;
         bottom: 1rem;
         border: 3px solid rgb(250,190,0);
         background-color: rgb(250,190,0);
         border-radius: 100%;
         width: 3rem;
         height: 3rem;
         text-align: center;
         }
         .chatIcon:hover{
         cursor: pointer;
         opacity: 0.4;
         }
         .name_container{
         display: inline-block; 
         margin-left: 0.5rem; 
         margin-top: 0.45rem;
         }
         .iconImg{
         object-fit: cover;
         width: 2rem;
         height: 2rem;
         margin-top: 7px;
         }
         /* --------------------------- */
         /* 채팅 리스트  */
         .chatListContainer{
         border: 3px solid rgb(250,190,0);
         border-bottom: none;
         border-top-left-radius: 10px;
         border-top-right-radius: 10px;
         position: fixed;
         bottom: 0px;
         right: 100px;
         width: 20rem;
         height: 28rem;
         box-shadow: 0 0 10px 2px rgb(0,0,0,0.2);
         background-color: white;
         }
         /* --------------------------- */
         /* ----- 채팅창 ----- */
         .chatContainer{
         border: 3px solid rgb(250,190,0);
         border-bottom: none;
         border-top-left-radius: 10px;
         border-top-right-radius: 10px;
         position: fixed;
         bottom: 0px;
         right: 100px;
         width: 20rem;
         height: 28rem;
         box-shadow: 0 0 10px 2px rgb(0,0,0,0.2);
         background-color: white;
         }
         /* ------------------------ 채팅창 상단 ------------------------ */
         .chatTop{
         border-bottom: 3px solid rgb(250,190,0);
         height: 2.5rem;
         border-top-right-radius: 10px;
         border-top-left-radius: 10px;
         box-shadow: 0 1px 6px 0.1px rgb(0,0,0,0.2);
         }
         .btnImg{
         object-fit: cover;
         width: 1.5rem;
         height: 1.5rem;
         margin-top: 0.5rem;
         margin-right: 0.5rem;
         }
         .profile_img{
         object-fit: cover;
         object-position: center;
         width: 2rem;
         height: 2rem;
         border-radius: 50%;
         margin-top: 0.25rem;
         margin-left: 0.25rem;
         }
         .profile_img_Container:before{
         content: ' ';
         position: absolute;
         width: 0.5rem;
         height: 0.5rem;
         left: 1.7rem;
         top: 1.6rem;
         background-color: rgb(250,190,0);
         border: 2px solid white;
         border-radius: 50%;
         }
         .btnImg:hover{
         cursor: pointer;
         opacity: 0.4;
         }
         /* ---------------------------------------------------------------- */
         /* ------------------------- 채팅창 중앙 -------------------------- */
         .chatMiddle{
         padding-bottom: 5px;
         height: 20.5rem;
         overflow:auto; 
         }
         .chatContainer .chatMiddle ul {
         width: 100%; list-style: none; 
         }
         .chatContainer .chatMiddle ul li { 
         width: 100%; 
         }
         .chatContainer .chatMiddle ul li.left { 
         text-align: left; 
         }
         .chatContainer .chatMiddle ul li.right {
         text-align: right; 
         }
         .chatContainer .chatMiddle ul li > div { 
         font-size: 13px;  
         }
         .chatContainer .chatMiddle ul li > div.sender { 
         margin: 10px 20px 0 20px; 
         font-weight: bold; 
         }
         .chatContainer .chatMiddle ul li > div.message { 
         display: inline-block; 
         word-break:break-all; 
         margin: 5px 20px; 
         max-width: 75%; 
         border: 1px solid #888; 
         padding: 0.2rem; 
         border-radius: 5px; 
         background-color: white; 
         color: #555; 
         text-align: left; 
         }
         .format { display: none; }
         /* --------------------------------------------------------------- */
         /* ------------------------- 채팅창 하단 -------------------------- */
         .chatBottom{
         border-top: 3px solid rgb(250,190,0);
         }
         .chatContainer .chatBottom {
         position: fixed; 
         bottom: 0;
         width: 20rem;
         background-color: #FFF; 
         text-align: center; 
         border-top: 3px solid rgb(250,190,0); 
         }
         .chatContainer .chatBottom > textarea { 
         width: 100%;
         height: 4.1rem; 
         border: none; 
         padding: 10px; 
         box-sizing: border-box;
         resize: none;
         }
         .chatContainer .chatBottom > textarea:focus{
         outline: none;
         }
         /* ---------------------------------------------------------------- */
         /* 토글 display none */
         .display-none{
         display: none;
         }
         /* 채팅 리스트 */
         .chatList{
         display: grid;
         align-content: flex-start; 
         height: 90%;
         overflow:auto; 
         }
         .chatList_box{
         padding: 0.1rem;
         font-size: 1rem;
         height: fit-content;
         line-height: inherit;
         border-bottom: 1px  solid rgb(250,190,0);
         position: relative;
         }
         .chatList_box div{
         position: absolute;
         display: inline-block;
         margin-left: 0.3rem; 
         margin-top: 0.8rem;
         }
         /* 온라인 일 때 노란색 점 표시 */
         .chatList_box:before{
         content: ' ';
         position: absolute;
         width: 0.5rem;
         height: 0.5rem;
         left: 1.7rem;
         top: 1.6rem;
         background-color: rgb(250,190,0);
         border: 2px solid white;
         border-radius: 50%;
         }
         .notRead{
         float: right;
         border-radius: 10px; 
         padding: 0.3rem; 
         margin-top: 0.3rem;
         color: rgb(87, 87, 87);
         }
         .chatList_box:hover{
         opacity: 0.6;
         cursor: pointer;
         }
      </style>
   </head>
   <body>
      <!-- 채팅 아이콘 -->
      <div class="chatIcon font_jua">
         <img src="resources/img/chat-icon.png" class="iconImg">
      </div>
      <!-- 채팅 리스트 / 채팅 방 OPEN / CLOSE -->
      <script>
         $(document).on("click", ".chatIcon", function(){            // 채팅 Icon 클릭 시,
             if($('.chatContainer').hasClass("display-none")){           // if ) 채팅방이 열려있지 않을 때,
                 $('.chatListContainer').toggleClass('display-none');    // 리스트를 연다.
             }else{                                                      // else ) 채팅방이 열려있다면,
                 $('.chatContainer').toggleClass('display-none');        // 채팅방을 닫는다.
             }
         });
         
         $(document).on("click", "img.close", function(){            // X 버튼 클릭 시,
             $('.chatContainer').toggleClass('display-none');            // 채팅방을 닫는다.
         });
         
         $(document).on("click", "img.down", function(){             // - 버튼 클릭 시,
             $('.chatContainer').toggleClass('display-none');            // 채팅방을 닫고,
             $('.chatListContainer').toggleClass('display-none');        // 리스트를 연다.
         });
      </script>
      <!-- 채팅 창 -->
      <div class="chatContainer display-none">
         <div class="chatTop">
            <div class="profile_img_Container floatLeft">
               <img src="resources/img/cdm5.jpg" class="profile_img">
            </div>
            <div class="name_container font_noto">
               천동민
            </div>
            <div class="floatRight">
               <img src="resources/img/chat-close.png" class="btnImg close">
            </div>
            <div class="floatRight">
               <img src="resources/img/chat-minus.png" class="btnImg down">
            </div>
         </div>
         <div class="chatMiddle">
            <ul>
               <!-- 동적 생성 -->
            </ul>
         </div>
         <div class="chatBottom">
            <textarea placeholder="메세지를 입력해 주세요."></textarea>
         </div>
      </div>
      <!-- format -->
      <div class="chatMiddle format">
         <ul>
            <li>
               <div class="sender">
                  <span></span>
               </div>
               <div class="message">
                  <span></span>
               </div>
            </li>
         </ul>
      </div>
      <!-- 채팅 IO -->
      <script>
         const myName = "상뉴";
         
         // enter 키 이벤트
         $(document).on('keydown', 'div.chatBottom textarea', function(e){
             if(e.keyCode == 13 && !e.shiftKey) {
                 e.preventDefault(); // 엔터키가 입력되는 것을 막아준다.
                 const message = $(this).val();  // 현재 입력된 메세지를 담는다.
                 
                 sendMessage(message);
         
                 // textarea 비우기
                 clearTextarea();
             }
         });
         
         // * 1 메시지 보내기
         function sendMessage(message){
         
             const data = {
                 "senderName" : "상뉴",
                 "message"   : message 
             };
             CheckLR(data);
         } 
         
         // * 2 추가 된 것이 내가 보낸 것인지, 상대방이 보낸 것인지 확인하기
         function CheckLR(data) {
             const LR = (data.senderName != myName)? "left" : "right";
         
             appendMessageTag(LR, data.senderName, data.message);
         }
         
         // * 3 메세지 태그 append
         function appendMessageTag(LR_className, senderName, message) {
             const chatLi = createMessageTag(LR_className, senderName, message);
         
             $('div.chatMiddle:not(.format) ul').append(chatLi);
         
             // 스크롤바 아래 고정
             $('div.chatMiddle').scrollTop($('div.chatMiddle').prop('scrollHeight'));
         }
         
         // * 4 메세지 태그 생성
         function createMessageTag(LR_className, senderName, message) {
         
             // 형식 가져오기
             let chatLi = $('div.chatMiddle.format ul li').clone();
         
             // 값 채우기
             chatLi.addClass(LR_className); // 클래스 추가 left인지 right인지
             chatLi.find('.sender span').text(senderName); // 작성자 추가
             chatLi.find('.message span').text(message);   // 메세지 추가
         
             return chatLi;
         };
         
         // * 5 - 채팅창 비우기
         function clearTextarea() {
             $('div.chatBottom textarea').val('');
             return false;
         };
      </script>
      <!-- 채팅 리스트 -->
      <div class="chatListContainer font_jua display-none">
         <div class="chatTop">
            <div style="padding: 10px; margin-left: 4px;">니즈톡 리스트</div>
         </div>
         <div class="chatList">
            <div class="chatList_box">
               <img src="resources/img/cdm5.jpg" class="profile_img">
               <div>천동민</div>
               <span class="notRead">
               읽지않은 메세지가 <strong>3 </strong>개 있습니다.
               </span>
            </div>
            <div class="chatList_box">
               <img src="resources/img/유지만_사진.jpg" class="profile_img">
               <div>유지만</div>
               <span class="notRead">
               읽지않은 메세지가 <strong>1 </strong>개 있습니다.
               </span>
            </div>
            <div class="chatList_box">
               <img src="resources/img/이승백_사진.jpg" class="profile_img">
               <div>이승백</div>
               <span class="notRead">
               읽지않은 메세지가 <strong>1 </strong>개 있습니다.
               </span>
            </div>
            <div class="chatList_box">
               <img src="resources/img/조원영_사진.jpg" class="profile_img">
               <div>조원영</div>
               <span class="notRead">
               읽지않은 메세지가 <strong>1 </strong>개 있습니다.
               </span>
            </div>
            <div class="chatList_box">
               <img src="resources/img/조정호_사진.jpg" class="profile_img">
               <div>조정호</div>
               <span class="notRead">
               읽지않은 메세지가 <strong>1 </strong>개 있습니다.
               </span>
            </div>
         </div>
      </div>
      <!-- 리스트에서 해당목록 클릭 시 해당 채팅방으로 이동 -->
      <script>
         $(document).on("click", ".chatList_box",function(){
             if($(this).children("div").html() === "천동민"){
                 $(".chatContainer").toggleClass("display-none");
                 $(this).parent().parent().toggleClass("display-none");
             }
         });
      </script>
   </body>
</html>