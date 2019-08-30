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
	String num2 = null; 	String zipcode = null;	String address = null;	String job = null;
    Connection conn = null;    PreparedStatement pstmt = null;
    ResultSet rs = null;       String str = "";
    try{
    	String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
    	String dbId = "root";
    	String dbPass = "1234";    	
    	Class.forName("org.gjt.mm.mysql.Driver");  
    	conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
    	String sql = "select id, pwd, name, num1, num2, email, phone, zipcode, address, job from tblregister where id = ?";
    	pstmt= conn.prepareStatement(sql);    	
    	pstmt.setString(1, id);    	    	
    	rs = pstmt.executeQuery();    	
    	if(rs.next()){    
    		name = rs.getString("name");    		if(name==null) name = "";
    		email = rs.getString("email");    		if(email==null) email = "";
    		phone = rs.getString("phone");    		if(phone==null) phone = "";
    		num1 = rs.getString("num1");    		if(num1==null) num1 = "";
    		num2 = rs.getString("num2");    		if(num2==null) num2 = "";
    		phone = rs.getString("phone");			if(phone==null) phone = "";
    		zipcode = rs.getString("zipcode");  	if(zipcode==null) zipcode = "";
    		address = rs.getString("address");    	if(address==null) address = "";
    		job = rs.getString("job");    		    if(job==null) job = "";    	
    	}	
    }catch(Exception e){
        e.printStackTrace();
        str = "로긴에 실패했습니다.";
    }finally{
        if(pstmt != null)
            try{ pstmt.close();
    		}catch(SQLException sqle){}
    	if(conn != null)
    	    try{ conn.close();
    	    }catch(SQLException sqle){}   	
   }	
%>
<body bgcolor="#FFFFCC" ">
	<div align="center">
		<br /><br />
		<form method="post" action="updatePro.jsp">			
			<table border="1"  width="600">
				<tr>
					<td colspan="3"><b>회원 정보 수정</b></td>
				</tr>
				<tr>
					<td width="20%">아이디</td><td width="50%"><%=id %></td></tr>								
				<tr>
					<td>이름</td><td><%=name %></td>
				</tr>
				<tr><td>주민등록번호</td><td><%=num1 %> - <%=num2 %>	</td>
				</tr>
				<tr><td>Email</td><td><input name="email" value="<%=email%>" size="30"></td>								
				</tr>
				<tr><td>전화번호</td><td><input name="phone" value="<%=phone %>" size="12">
				</tr>
				<tr><td>우편번호</td><td><input name="zipcode" value="<%=zipcode %>" size="5"></td>
				</tr>
				<tr><td>주소</td><td><input name="address" value="<%=address %>" size="45"></td></tr>
				<tr><td>직업</td><td><input type="text" name="job" value="<%=job%>"></td>
				</tr>					
				<tr><td colspan="3" align="center"><input type="submit" value="수정하기" >&nbsp; &nbsp; 
					<input type="reset" value="다시쓰기"></td>
				</tr>
			</table>					
		</form>
	</div>
</body>
</html>