<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String ID = request.getParameter("ID");
	String hobby = request.getParameter("hobby");
%>
<%=ID%>님의 취미는 <%=hobby%>입니다.
</body>
</html>