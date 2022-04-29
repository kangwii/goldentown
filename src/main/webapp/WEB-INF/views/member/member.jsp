<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/member.css" rel="stylesheet"/>
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
		
		<form class="form" action="member/memberWrite" method="post">
			<h3 class="joinus">회원가입</h3>			
			<ul>
				<li class="align">
					<label class="join">아이디</label><br>
					<input type="text" name="id" id="id" class="lineUp" placeholder="id를 입력하여주세요"><br>				
				</li>				
				<li class="align">
					<label class="join">비밀번호</label><br>
					<input type="password" name="password" class="lineUp" placeholder="비밀번호를 입력하여주세요"><br>
				</li>
				<li class="align">
					<label class="join">이름</label><br>
					<input type="text" name="name" class="lineUp" placeholder="이름을 입력하여주세요"><br>
				</li>
				<li class="align">
					<label class="join">성별 </label><br>
					<select name="gender" class="lineUp">
						<option>선택</option>
						<option value="남">남자</option>
						<option value="여">여자</option>
						<option>선택안함</option>
					</select>
				</li>
				<li class="acount">
					<input type="submit" value="회원가입" class="lineUp bottom">
				</li>
			</ul>
			<a class="return" href="/index">홈화면</a>				
		</form>		
	</div>
</body>
</html>