<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안녕 나는 상세보기야</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<style>

    *{
        box-sizing: border-box;
    }

    .outer{
        width : 1200px;
        margin: auto;
        background-color: lightpink;
        color : white;
        border-radius : 50px;
        padding : 50px 0px;
    }
	
	table{
		text-align:center;
        		width : 80%;
	}
	td{
		border : 1px solid white;
	}
    .title{
        font-size : 18px;
    }
    .content{
        font-size : 18px;
    }

    button{
	background : lightpink !important;
	border : 1px solid white;
    }
    
</style>
</head>
<body>
	<jsp:include page="../main.jsp" />
	<div class="outer" data-aos="fade-up">
		<h1 align="center">게시글 상세보기</h1>
		<br>
		
		<table align="center">
			<tr>
				<td width="100" height="80">글번호</td>
				<td>${ board.boardNo }</td>
                <td width="100" >작성일</td>
				<td>${ board.createDate }</td>
			</tr>
            <tr>
                <td height="80">작성자</td>
                <td>${ board.boardWriter }</td>
                <td>조회수</td>
                <td>${ board.count }</td>
            </tr>
			<tr>
				<td height="120">제목</td>
				<td colspan="3" class="title">${ board.boardTitle }</td>
			</tr>
			<tr>
				<td>내용</td>
				<td height="200" colspan="3" class="content">
					${ board.boardContent }
				</td>
			</tr>
		</table>
		
		<table align="center" border="1">	
			<tr>
				<td width="100">댓글작성</td>
				<td width="400"><textarea style="resize:none; width:100%; height:100%; border:none; vertical-align: middle;"></textarea></td>
				<td width="100"><button class="btn btn-sm btn-outline-light">등록</button></td>
			</tr>
			<tr>
				<td colspan="3"><b>댓글(${ replyList.size() })</b></td>
			</tr>
			<!-- 
			<tr>
				<td height="50">admin</td>
				<td></td>
				<td>2024/4/15</td>
			</tr>
			 -->
			 
			 <c:forEach items="${ replyList }" var="reply">
			 	<tr>
			 		<td height="50">${ reply.replyWriter }</td>
			 		<td >${ reply.replyContent }</td>
			 		<td >${ reply.createDate }</td>
			 	</tr>
			 </c:forEach>
		</table>
		<br><br>
	</div>


	<script>
	  AOS.init();
	</script>


</body>
</html>