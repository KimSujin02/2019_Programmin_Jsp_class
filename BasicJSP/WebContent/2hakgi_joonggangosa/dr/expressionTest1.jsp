<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	//배열초기화 블록을 사용하면 배열 선언 메모리 할당 초기 값 설정을 한번에 설정 할 수 있다.
	String[] str={ "JSP", "JAVA", "Andriod", "HTML5" };
	int i= (int)(Math.random()*4);
	
	%>
	<%=str[i] %>기 재미 있다.
</body>
</html>