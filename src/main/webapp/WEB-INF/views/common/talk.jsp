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
         $(document).on("click", ".chatIcon", function(){            	// 채팅 Icon 클릭 시,
            if($('.chatContainer').hasClass("display-none")){           // if ) 채팅방이 열려있지 않을 때,
                $('.chatListContainer').toggleClass('display-none');    // 리스트를 연다.
            }else{                                                      // else ) 채팅방이 열려있다면,
                $('.chatContainer').toggleClass('display-none');        // 채팅방을 닫는다.
                websocket.close();
            }
         	
         	if(!$('.chatListContainer').hasClass('display-none')){	 	// 채팅 리스트가 닫혀 있을 때
                getRoomList();											// 채팅 방 목록을 불러온다.
         	}
         	
         });
         
         $(document).on("click", "img.close", function(){            	// X 버튼 클릭 시,
             $('.chatContainer').toggleClass('display-none');           // 채팅방을 닫는다.
             websocket.close();											// socket 연결 종료
         });
         
         $(document).on("click", "img.down", function(){             	// - 버튼 클릭 시,
             $('.chatContainer').toggleClass('display-none');           // 채팅방을 닫고,
             $('.chatListContainer').toggleClass('display-none');       // 리스트를 연다.
             websocket.close();											// socket 연결 종료
         });
    </script>
	<!-- 채팅 창 -->
	<div class="chatContainer display-none">
		<div class="chatTop">
			<div class="profile_img_Container floatLeft">
				<img class="profile_img" id="setPic"><!-- src 사진 경로 동적 생성 -->
			</div>
			<div class="name_container font_noto" id="setName"><!-- 이름 동적 생성 --></div>
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

	<!-- 채팅 리스트 -->
	<div class="chatListContainer font_jua display-none">
		<div class="chatTop">
			<div style="padding: 10px; margin-left: 4px;">니즈톡 리스트</div>
		</div>
		<div class="chatList">
			<!-- 동적 생성 -->
		</div>
	</div>
	
	<!-- 채팅 목록 관련 -->
	<script>
		// 총 읽지 않은 갯수
		let countAll = 0;
		
		function getRoomList(){
			// 채팅 방 목록 가져오기
 			$.ajax({
    			url:"chatRoomList.do",
    			data:{
    				userEmail:"${loginUser.email}"
    			},
    			dataType:"json",
    			async:false, // async : false를 줌으로써 비동기를 동기로 처리 할 수 있다.
    			success:function(data){
    				
 					$chatWrap = $(".chatList");
					$chatWrap.html("");
					
					var $div; 	// 1단계
					var $img; 	// 2단계
					var $divs; 	// 2단계
					var $span;	// 2단계
					
					if(data.length > 0){
						// 읽지 않은 메세지 초기화
						countAll = 0;
						
						// 태그 동적 추가
						for(var i in data){
							
							// 사용자의 입장일 때
							if(data[i].userEmail == "${loginUser.email}"){
								$div = $("<div class='chatList_box' onclick='enterRoom(this);'>").attr("id",data[i].roomId); // 1단계
								
								$img = $("<img class='profile_img'>").attr("src", "resources/masterImg/" + data[i].masterPic);
								$divs = $("<div class='userNameId'>").text(data[i].masterName);
								
								// 읽지 않은 메세지가 0이 아닐 때
								if(data[i].unReadCount != 0){
									$span = $("<span class='notRead'>").text(data[i].unReadCount);
								}else{
									$span = $("<span>");
								}
								
								$div.append($img);
								$div.append($divs);
								$div.append($span);
								
								$chatWrap.append($div);
							}
							
							// 마스터의 입장일 때
							else{
								$div = $("<div class='chatList_box' onclick='enterRoom(this);'>").attr("id",data[i].roomId); // 1단계
								
								$img = $("<img class='profile_img'>").attr("src", "resources/img/" + data[i].userPic);
								$divs = $("<div class='userNameId'>").text(data[i].userName);
								
								// 읽지 않은 메세지가 0이 아닐 때
								if(data[i].unReadCount != 0){
									$span = $("<span class='notRead'>").text(data[i].unReadCount);
								}else{
									$span = $("<span>");
								}
								
								$div.append($img);
								$div.append($divs);
								$div.append($span);
								
								$chatWrap.append($div);
							}
							
							// String을 int로 바꿔주고 더해준다.
							countAll += parseInt(data[i].unReadCount);
						}
					}
    			}
    		});
		}
		
		// 화면 로딩 된 후
		$(window).on('load', function(){
			
			// 2초에 한번씩 채팅 목록 불러오기(실시간 알림 전용)
			setInterval(function(){
				// 방 목록 불러오기
				getRoomList();
				
				// 읽지 않은 메세지 총 갯수가 0개가 아니면
				if(countAll != 0){
					// 채팅 icon 깜빡거리기
					$('.chatIcon').addClass('iconBlink');
				}else{
					// 깜빡거림 없애기
					$('.chatIcon').removeClass('iconBlink');
				}
			},2000);
		});
	</script>
	
	<!-- 채팅 방 관련 -->
	<script>
		let roomId;
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

        // 채팅 방 클릭 시 방번호 배정 후 웹소켓 연결
        function enterRoom(obj){
        	// 현재 html에 추가되었던 동적 태그 전부 지우기
        	$('div.chatMiddle:not(.format) ul').html("");
        	// obj(this)로 들어온 태그에서 id에 담긴 방번호 추출
        	roomId = obj.getAttribute("id");
 			// 해당 채팅 방의 메세지 목록 불러오기
  			$.ajax({
    			url:roomId + ".do",
    			data:{
    				userEmail:"${loginUser.email}"
    			},
    			async:false,
    			dataType:"json",
    			success:function(data){
    				for(var i = 0; i < data.length; i++){
    					// 채팅 목록 동적 추가
    					CheckLR(data[i]);
    				}
    			}
    		});
 			// 웹소켓 연결
 			connect();
 			console.log("enterRoom");
        }
        
        // 채팅 방 열어주기
        $(document).on("click", ".chatList_box",function(){
         	$(".chatContainer").toggleClass("display-none");
         	$(this).parent().parent().toggleClass("display-none");
         	// 이름 추가
         	$("#setName").html($(this).children('div').html());
         	// 사진 추가
         	$("#setPic").attr("src",$(this).children('img').attr('src'));
         	 // 스크롤바 아래 고정
            $('div.chatMiddle').scrollTop($('div.chatMiddle').prop('scrollHeight'));
         });
        
        // 웹소켓
 		let websocket;
 	
 		//입장 버튼을 눌렀을 때 호출되는 함수
 		function connect() {
 			// 웹소켓 주소
 			var wsUri = "ws://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/websocket/echo.do";
 			// 소켓 객체 생성
 			websocket = new WebSocket(wsUri);
 			//웹 소켓에 이벤트가 발생했을 때 호출될 함수 등록
 			websocket.onopen = onOpen;
 			websocket.onmessage = onMessage;
 		}
 		
 		//웹 소켓에 연결되었을 때 호출될 함수
 		function onOpen() {
 			// ENTER-CHAT 이라는 메세지를 보내어, Java Map에 session 추가
 			const data = {
               	 "roomId" : roomId,
               	 "name" : "${ loginUser.name }",
               	 "email" : "${ loginUser.email }",
                 "message" : "ENTER-CHAT"
            };
            let jsonData = JSON.stringify(data);
 			websocket.send(jsonData);
 		}
 		
        // * 1 메시지 전송
        function sendMessage(message){
			
            const data = {
            	"roomId" : roomId,
            	"name" : "${ loginUser.name }",
            	"email" : "${ loginUser.email }",
                "message"   : message 
            };
 			 
            CheckLR(data);
             
            let jsonData = JSON.stringify(data);
             
 			websocket.send(jsonData);
         }
        
         // * 2 메세지 수신
     	function onMessage(evt) {
        	 
        	let receive = evt.data.split(",");
     		
            const data = {
               	 "name" : receive[0],
               	 "email" : receive[1],
                 "message" : receive[2]
            };
     		
     		if(data.email != "${ loginUser.email }"){
        		CheckLR(data);
     		}
    	}
         
        // * 2-1 추가 된 것이 내가 보낸 것인지, 상대방이 보낸 것인지 확인하기
        function CheckLR(data) {
        	// email이 loginSession의 email과 다르면 왼쪽, 같으면 오른쪽
        	const LR = (data.email != "${ loginUser.email }") ? "left" : "right";
         	// 메세지 추가
            appendMessageTag(LR, data.email, data.message, data.name);
        }
         
        // * 3 메세지 태그 append
        function appendMessageTag(LR_className, email, message, name) {
        	 
            const chatLi = createMessageTag(LR_className, email, message, name);
         
            $('div.chatMiddle:not(.format) ul').append(chatLi);
         
            // 스크롤바 아래 고정
            $('div.chatMiddle').scrollTop($('div.chatMiddle').prop('scrollHeight'));
        }
         
        // * 4 메세지 태그 생성
        function createMessageTag(LR_className, email, message, name) {
         
             // 형식 가져오기
             let chatLi = $('div.chatMiddle.format ul li').clone();
         
             chatLi.addClass(LR_className); 			 // left : right 클래스 추가
             // find() : chatLi의 하위 요소 찾기
             chatLi.find('.sender span').text(name); 	 // 이름 추가
             chatLi.find('.message span').text(message); // 메세지 추가
         
             return chatLi;
        };
         
        // * 5 - 채팅창 비우기
        function clearTextarea() {
             $('div.chatBottom textarea').val('');
             return false;
        };
	</script>
</body>
</html>