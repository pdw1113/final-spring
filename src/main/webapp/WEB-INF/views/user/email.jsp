<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
                        <form action="${dice}.do" method="POST">
                            인증번호 입력 : 	<input type="number" name="confirm_number"
                                placeholder="  인증번호를 입력하세요. ">
                        <br> <br>
                        <button type="submit" name="submit">인증번호 전송</button>
                        </form>
 
</body>
</html>
