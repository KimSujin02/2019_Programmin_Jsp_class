<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.util.*"
    buffer = "16kb"
    autoFlush="true"
    isThreadSafe="true" %>
    
    <%@ page import="java.sql.Timestamp" %>
    <%@ page import="java.text.SimpleDateFormat" %>
    <%@ page info="Copyright @2019" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	현재의 날짜와 시간은<br><br>
    <% Date date = new Date(); %>
	<%=date.toLocaleString() %>
	<br><br>
	<%=getServletInfo() %>
</body>
</html>