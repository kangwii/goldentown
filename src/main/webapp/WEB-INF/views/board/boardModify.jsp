<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/boardModify.css" rel="stylesheet"/> 
</head>
<body>
	<div class="wrap">
		<form action="/board/modify" method="post">
			<table>
				<tr>
					<td>No.</td>
					<td><input type="hidden" name="bno" value="${modify.bno}"></td>			
					<td>${modify.bno }</td>			
				</tr>
				<tr>
					<td>제목</td>
					<td>${modify.title }</td>
					<td>
						<input type="text" value="${modify.title}" name="title" >
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td>${modify.content }</td>
					<td><textarea name="content">${modify.content}</textarea></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>${modify.writer }</td>
				</tr>
				<tr>
					<td>작성일시</td>
					<td>${modify.regdate }</td>
				</tr>
				<tr>
					<td>
						<input class="modify" type="submit" value="수정">				
					</td>			
				</tr>		
			</table>
			<a class="return" href="./list">목록으로돌아가기</a>
		</form>
	</div>
</body>
</html>