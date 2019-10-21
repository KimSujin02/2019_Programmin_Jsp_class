<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	request.setCharacterEncoding("utf-8"); %>
	<%	String season = request.getParameter("season");
		String fruit = request.getParameter("fruit");
		Object id = session.getAttribute("id");
		Object pw = session.getAttribute("pw");	%>

	<h2>Session Example1</h2>
	
	<%=id %>님이 좋아하는 계절과 과일은<br><br>
	<%=season %>과 <%=fruit %>입니다.<br><br>
	세션 ID : <%=session.getId() %><br><br>
	세션 유지 시간 : <%=session.getMaxInactiveInterval() %>초
	
</body>
</html>