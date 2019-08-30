<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>성명 학번,학과를 입력하세요</h2>
	<form method="post" action="ifElseTestPro.jsp">
	성명 <input type = "text" name="name"> <br>
	학번 <input type = "text" name="number"> <br>
	학과(1:디자인 2:뉴미디어솔루션 3:SW)<input type = "text" name="학과"> <br>
	<input type = "submit" value= "입력완료">
	</form>
</body>
</html>