<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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

    <style>
        .font_jua {
            font-family: 'Jua', sans-serif;
            color: black;
        }

        html,
        body {
            width: 100%;
            padding: 0;
            margin: 0;
        }

        .header {
            width: 100%;
            height: 6.2rem;
            /* background-color: aqua; */
        }

        .left-bar {
            float: left;
            width: 13%;
            height: 917px;
            border-right: 1px solid gainsboro;
        }

        .section {
            width: 87%;
            float: left;
            height: 55.5rem;
        }

        .cate_Managerheader {
            color: rgb(141, 141, 141);
            height: 35px;
            line-height: 35px;
            border-bottom: 1px solid rgb(141, 141, 141);
            padding-left: 15px;
        }

        .title_Managerheader {
            font-size: 30px;
            font-family: jua;
            margin-top: 30px;
            padding-bottom: 10px;
            margin-bottom: 10px;
            margin-left: 20px;
            margin-right: 20px;
            border-bottom: 3px solid black;
        }

        /* 텍스트 입력 */
        .badTextArea {
            width: 1500px;
            height: 550px;
            /* border: 2px solid #ddd; */
            position: relative;
            left: 50px;
            top: 10px;
            display: block;
            resize: none;
        }

        .second-title {
            font-size: 20px;
            font-family: 'jua';
            margin-left: 30px;
        }

        .third-title {
            font-size: 18px;
            font-family: 'jua';
            margin-left: 50px;
            color: black;
        }

        .introduction {
            font-size: 15px;
            color: darkgray;
            margin-left: 70px;
        }

        .tltl {
            /* border: 1px solid gray; */
            height: 100%;

        }

        .insert,
        .delete {
            height: 47%;
            margin: 10px;
        }

        .insertTableArea,
        .deleteTableArea {
            height: 100%;
            width: 60%;
            float: left;
            overflow: auto;
        }

        .insertButtonArea,
        .deleteButtonArea {
            float: left;
            height: 100%;
            width: 40%;
            display: block;
        }

        .insertTable,
        .deleteTable {
            width: 100%;
            overflow: auto;
        }

        .insertTable th,
        .insertTable td,
        .deleteTable th,
        .deleteTable td {
            border: 2px solid rgb(132, 148, 163);
            text-align: center;
            height: 40px;
        }

        .insertTable th {
            background-color: aliceblue;
        }

        .deleteTable th {
            background-color: rgb(224, 238, 250);
        }

        .insertShowTableArea,
        .deleteShowTableArea {
            width: 100%;
            height: 50%;
            margin-left: 10px;
        }

        .insertShowTextarea,
        .deleteShowTextarea {
            width: 100%;
            height: 100%;
            overflow: auto;
            resize: none;
        }

        .insertText,
        .deleteText {
            width: 240px;
            height: 40px;
            border: none;
            text-align: center;
        }

        .insertButton,
        .deleteButton {
            width: 140px;
            height: 30px;
            background-color: white;
            border: 2px solid rgb(132, 148, 163);
            border-radius: 5px;
            position: relative;
            top: 50px;
            left: 20px;
            font-weight: 600;
        }

        .insertButton:hover {
            background-color: whitesmoke;
            transition: 300ms;
            font-weight: 900;
        }

        .deleteButton:hover {
            background-color: whitesmoke;
            transition: 300ms;
            font-weight: 600;
        }

        .clearButton {
            background-color: white;
            width: 60px;
            height: 30px;
            position: relative;
            top: 50px;
            left: 30px;
            border-radius: 4px;
        }

        .clearButton:hover {
            background-color: whitesmoke;
            transition: 300ms;
            font-weight: 600;
            color: red;
        }

        .finalButton,
        .finalButton1 {
            background-color: whitesmoke;
            width: 210px;
            height: 30px;
            position: relative;
            top: 60px;
            left: 20px;
            border-radius: 4px;
            font-weight: 700;
        }

        .finalButton:hover {
            background-color: rgb(219, 215, 215);
            transition: 300ms;
            font-weight: 600;
            color: red;
        }

        .finalButton1:hover {
            background-color: rgb(219, 215, 215);
            transition: 300ms;
            font-weight: 600;
            color: red;
        }

        .plusButton,
        .minusButton {
            background-color: white;
            width: 30px;
            height: 30px;
            font-size: large;
            font-weight: 600;
            text-align: center;
            border-radius: 4px;
            position: relative;
        }

        .plusButton:hover {
            cursor: pointer;
            opacity: 0.4;
        }

        .minusButton:hover {
            cursor: pointer;
            opacity: 0.4;
        }

        .saveButton {
            width: 130px;
            height: 60px;
            font-size: 19px;
            background-color: rgb(219, 219, 219);
            border-radius: 5px;
            text-shadow: 0px -1px 1px rgba(0, 0, 0, 3);
            border: 1px solid black;
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 3), inset 0 0 2px rgba(255, 255, 255, 3), 0 1px 2px rgba(0, 0, 0, 29);
            font-family: sans-serif;
            outline-style: none;
            cursor: pointer;
            position: relative;
            top: -100px;
            left: 480px;
        }

        .saveButton:hover {
            background-color: rgb(250, 190, 0);
            transition: 300ms;
        }

        .show {
            height: 96%;
            margin: 10px;
        }

        .showTableArea {
            width: 60%;
            height: 100%;
            float: left;
            overflow: auto;
        }

        .searchArea {
            width: 40%;
            height: 100%;
            border: 2px solid rgb(132, 148, 163);
            float: left;
            text-align: center;

        }

        .searchArea1 {
            height: 20%;
            border-bottom: 2px solid rgb(132, 148, 163);
        }

        .searchArea2 {
            height: 30%;
            border-bottom: 2px solid rgb(132, 148, 163);
        }

        .searchArea3 {
            height: 50%;
        }

        .chosung {
            background-color: white;
            width: 50px;
            height: 50px;
            font-size: large;
            font-weight: 600;
            text-align: center;
            border-radius: 4px;
            position: relative;
            margin: 5px;
            opacity: 1;
            position: relative;
            top: -10px;
        }

        .chosung:hover {
            opacity: 0.4;
        }

        .showTable {
            border: 2px solid rgb(132, 148, 163);
            width: 96%;
            text-align: center;
        }

        .showTable th,
        .showTable td {
            border: 2px solid rgb(132, 148, 163);
            text-align: center;
            height: 40px;
        }

        .thWidth {
            width: 100px;
        }

        .pofi {
            background-color: rgb(207, 229, 248);
        }

        .underline {
            text-align: center;
            box-shadow: inset 0 -2px 0 #b0e0e6;
            border-bottom: 3px solid #b0e0e6;
        }

        .bold {
            font-weight: 900;
        }

        .sb {
            border-bottom: 2px solid rgb(132, 148, 163);
            height: 40px;
            line-height: 40px;
            background-color: aliceblue;
        }

        .searchForm {
            position: relative;
            top: -20px;
            left: 20px;
            text-align: justify;
            width: 220px;
            height: 40px;
        }

        .searchForm td {
            border: 1px solid gray;
        }

        .searchForm1 {
            width: 40px;
            height: 40px;
        }

        .searchInput {
            position: relative;
            top: -15px;
            left: 10px;
            width: 210px;
            height: 31px;
            border-radius: 4px;
        }

        .searchButton {
            position: relative;
            top: -15px;
            margin-left: 20px;
            background-color: white;
            width: 60px;
            height: 31px;
            font-size: medium;
            font-weight: 600;
            text-align: center;
            border-radius: 4px;
            position: relative;
            border: 2px solid seagreen;

        }

        .searchButton:hover {
            cursor: pointer;
            opacity: 0.4;
        }

        .dateWidth {
            left: 70px;
        }
    </style>

