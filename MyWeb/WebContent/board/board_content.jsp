<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>

<jsp:include page="../include/header.jsp"/>

<div align="center" class="div_center">

	<h3>게시글 내용 보기</h3>
	<hr>
	<table border="1" width="500">
		<tr>
			<td width="20%">글번호</td>
			<td width="30%">${content_board.boardId }</td>
			
			<td width="20%">조회수</td>
			<td width="30%">${content_board.hit }</td>
		</tr>
		<tr>
			<td width="20%">작성자</td>
			<td width="30%">${content_board.writer }</td>
			
			<td width="20%">작성일</td>
			<td width="30%">${content_board.date }</td>
		</tr>
		
		<tr>
			<td width="20%">글제목</td>
			<td colspan="3" width="30%">${content_board.title }</td>
		</tr>
		<tr>
			<td width="20%">글내용</td>
			<td colspan="3" width="30%" height="120px">${content_board.content }</td>
		</tr>
		
		<tr>
			<td colspan="4" align="center">
				<input type="button" value="목록" onclick="location.href='list.board'">&nbsp;&nbsp;
				<input type="button" value="수정" onclick="location.href='modify.board?bId=${content_board.boardId}'">&nbsp;&nbsp;
				<a class="btn" href="delete.board?bId=${content_board.boardId}" onclick="return confirm('정말 삭제하시겠습니까?')">삭제</a>&nbsp;&nbsp;
			</td>
		</tr>
	</table>
	
	
	
<jsp:include page="../include/footer.jsp"/>
	

</div>



</body>
</html>