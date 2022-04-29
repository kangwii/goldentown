<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="../resources/css/boardList.css" rel="stylesheet"/>   
<body>	
	<div class="table">
		<div class="boardHeader">
			<a class="homeLink" href="/index">Home</a>
			<div class="mTitle">Q&A 게시판</div>
		</div><!-- boardHeader -->
   		<table class="inTable">
	   		<tr class="titleList">
	      		<td class="number">번호</td>
	      		<td class="title">제목</td>
	      		<td class="date">작성일</td>
	      		<td class="writer">작성자</td>
	      		<td class="count">조회수</td>      
	   		</tr>   
	   		<c:forEach items="${blist}" var="board">
	      	<tr class="showList">
	      		<td class="sNumber">${board.bno}</td>
	      		<td class="sTitle"><a class="innerTitle" href="/board/detail?bno=${board.bno}">${board.title}</a></td>
	      		<td class="sDate">${board.regdate}</td>
	      		<td class="sWriter">${board.writer}</td>
	      		<td class="sCount">${board.count}</td>                  
	      	</tr>
   			</c:forEach>
		</table>
   	<c:if test="${session != null }">
      <a class="write" href="/board/write">글쓰기</a>
   </c:if>
     <c:if test="${session == null }">
      <div class="loginPlease">로그인을 하셔야 글을 쓰실수 있습니다.</div><a class="reLogin" href="/login">로그인</a>
   </c:if>      
   
	<form class="bottomForm" id="searchForm" action="/board/list" method="get">   
   		<select name="type" id="type" class="search">
      		<option value="">전체</option>
      		<option value="t" ${pageMaker.cri.type eq 't'?'selected':''}>제목</option>
      		<option value="w" ${pageMaker.cri.type eq 'w'?'selected':''}>작성자</option>
      		<option value="tw" ${pageMaker.cri.type eq 'tw'?'selected':''}>제목+작성자</option>
   		</select>
	    <input class="textInput" type="text" id="keyword" name="keyword" value="${pageMaker.cri.keyword}">
   		<input type="hidden" id="pagenum" name="pagenum" value="${pageMaker.cri.pagenum}">
   		<input type="hidden" id="amount" name="amount" value="${pageMaker.cri.amount}">
   		<input class="button" type="submit" id="searchbtn" value="검색">
   		
      <div class='pull-right'>
      <ul class="pagination">
      
         <c:if test="${pageMaker.prev}">
         <li class="paginate_button previous">
            <a class="prevStyle pageNo" href="/board/list?pagenum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}">이전</a>
          </li>
         </c:if>
         
         <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">         
	         <li class="paginate_button ${pageMaker.cri.pagenum == num ? "active" :""}" >         
	            <a class="pageNo numStyle" data-page="${num}">${num}</a>
	         </li>
         </c:forEach>
         <c:if test="${pageMaker.next}">
	         <li class="paginate_button next">
	            <a class="nextStyle pageNo" data-page="${pageMaker.endPage+1}">next</a>
	         </li>
         </c:if>
        </ul>
      </div>	
	</form>
	</div><!-- table -->
	
	<script type="text/javascript">
	
		$(document).ready(function(){
				
			var result = '<c:out value="${result}"/>';
			
			checkModal(result);
			
			history.replaceState({},null,null);
			
			function checkModal(result){
				if(result === '' || history.state){
					return;
				}
				
				if(parseInt(result)>0){
					$(".modal-body").html("게시글"+parseInt(result)+"번이 등록되었습니다.");
				
				$("#myModal").modal("show");				
				}
			}
				
			$("#regBtn").on("click", function(){
				self.location = "/board/register";
			});
			
			var actionForm = $("#searchForm");
			
			$(".paginate_button a").on("click", function(e){				
				
				e.preventDefault();
				
				console.log('click');
				
				actionForm.find("input[name='pagenum']").val($(this).data("page"));
				actionForm.submit();
			});
			
			$("#searchbtn").on("click", function(e){
				e.preventDefault();
				
				$("#pagenum").val(1);
				actionForm.submit();
			})			
		});	
	
	</script>
</body>
</html>
