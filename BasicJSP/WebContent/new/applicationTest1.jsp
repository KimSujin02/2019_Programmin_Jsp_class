<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>application 내장객체</h1>
	<%
		String info = application.getServerInfo();
		String realpath = application.getRealPath("/");
		String mimeType = application.getMimeType("sessionPro1.jsp");
		application.log("로그기록");
	%>
	웹컨테이너의 이름과 버전  <%= info %> <p>
	웹 어플리케이션 폴더의 로컬 시스템 경로 <%= realpath %>
	sessionPro1.jsp의 MimeType <%= mimeType %>
</body>
</html>