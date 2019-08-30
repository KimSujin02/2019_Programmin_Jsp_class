<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import = "java.util.Enumeration" %>
   
   <% String method = request.getMethod();
		String URI = request.getRequestURI();
		String queryStr = request.getQueryString();
		String host = request.getRemoteHost();
		String addr = request.getRemoteAddr();
		String protocol = request.getProtocol();
		String serverName = request.getServerName();
		int port = request.getServerPort();
		String path = request.getContextPath();
		
		Enumeration<String> en = request.getHeaderNames();
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestTest</title>
</head>
<body>
		method = <%=method %> <br>
		URI = <%=URI %> <br>
		QueryString = <%=queryStr %> <br>
		host = <%=host %> <br>
		address = <%=addr %> <br>
		protocol = <%=protocol %> <br>
		serverName = <%=serverName %> <br>
		port = <%=port %> <br>
		path = <%=path %> <br>
</body>
</html>