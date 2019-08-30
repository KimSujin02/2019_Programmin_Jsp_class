<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>forward 액션태그</h3>
	<form method="post" action="forwardTest.jsp">
 		아이디 <input type="text" name="ID"><br>
		취미 <select name = "hobby">
			<option value="wow"> wow </option>
			<option value="만화보기"> 만화보기 </option>
			<option value="오버워치"> 오버워치 </option>
		<br><br>
		<input type="submit"  value="입력 완료">
	</form>
</body>
</html>