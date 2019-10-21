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
request.setCharacterEncoding("utf-8");
String name = request.getParameter("sitename");
String addr = request.getParameter("siteaddr");
%>
<hr>
입력된 사이트 명 : <%=name %> <br>
<jsp:include page="subhome.jsp" flush = "false">
	<jsp:param name = "addr" value="<%=addr %>"/>
</jsp:include>
<hr>
사이트 명 : 다음<br>
사이트 주소 : http://www.daum.net
</body>
</html>