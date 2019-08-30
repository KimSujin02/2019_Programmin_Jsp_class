<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
    import ="java.util.*"
    buffer = "16kb"
    autoFlush="true"
    isThreadSafe="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>Directive Example</h1>
    <% Date date = new Date(); %>
    <p> 현재의 날짜와 시간은 </p>
    <%=date.toLocaleString() %>
</body>
</html>