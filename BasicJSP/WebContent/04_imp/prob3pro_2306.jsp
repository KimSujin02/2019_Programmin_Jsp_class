<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import = "java.sql.Timestamp" %>
    <%@ page import = "java.text.SimpleDateFormat" %>
    <%@ page  import="java.util.Enumeration"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%=getServletInfo()  %>
	<%
	Timestamp now = new Timestamp(System.currentTimeMillis());
	SimpleDateFormat format = new SimpleDateFormat("yyyy. MM. dd");
	String strDate = format.format(now);
	%>
	
	 <%
	 
    String names[] = {"프로토콜이름", "서버이름", "Method 방식", "컨텍스트 경로", " URI ",
                                  "접속한 클라이언트 IP"};
	 
    String  values[]={request.getProtocol(),  request.getServerName(), request.getMethod(), 
                       request.getContextPath(), request.getRequestURI(), request.getRemoteAddr()};
     Enumeration<String> en = request.getHeaderNames();
     
     String headerName="";
     String headerValue="";
 %>
 
 
	
	<% request.setCharacterEncoding("utf-8"); %>
	<% String name = request.getParameter("name");
	String memo = request.getParameter("memo"); %>
	<h2> 메모장 </h2>
		<table  border="1">
			<tr> <td width="150">이름 </td>
			<td width="600"><%= name %></td> </tr>
			
			<tr> <td width="150">메모 </td>
			<td width="600"><%= memo %></td> </tr>
			
			<tr> <td width="150">날짜</td>
			<td width="600"><%= strDate %></td> </tr>
			
			
			 <% 	  
   		  while(en.hasMoreElements()){  //값이 있는지 없는지
                   headerName = en.nextElement();   //elements의 값을 가져온다. 하나씩 꺼내온다.따라서 Element에 s를 붙이지 않아도 된다.
                   headerValue = request.getHeader(headerName); %>    <!-- 메소드들은 그냥 다 외우자. set로 묵어서 -->
                   
                   <tr> <td width="150"> <%= headerName %> </td>
                   <td width = "600" > <%= headerValue %> </td>
                   
                   <%
              }
      %>
			
		</table>  
</body>
</html>