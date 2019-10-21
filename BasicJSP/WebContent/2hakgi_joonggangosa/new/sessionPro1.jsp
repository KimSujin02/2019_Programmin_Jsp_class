<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	String id = request.getParameter("id");
		session.setAttribute("id",id);
		String pw = request.getParameter("pw");
		session.setAttribute("pw",pw);
		session.setMaxInactiveInterval(60*5);	%>
<h2>Session 예제</h2>
<form method = "post" action = "sessionPro2.jsp">
1. 가장 좋아하는 계절은? <br>
<input type = "radio" name = "season" value = "봄" checked> 봄 <br>
<input type = "radio" name = "season" value = "여름" > 여름 <br>
<input type = "radio" name = "season" value = "가을" > 가을 <br>
<input type = "radio" name = "season" value = "겨울" > 겨울 <br>
2. 가장 좋아하는 과일은? <br>
<input type = "radio" name = "fruit" value = "수박" > 수박 <br>
<input type = "radio" name = "fruit" value = "멜론" > 멜론 <br>
<input type = "radio" name = "fruit" value = "사과" > 사과 <br>
<input type = "radio" name = "fruit" value = "오렌지" > 오렌지 <br>

<input type = "submit" value = "결과보기">

</form>
</body>
</html>