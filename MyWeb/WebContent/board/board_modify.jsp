<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center" class="div_center">
	<h3>게시판 글 수정 페이지</h3>
	<hr>
	
	<form action="update.board" method="post">
		
		<!-- input태그의 hidden속성은 화면에서 보여줄 필요가 없는 값을 처리할 때 숨겨서 넣어놓는 방법입니다. -->
		<input type="hidden" name="bId" value="${modify_board.boardId }">
		
		<table border="1" width="500">
			
			<tr>
				<td>글 번호</td>
				<td>${modify_board.boardId }</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${modify_board.writer }</td>
			</tr>
			<tr>
				<td>글 제목</td>
				<td>
					<input type="text" name="bTitle" value="${modify_board.title }">
				</td>
			</tr>
			<tr>
				<td>글 내용</td>
				<td>
					<textarea rows="10" style="width: 95%;" name="bContent">
					</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정 하기" onclick="return confirm('수정하시겠습니까?')">&nbsp;&nbsp;
					<a href="list.board"><input type="button" value="목록"></a>         
				</td>
			</tr>
			
		</table>
	</form>
	
</div>
</body>
</html>