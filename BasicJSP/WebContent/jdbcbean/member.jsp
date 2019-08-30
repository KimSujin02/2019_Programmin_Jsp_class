<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check(){
		
		var id = document.member.id.value;  
		var pwd = document.member.pwd.value;
		if(id=="") { 
			alert("아이디를 입력해주세요")
			return false
		}
		else if(pwd=="") { 
			alert("비밀번호를 입력해주세요")
			return false
		}
	}
</script>
</head>
<body bgcolor="#FFFFCC">
    <jsp:useBean id="regBean" class="jdbcbean.MemberBean"/>
    <jsp:setProperty name = "regBean" property="*"/>
    
        <!-- 
    	=> MemberBean의 있는 변수 모든값을 "*"(아스타)기호로 가져온다.
		=> id 값만 가져오고 싶으면 "id"로 하면 됨
     -->
<center>
<form name="member" method="post" onsubmit="return member_check();" action="memberPro.jsp">	
	<table width="600" border="1">
		<tr>
			<td colspan=2>회원가입</td>
		</tr>
		<tr>
			<td width=20%>아이디</td>
			<td><input type="text"  name="id"></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><input type="password"  name="pwd"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text"  name="name"></td>
		</tr>
		<tr>
			<td>주민등록번호</td>
			<td><input type="text"  name="num1">ex)021014-<input type="text" name="num2">ex)1234567</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text"  name="email"></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text"  name="phone"></td>
		</tr>
		<tr>
			<td>우편번호</td>
			<td><input type="text"  name="zipcode"></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input type="text"  name="address"></td>
		</tr>
		<tr>
			<td>직업</td>
			<td><input type="text"  name="jobs"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="회원가입">&nbsp;<input type="reset" value="다시쓰기"></td>
		</tr>
	</table>
</form>
</center>
</body>
</html>