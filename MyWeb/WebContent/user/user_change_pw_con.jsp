<%@page import="kr.co.stephen.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<%
	/*
	1. 폼 데이터를 처리하세요. (기존 비번, 바꿀비번)
	2. dao객체를 받아오시고 userCheck( )라는 메서드를 활용하여 
	 예전 비번과 아이디 정보를 바탕으로 해당 비밀번호가 일치하는지 확인하세요.
	 
	3. 일치한다면 비밀번호를 바꾸는 로직 changePassword(???)를 실행.
	4. "비밀번호가 정상적으로 변경되었습니다." 를 <script>로 출력 후 mypage로 이동.
	5. 일치하지 않는다면 "현재 비밀번호가 다릅니다." 를 출력 후 뒤로가기.
	6. 비밀번호 변경이 실패하면 "비밀번호 변경에 실패했습니다." 출력 후 mypage로 이동.
	
	String sql = "UPDATE user SET user_pw=? WHERE user_id=?"
	*/
	
	request.setCharacterEncoding("utf-8");
	String id = (String) session.getAttribute("user_id");
	String oldPw = request.getParameter("old_pw");
	String newPw = request.getParameter("new_pw");
	
	//DAO 객체 받아오기
	UserDAO dao = UserDAO.getInstance();
	
	int result = dao.userCheck(id, oldPw);
	
	if(result == 1) { //로그인 유효성 검증 성공
		// 비밀번호 변경 메서드 호출.
		if(dao.changePassword(id, newPw)) { %>
	
		<script>
			alert("비밀번호가 정상적으로 변경되었습니다.");
			location.href="user_mypage.jsp";
		</script>
		
		<% } else { %>
		
		<script>
			alert("비밀번호 변경에 실패했습니다.");
			history.back();
		</script>
		<% } 
		
	} else { //로그인 유효성 검증 실패 %>
		
		<script>
			alert("현재 비밀번호를 확인하세요.");
			history.back();
		</script>
		
	<% } %>







