<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>언제나 당신과 함께..Golden-Town</title>    
    <link href="../resources/css/login.css" rel="stylesheet"/>        
</head>
<body>	
	<div class="wrap">
	    <div class="goldenLogin">
	    	<div class="welcome">환영합니다.</div>
	      <form class="form" action="/member/login" method="post">
			<div class="innerIdUp">                  
	          <input class="innerId"type="text" name="id" id="id" placeholder="Id를 입력하여주세요">          
	        </div>
	        <div class="innerPwUp">          
	          <input class="innerPw"type="password" name="password" id="password" placeholder="비밀번호를 입력하여주세요">
			</div>               
	        <button type="submit" class="login">로그인</button>
	      </form>
	      	<div class="move">
				<a class="join" href="/member"><button class="bJoin">회원가입</button></a>
				<a class="return" href="/index"><button class="bReturn">홈화면</button></a>
			</div>	      
		</div><!-- goldenLogin -->
	</div><!-- wrap -->
</body>
</html>