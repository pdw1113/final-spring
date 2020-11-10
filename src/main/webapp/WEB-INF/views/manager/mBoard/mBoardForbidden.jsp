<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="resources/css/mBoardForbidden.css">

</head>

<body>
      <div class="header">
         <%@ include file="../common/mheader.jsp" %>
      </div>
      
      <div class="noReact">
      <div class="left-bar">
         <%@ include file="../common/mLeftBar.jsp" %>
      </div>
      <div class="section">
         <div class="mian-header">
            <div class="cate_Managerheader">게시판 관리 > <U>금칙어 관리</U></div>
            <div class="title_Managerheader">금칙어 관리</div>
         </div>
         <div class="main-section">
            <div class="second-title">게시판 금칙어( '최종 저장 버튼'을 꼭 눌러주셔야 적용이 됩니다. )</div>
            <div class="badTextArea">
               <div class="col-xs-5 tltl">
                  <div class="insert">
                     <div class="insertTableArea">
                        <table class="insertTable">
                           <tr>
                              <th class="thWidth">
                                 No.
                              </th>
                              <th>
                                 추가 키워드
                                 <button type="button" class="plusButton" onclick="rowAdd1()">+</button>
                                 <button type="button" class="minusButton" onclick="rowDelete1()">-</button>
                              </th>
                           </tr>
                           <tr>
                              <td>
                                 1
                              </td>
                              <td>
                                 <input class="insertText" id="iText1" type="text" name='enter'>
                              </td>
                           </tr>
                           <tbody id="testShow1">
                           </tbody>
                        </table>
                     </div>
                     <div class="insertButtonArea pull-right">
                        <div class="insertShowTableArea">
                           <p class="underline bold">
                              추가 키워드 확인창
                           </p>
                           <textarea class="insertShowTextarea" id="result1">
                                </textarea>
                        </div>
                        <div>
                           <button type="button" class="insertButton" value="" onclick="insert1()">추가 입력
                           확인</button>
                           <button type="button" class="clearButton" onclick="clear1()">clear</button>
                           <button type="button" class="finalButton" onclick="addWords()">추가 최종 저장</button>
                        </div>
                     </div>
                  </div>
                  <div class="delete">
                     <div class="deleteTableArea">
                        <table class="deleteTable">
                           <tr>
                              <th class="thWidth">
                                 No.
                              </th>
                              <th>
                                 삭제 키워드
                                 <button type="button" class="plusButton" onclick="rowAdd2()">+</button>
                                 <button type="button" class="minusButton" onclick="rowDelete2()">-</button>
                              </th>
                           </tr>
                           <tr>
                              <td>
                                 1
                              </td>
                              <td>
                                 <input class="deleteText" id="dText1" type="text" name='enter'>
                              </td>
                           </tr>
                           <tbody id="testShow2">
                           </tbody>
                        </table>
                     </div>
                     <div class="deleteButtonArea pull-right">
                        <div class="deleteShowTableArea">
                           <p class="underline bold">삭제 키워드 확인창</p>
                           <textarea class="deleteShowTextarea" id="result2">
                                </textarea>
                        </div>
                        <div>
                           <button type="button" class="deleteButton" value="" onclick="delete1()">삭제 입력
                           확인</button>
                           <button type="button" class="clearButton" onclick="clear2()">clear</button>
                           <button type="button" class="finalButton1" onclick="deleteWords()">삭제 최종 저장</button>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-xs-7 tltl">
                  <!-- 검색하기 -->
                  <div class="show">
                     <div class="showTableArea">
                        <Table class="showTable">
                           <tr>
                              <th class="thWidth pofi">
                                 No.
                              </th>
                              <th class="pofi">
                                 검색 결과
                              </th>
                           </tr>
                           
                           <tr>
                              <td>
                                 1
                              </td>
                              <td>
                              </td>
                           </tr>
                           <tr>
                              <td>
                                 2
                              </td>
                              <td>
                              </td>
                           </tr>
                           
                        </Table>
                     </div>
                     <div class="searchArea">
                        <div class="searchArea1">
                           <p class="bold sb">검색창</p>
                           <br>
                           <input type="text" class="searchInput" id=""><button type="button"
                              class="searchButton" onclick="searchWords()">검색</button>
                           <!-- <div class="searchForm1"></div> -->
                        </div>
                        <div class="searchArea2">
                           <p class="bold sb">등록일 조회</p>
                           <div class="container col-xs-7 dateWidth">
                              <input type="date" class="form-control input-md">
                              <span class="date-span">~</span>
                              <input type="date" class="form-control input-md">
                           </div>
                        </div>
                        <div class="searchArea3">
                           <p class="bold sb">초성 검색</p>
                           <br>
                           <button type="button" class="chosung c1">ㄱ</button>
                           <button type="button" class="chosung c2">ㄴ</button>
                           <button type="button" class="chosung c3">ㄷ</button>
                           <button type="button" class="chosung c4">ㄹ</button>
                           <button type="button" class="chosung">ㅁ</button>
                           <button type="button" class="chosung">ㅂ</button>
                           <button type="button" class="chosung">ㅅ</button>
                           <button type="button" class="chosung">ㅇ</button>
                           <button type="button" class="chosung">ㅈ</button>
                           <button type="button" class="chosung">ㅊ</button>
                           <button type="button" class="chosung">ㅋ</button>
                           <button type="button" class="chosung">ㅌ</button>
                           <button type="button" class="chosung">ㅍ</button>
                           <button type="button" class="chosung">ㅎ</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="third-title"><br>◈안내</div>
            <div class="introduction">
               [금칙어 관리] 금칙어는 어떨때 사용하나요?
               <br>ㆍ게시판에 스팸글 또는 욕설 등의 글이 등록되지 않도록 차단하는 기능입니다.
               <br>ㆍ게시글을 등록할 때 금칙어가 포함되어 있을 경우 게시글이 등록되지 않도록 제한합니다.
               <br>ㆍ금칙어 등록시 단어별 구분은 ',' 콤마(,)로 등록합니다.(예: 운영자,관리자 등)
            </div>
        </div>
    </div>
    </div>
    <script>
        let input1 = [];
        let input2 = [];
        let count1 = 1;
        let count2 = 1;

        // 추가 저장
        function insert1() {

            for (var i = 0; i < count1; i++) {
                input1[i] = document.getElementById("iText" + (i + 1)).value;
                // console.log(input1[i]);
                // console.log(input1);
                var combineText1 = input1.join(",");
            }
            document.getElementById("result1").value = combineText1;
        }

        // 삭제 저장
        function delete1() {
            for (var i = 0; i < count2; i++) {
                input2[i] = document.getElementById("dText" + (i + 1)).value;
                console.log(input2[i]);
                var combineText2 = input2.join(",");
            }
            document.getElementById("result2").value = combineText2;
        }

        function rowAdd1() {
            count1 += 1;
            insertRow = document.all("testShow1").insertRow();

            let insertRow_Num = insertRow.insertCell();
            insertRow_Num.innerHTML = count1;

            // 키워드
            insertRow_Key = insertRow.insertCell();
            insertRow_Key.id;

            for (var i = 0; i < count1; i++) {
                insertRow_Key.innerHTML = "<input type='text' class='insertText' id=" + "iText" + (i + 1) + ">";
            }
        }

        function rowDelete1() {
            if (count1 < 2) {
                alert("지울 수 없습니다.");
            } else {
                count1 -= 1;
                $('#testShow1 tr:last').remove();
                input1.splice(count1, 1);
            }
        }

        function rowAdd2() {

            count2 += 1;
            dinsertRow = document.all("testShow2").insertRow();

            // No.
            let dinsertRow_Num = dinsertRow.insertCell();
            dinsertRow_Num.innerHTML = count2;

            // 키워드
            dinsertRow_Key = dinsertRow.insertCell();
            dinsertRow_Key.id;

            for (var i = 0; i < count2; i++) {
                dinsertRow_Key.innerHTML = "<input type='text' class='deleteText' id=" + "dText" + (i + 1) + ">";
            }
        }

        function rowDelete2() {
            if (count2 < 2) {
                alert("지울 수 없습니다.");
            } else {
                count2 -= 1;
                $('#testShow2 tr:last').remove();
                input2.splice(count2, 1);
            }
        }

        $(document).on("keydown", "input[class=insertText]", function (key) {
            if (key.keyCode == 13) {
                rowAdd1().click();
            }

            $(".insertText").keyup(function () {
                $("#result1").text($(".insertText").val());
            });

        });

        $(document).on("keydown", "input[class=deleteText]", function (key) {
            if (key.keyCode == 13) {
                rowAdd2().click();
            }

            $(".deleteText").keyup(function () {
                $("#result2").text($(".deleteText").val());
            });
        });


        function clear1() {
            document.getElementById("result1").value = '';
        }

        function clear2() {
            document.getElementById("result2").value = '';
        }

    </script> 
    <script>
    function addWords(){
   	 // WORD
   	 
   	 	let words1 = [];
        let words = $("#result1").val();
   	 	words1 = words.split(",");
   	 	let check1 = 0;

  	/* 	alert(words1[0]);
   	 	alert(words1[1]); */

		for(var i=0;i<words1.length;i++){ 
        // WORD 전송 AJAX
        $.ajax({
	         url:"addWords.do",
	         data:{words:words1[i]},
	         type:"post",
	         success:function(data){
		       	 // 성공했을 때
		         if(data === "ok"){
		        	
		        	 check1++;
		        	 if(words1.length == check1){
		         	 	alert("금칙어가 추가 되었습니다.");
		        	 };

		         }else{
		        
		         	 	alert("금칙어 추가를 실패하였습니다.");

		         }
	         },
	         error:function(jqxhr, textStatus, errorThrown){
		         console.log("ajax 처리 실패");
		         $("#result1").focus();
		         }
	         });
    	 }; 
    };
    
    function deleteWords(){
     	 // WORD
     	 
     	 	let words2 = [];
          	let dwords = $("#result2").val();
     	 	words2 = dwords.split(",");
     	 	let check2 = 0;



  		for(var i=0;i<words2.length;i++){ 
          // WORD 전송 AJAX
          $.ajax({
  	         url:"deleteWords.do",
  	         data:{dwords:words2[i]},
  	         type:"post",
  	         success:function(data){
  		       	 // 성공했을 때
  		         if(data === "ok"){
  		        	
  		        	 check2++;
  		        	 if(words2.length == check2){
  		         	 	alert("금칙어가 삭제 되었습니다.");
  		        	 };

  		         }else{
  		        
  		         	 	alert("없는 단어입니다.");

  		         }
  	         },
  	         error:function(jqxhr, textStatus, errorThrown){
  		         console.log("ajax 처리 실패");
  		         $("#result2").focus();
  		         }
  	         });
      	 }; 
      };
      

    </script>
    <script>
    
    
    function searchWords(){
    	 // WORD

     let search = $("#searchInput").val();

     location.href="<%=request.getContextPath()%>/SearchSearchServlet.se?con="+$('#strkey').val()+"&keyword="+$('#keyword').val();


    </script>
    
    
                  
</body>

</html>