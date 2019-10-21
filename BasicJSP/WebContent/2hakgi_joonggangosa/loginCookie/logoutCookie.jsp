<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFCC">
	<br><br/>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null) {
		for(int i = 0; i < cookies.length; i++) {
			if(cookies[i].getName().equals("id")) {
				cookies[i].setMaxAge(0); //시간을 0으로 돌려서 쿠키를 없애는 과정임
				response.addCookie(cookies[i]);
				out.println("<h2>로그아웃되었습니다.</h2>");
			}
		}
	}
%>
<form method="post" action="loginCookie.jsp">
	<input type="submit" value="뒤로가기">
</form>
</body>
</html>