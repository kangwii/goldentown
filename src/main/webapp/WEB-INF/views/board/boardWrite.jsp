<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/boardWrite.css" rel="stylesheet"/>   
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form class="form" action="/board/write" method="post">
			<h3>게시판 글쓰기</h3>
			<div class="wTitle">
				<input class="titleInput" type="text" name="title" placeholder="&nbsp제목을 입력해주세요">
				<input type="hidden" name="writer" value="${session.name}">
				<input type="hidden" name="id" value="${session.id}">
			</div>
			<div class="wContent">
				<textarea class="contentInput" name="content" placeholder="&nbsp내용을입력해주세요" cols="60" rows="20"></textarea><br>
				<input class="submit" type="submit" value="글쓰기"><br>
				<div class="return"><a class="returnList" href="/board/list">목록으로 돌아가기</a></div>
			</div>
		</form>
	</div>
</body>
</html>