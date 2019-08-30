<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffcc">
	<% 
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String str="";
		
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
			String dbId = "root";
			String dbPwd = "mirim2";
			Class.forName("org.gjt.mm.mysql.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd);
			String sql = "select id, pwd from tblregister where id=?"; //SQL문
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				String rId = rs.getString("id");
				String rPwd = rs.getString("pwd");
				if(id.equals(rId) && pwd.equals(rPwd)){
					session.setAttribute("id", id);
					session.setAttribute("pwd", pwd);
					out.println("<p><br><center>" + id + "로 로그인되었습니다.<br>"); %>
					<br>
					<form method="post" action="update_2306.jsp">
					<input type="submit" value="회원정보수정">&nbsp;
					</form>
<%				}else
					out.println("패스워드가 틀렸습니다.");
			}else
				out.println("아이디가 틀렸습니다.");
		}catch(Exception e){
			e.printStackTrace();
			str = "로그인에 실패했습니다.";
		}finally{
			if(pstmt != null)
				try{ pstmt.close();
				}catch(SQLException sqle){}
			if(conn != null)
				try{ pstmt.close();
				}catch(SQLException sqle){}
		}
 	%> 
	    	
    	<%=str %>
    	<% if (str.equals("id 로긴 완료입니다.")){ %>
    		<form method=post action=update_2306.jsp>
    			<input type=submit value="회원 정보 수정">
    		</form>
    		<form method=post action=delete_2306.jsp>
    			<input type=submit value="회원탈퇴">
    		</form>
		<%	session.setAttribute("id", id);
			session.setAttribute("pwd", pwd);
		 } else {%>
			 <form method="post" action="login_2306.jsp">
				<input type="submit" value="되돌아가기">
			</form>
		<%	} %>

</body>
</html>