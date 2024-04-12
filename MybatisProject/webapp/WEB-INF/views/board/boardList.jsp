<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>

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
	.outer a{
		text-decoration : none;
		color : whitesmoke;
border : 1px solid white;
	}
	
	table{
		text-align:center;
	}
	td, th {
	    background-color: lightpink;
        	    border : 1px solid white;
	    color : white;
	}
	tr:hover{
	    cursor:pointer;
	}

    .form-group{
        display: flex;
        justify-content: center;
        
    }
    .form-group>*{
        width:20%;
    }
    .form-group>input{
        width : 50%;
    }
	
</style>
</head>
<body>

	<jsp:include page="../main.jsp" />
	
	<div class="outer" align="center" data-aos="fade-up">

		<h1>게시판</h1>
		<br>
		
		<div id="search-area">
			<form action="search.do" method="get">
				<input type="hidden" name="page" value="1">
                <div class="form-group">
                    <select name="condition" class="custom-select">
                        <option value="writer">작성자</option>
                        <option value="content">내용</option>
                        <option value="title">제목</option>
                    </select>
                    <input type="text" class="form-control" name="keyword" value="">
                    <button type="submit" class="btn btn-secondary">검색</button>
                </div>
			</form>
		</div>
		
		
		<br>
		
		<table class="table">
			<thead>
				<tr>
					<th width="200">글번호</th>
					<th width="400">제목</th>
					<th>작성자</th>
					<th>조회수</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
					<c:forEach var="board" items="${ requestScope.boardList }">
						<tr>
							<td>${ board.boardNo }</td>
							<td>${ board.boardTitle }</td>
							<td>${ board.boardWriter }</td>
							<td>${ board.count }</td>
							<td>${ board.createDate }</td>
						</tr>
					</c:forEach>
			</tbody>
		</table>
		
		<br>
		
		<div id="paging-area">
			<c:forEach var="p" begin="${ requestScope.pageInfo.startPage }"
						end="${ requestScope.pageInfo.endPage }">
				<a
				  class="btn btn-outline-danger"
				  href="list.board?page=${ p }">${ p }</a>
			</c:forEach>
		</div>


	</div>

<script>
  AOS.init();
</script>


<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>