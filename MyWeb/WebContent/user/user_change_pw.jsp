<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div align="center">
	<h3> 비밀번호 변경 페이지</h3>
	<hr>
	
	<form action="user_change_pw_con.jsp" method="post">
		현재 비밀번호: <input type="password" name="old_pw"> <br>
		변경 비밀번호: <input type="password" name="new_pw"> <br>
		
		<input type="submit" value="확인" class="btn btn-primary">
		<input type="button" value="취소" class="btn btn-default" onclick="history.back()">
	
	</form>
	
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>