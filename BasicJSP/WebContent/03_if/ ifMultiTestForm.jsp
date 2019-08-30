<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body> <h3>이름과 전화번호를 입력하세요</h3>
<form method="post" action = "ifMultiTestPro.jsp">
이름 <input type="text" name="name"> <br>
전화번호 <select name = "local">
<option value="서울"> 서울 </option>
<option value="경기"> 경기 </option>
<option value="강원"> 강원 </option>
</select>
-<input type = "text" name = "tell"> <br>
<input type = "submit" value = "입력완료">
</form>
</body>
</html>