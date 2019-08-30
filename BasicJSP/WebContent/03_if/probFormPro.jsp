<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
      <% String name=request.getParameter("name");
        String number=request.getParameter("number");
      	String 학과=request.getParameter("학과");
      	
      	String a="";
      	
      	if (학과.equals("디자인")) {
      		a="뉴미디어 디자인 학과";
      	}
      	else if (학과.equals("뉴미디어솔루션")) {
			a="뉴미디어 솔루션 학과";
      	}
      	else if (학과.equals("SW")) {
      		a="뉴미디어 소프트웨어 학과";
      	}
      	
      	System.out.println("<b>" + name + "<b> 은" + a + "학번은" + number + "입니다.");
      	%>
</body>
</html>