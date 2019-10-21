<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>로그인</title>
<script type="text/javascript">
function check(){
	var id = document.f.id.value;
	var pass = document.f.pwd.value;	
	if(id==""){
		alert("id를 입력하세요");
		return false;
	}	
	if(pass==""){
	    alert("password를 입력하세요");
	    return false;
   }
}
</script>
</head>
<body bgcolor="#ffffcc">
<div align="center"><br/><br/> 
    <form name="f" method="post" onsubmit="return check();" action="loginSessionPro.jsp">
	    <table>
		    <tr>
			    <td align="center" colspan="2"><h4>로그인</h4></td>
			</tr>
			<tr>
			    <td>아 이 디</td>
			<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td colspan="2">
			  	    <div align="right">
					<input type="submit" value="로그인" >&nbsp;
    </form>
					<input type="button" value="회원가입" onClick="javascript:location.href='member.jsp'">
	  			    </div>
				</td>
			</tr>
		</table>
	</div>	
</body>
</html>