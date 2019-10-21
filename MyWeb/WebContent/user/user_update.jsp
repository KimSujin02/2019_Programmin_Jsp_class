<%@page import="kr.co.stephen.user.model.UserVO"%>
<%@page import="kr.co.stephen.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
	 - 사용자가 이 페이지에 들어왔을 때,
	  getMemberInfo()를 이용해서 회원정보를 불러온 후
	  아래의 input태그에 해당하는 값이 미리 보여지도록 처리하세요.
	*/
	
	String id = (String)session.getAttribute("user_id");

	UserVO vo = UserDAO.getInstance().getMemberInfo(id);
	
	String name = vo.getName();
	String email = vo.getEmail();
	String address = vo.getAddress();
	


%>
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="../include/header.jsp"/>

	
	<div align="center">
		<h3>회원정보 수정 페이지</h3>
		<hr>
		<form action="user_update_con.jsp" method="post">
			<table>
				<tr>
					<td>아이디</td>
					<td align="center"><%= id %></td>
					
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value=<%=name %>></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email" value=<%=email %>></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="address" value=<%=address %>></td>
				</tr>
			</table>
			
			<br>
			<%--버튼 타입은 클릭했을 때 자바스크립트를 사용하는 형태로 onclick 속성을 주고 사용합니다. --%>
			<%--onclick 속성안에는 자바스크립트 함수들이 들어가며, location.href='경로' 는 자바 스크립트의 페이지 이동기능--%>
			<%-- submit태그는 onclick속성에 return false값이 들어오면 작동하지 않습니다. --%>
			<input type="submit" value="정보수정" class="btn btn-primary" onclick="return confirm('수정하시겠습니까?')">
			<input type="button" value="취소" class="btn btn-danger" onclick="location.href='/MyWeb'">
			
			
		</form>
	
	</div>
		
	
	
	<jsp:include page="../include/footer.jsp"/>

</body>
</html>