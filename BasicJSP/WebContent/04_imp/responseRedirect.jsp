<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> response 내장객체 리다이렉트 예제</h3>
		현재 페이지는 <b> responseRedirect.jsp </b> 페이지 입니디ㅏ.
		
	<% 
		response.sendRedirect("responseRedirected.jsp");
	%>
</body>
</html>