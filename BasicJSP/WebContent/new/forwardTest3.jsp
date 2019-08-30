<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  request.setCharacterEncoding("utf-8");
	String ID = "coco3591";
	String hobby = "만화보기";
%>
	<jsp:forward page="forwardToTest5.jsp">
		<jsp:param name = "ID" value= "<%=ID %>" />
		<jsp:param name = "hobby" value = "<%=hobby %>" />
	</jsp:forward>
</body>
</html>