</head>

<body>
    <div class="header">
         <%@ include file="../../common/header.jsp" %>
      </div>
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
                                    추가 키워드 확인창</p>
                                <textarea class="insertShowTextarea" id="result1">
                                </textarea>
                            </div>
                            <div>
                                <button type="button" class="insertButton" value="" onclick="insert1()">추가 입력
                                    확인</button>
                                <button type="button" class="clearButton" onclick="clear1()">clear</button>
                                <button type="button" class="finalButton">추가 최종 저장</button>
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
                                <button type="button" class="finalButton1">삭제 최종 저장</button>
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
                                <p class="bold sb">검색창</p><br>
                                <input type="text" class="searchInput"><button type="button"
                                    class="searchButton">검색</button>
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
                <br>ㆍ게시판에 스팸글 또는 욕설 등의 글이 등록되지 않도록 차단하는 기능입니다.
                <br>ㆍ게시글을 등록할 때 금칙어가 포함되어 있을 경우 게시글이 등록되지 않도록 제한합니다.
                <br>ㆍ금칙어 등록시 단어별 구분은 ',' 콤마(,)로 등록합니다.(예: 운영자,관리자 등)

                <!-- <button class="saveButton">최종 저장</button> -->
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
                var combineText1 = input1.join(",  ");
            }
            document.getElementById("result1").value = combineText1;
        }

        // 삭제 저장
        function delete1() {
            for (var i = 0; i < count2; i++) {
                input2[i] = document.getElementById("dText" + (i + 1)).value;
                console.log(input2[i]);
                var combineText2 = input2.join(",  ");
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

</body>

</html>