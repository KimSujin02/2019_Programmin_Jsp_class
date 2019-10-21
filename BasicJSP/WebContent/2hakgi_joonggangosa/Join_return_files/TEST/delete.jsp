<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>회원정보 수정</title>
</head>
<%
    request.setCharacterEncoding("utf-8");    
	String id = (String)session.getAttribute("id");
	String pwd = (String)session.getAttribute("pwd");	
	String name = null;  	String email = null;	String phone = null;	String num1 = null;
	String num2 = null; 	String zipcode = null;	String address = null;	String jobs = null;
    Connection conn = null;    PreparedStatement pstmt = null;
    ResultSet rs = null;       String str = "";
    try{
    	String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
    	String dbId = "root";
    	String dbPass = "mirim2";    	
    	Class.forName("org.gjt.mm.mysql.Driver");  
    	conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
    	String sql = "select id, pwd, name, num1, num2, email, phone, zipcode, address, jobs from tblregister where id = ?";
    	pstmt= conn.prepareStatement(sql);    	
    	pstmt.setString(1, id);    	    	
    	rs = pstmt.executeQuery();    	
    	if(rs.next()){    
    		name = rs.getString("name");    		if(name==null) name = "";
    		email = rs.getString("email");    		if(email==null) email = "";
    		phone = rs.getString("phone");    		if(phone==null) phone = "";
    		num1 = rs.getString("num1");    		if(num1==null) num1 = "";
    		num2 = rs.getString("num2");    		if(num2==null) num2 = "";
    		zipcode = rs.getString("zipcode");  	if(zipcode==null) zipcode = "";
    		address = rs.getString("address");    	if(address==null) address = "";
    		jobs = rs.getString("jobs");    		    if(jobs==null) jobs = "";    	
    	}	
    }catch(Exception e){
        e.printStackTrace();
        str = "삭제를 위한 회원정보 조회에 실패했습니다.";
    }finally{
        if(pstmt != null)
            try{ pstmt.close();
    		}catch(SQLException sqle){}
    	if(conn != null)
    	    try{ pstmt.close();
    	    }catch(SQLException sqle){}   	
   }	
%>
<body bgcolor="#FFFFCC" ">
	<div align="center">
		<br /><br />
		<form method="post" action="deletePro1.jsp">			
			<table border="1"  width="600">
				<tr>
					<td colspan="3"><b>회원 정보</b></td>
				</tr>
				<tr>
					<td width="20%">아이디</td><td width="50%"><%=id %></td></tr>								
				<tr>
					<td>이름</td><td><%=name %></td>
				</tr>
				<tr><td>주민등록번호</td><td><%=num1 %> - <%=num2 %>	</td>
				</tr>
				<tr><td>Email</td><td><%=email%></td>								
				</tr>
				<tr><td>전화번호</td><td><%=phone %></td>
				</tr>
				<tr><td>우편번호</td><td><%=zipcode %></td>
				</tr>
				<tr><td>주소</td><td><%=address %></td></tr>
				<tr><td>직업</td><td><%=jobs%></td>
				</tr>					
				<tr><td colspan="3" align="center"><input type="submit" value="회원 탈회" >&nbsp; &nbsp; 
					<input type="reset" value="다시쓰기"></td>
				</tr>
			</table>					
		</form>
	</div>
</body>
</html>