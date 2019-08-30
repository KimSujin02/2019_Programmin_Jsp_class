<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
     String name= request.getParameter("name");
%>
  포함되는 페이지 includedTest.jsp 입니다 <br>
  <b> <%=name%></b> 님 환영합니다.

</body>
</html>