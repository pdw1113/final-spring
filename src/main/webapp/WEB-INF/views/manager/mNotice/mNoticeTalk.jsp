<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here </title>
</head>
<style>
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
  
</style>
<body>

<div class="header">
         <%@ include file="../../common/header.jsp" %>
      </div>
      <div class="left-bar">
         <%@ include file="../common/mLeftBar.jsp" %>
      </div>
      <div class="section">
      만들 예정!
      </div>
      
	
</body>
</html>