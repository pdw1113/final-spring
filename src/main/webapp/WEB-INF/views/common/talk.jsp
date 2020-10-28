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
      <link rel="stylesheet" type="text/css" href="resources/css/talk.css">
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