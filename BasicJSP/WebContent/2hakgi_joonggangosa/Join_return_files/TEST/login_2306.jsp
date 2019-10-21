<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check(){
		
		var id = document.login.id.value;
		var pwd = document.login.pwd.value;
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
<div align="center">
	<b>로그인</b>
	<form name=login method=post action="loginPro_2306.jsp" onsubmit="return check()"> <!-- onsubmit이 경고창을 띄어주는 역활이다. -->
		<table>
			<tr>
				<td>아이디</td>
				<td><input type=text name=id><br></td>
			</tr>
			
			<tr>
				<td>비밀번호</td>
				<td> <input type=text name=pwd><br> </td>
			</tr>
			
			<tr>
				<td><input type=submit value="로그인"></td>
				<td><input type=button value="회원가입" onClick="javascript:location.href='member_2306.jsp'"></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>