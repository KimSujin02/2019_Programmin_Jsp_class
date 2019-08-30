<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function member_check(){
		
		var id = document.login.id.value;
		var pwd = document.login.pwd.value;
		var name = document.login.name.value;
		var num1 = document.login.num1.value;
		var num2 = document.login.num2.value;
		var email = document.login.email.value;
		var phone = document.login.phone.value;
		var zipcode = document.login.zipcode.value;
		var address = document.login.address.value;
		var jobs = document.login.jobs.value;
		if(id=="") { 
			alert("아이디를 입력해주세요")
			return false
		}
		else if(pwd=="") { 
			alert("비밀번호를 입력해주세요")
			return false
		}
		else if(name=="") { 
			alert("이름를 입력해주세요")
			return false
		}
		else if(num1 && num2 =="") { 
			alert("주민등록번호를 입력해주세요")
			return false
		}
		else if(email=="") { 
			alert("이메일을 입력해주세요")
			return false
		}
		else if(phone=="") { 
			alert("전화번호를 입력해주세요")
			return false
		}
		else if(zipcode=="") { 
			alert("우편번호를 입력해주세요")
			return false
		}
		else if(address=="") { 
			alert("주소를 입력해주세요")
			return false
		}
		else if(jobs=="") { 
			alert("직업을 입력해주세요")
			return false
		}
	}
</script>
</head>
<body bgcolor = "#fffcc">
	<div align="center">
		<br /><br />
	<form method="post" action="memberPro_2306.jsp" onsubmit="return member_check()">
	<table border="1" width="600">
		<tr><td colspan="3"><b>회원가입</b></td></tr>
		<tr>
			<td width="20%">아이디</td>
			<td width="50%"><input name="id" size="15"></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><input type="password" name="pwd" size="15"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input name="name" size="15"></td>
		</tr>
		<tr>
			<td>주민증록번호</td>
			<td><input name="num1" size="6"> - <input name="num2" size="6"></td>
		</tr>
		<tr>
			<td>E-MAIL</td>
			<td><input name="email" size="30"></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input name="phone" size="12"></td>
		</tr>
		<tr>
			<td>우편번호</td>
			<td><input name="zipcode" size="5"></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input name="address" size="45"></td>
		</tr>
		<tr>
			<td>직업</td>
			<td><input type="text" name="jobs"></td>
		</tr>
		<tr>
			<td colspan="3" align="center"><input type="submit" value="회원가입">
										<input type="reset" value="다시쓰기"></td>
		</tr>
	</table>
	</form>
	</div>
</body>
</html>