<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"/>
	
	<div align="center">
		<h3>현재 비밀번호를 입력하세요.</h3>
		<hr>
		
		<form action="user_delete_con.jsp" method="post">
		
			비밀번호: <input type="password" name="check_pw">
			<input type="submit" value="확인" class="btn btn-primary">
		</form>
	
	</div>
	
	<jsp:include page="../include/footer.jsp"/>
</body>
</html>












