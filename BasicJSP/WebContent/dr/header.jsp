<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%! int count=0;
    	void addCount() {
    	count++;
    	}
    %>
    
    <% addCount(); %>
</body>
<body>

	<center> 이 페이지 방문횟수는 <%=count%>번 입니다.
</body>
</html>