<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<jsp:useBean id="test"
	class="b06.bean.SimpleBean"/>
	<jsp:setProperty property="message" name="test"
	value="빈을 정복하자!"
	/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>간단한 빈 프로그래밍</h1>
	</br>
	Message: <jsp:getProperty property="message" name="test"/>
	
</body>
</html>