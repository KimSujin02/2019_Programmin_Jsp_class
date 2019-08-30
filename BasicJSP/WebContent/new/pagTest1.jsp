<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%@	page context ="text/html;charset=UTF-8"
			info = "BasicJSP PageContext"
		%>
		<%
			String pageinfo = this.getServletInfo();
		%>
		<h1>Page Example1</h1>
			현재 페이지의  info값 : <%=pageinfo %>
</body>
</html>