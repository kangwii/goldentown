<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="../resources/css/boardDetail.css" rel="stylesheet"/>   

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h3 class="detail">상세내용</h3>
		    <table class="table">   
		      <tr class="number">
			      	<td>No.<input type="hidden" id="bno" value="${bdetail.bno }"></td>
		      		<td class="test">${bdetail.bno }</td>
		      </tr>      
		      <tr class="title">
		      		<td>제목</td>
		      		<td>${bdetail.title }</td>
		      </tr>
		      <tr class="upWriter">
		      		<td class="writer">작성자</td>
		      		<td>${bdetail.id}</td>
		      </tr>
		      <tr class="content">
		      		<td class="contentTitle">내용</td>
		      		<td class="contentInner">${bdetail.content }</td>
		      </tr>
		    </table>
		    <table class="sndTable">		      
		      <tr >
		         <td class="sndTd" colspan="2">
		            <a href="/board/modify?bno=${bdetail.bno}">글수정</a>
		            <a href="/board/remove?bno=${bdetail.bno}">글삭제</a>
		            <a href="/board/list"> 목록으로</a>
		         </td>         
		      </tr>
		   </table>
   </div><!--container -->
</body>
</html>