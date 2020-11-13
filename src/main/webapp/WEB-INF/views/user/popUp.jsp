<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="resources/css/popUp.css">
</head>
<body>
    <div class="all">
        <h2 class="title">능력자 등록을 축하합니다!</h2>

        <div class="main">
      <c:if test="${ !empty sessionScope.loginUser }">
      
            <p class="firstS">짝짝짝! 축하합니다!<br></p>
            <p class="secondS">${ loginUser.name }님은 능력자 등록이 되었습니다.</p>
            
            
       </c:if>
        </div>
        <hr>
        <div class="footer">
            <input type="button" value="확인하러가기" class="fButton" onclick="go()">
            <input type="button" value="창 닫기" class="fButton" onclick="window.close()">
        </div>

    </div>
    <script>
    	function go(){
    		 window.open('signUpMasterManage.do');
    	}
    </script>
</body>

</html>