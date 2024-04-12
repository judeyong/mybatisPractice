<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.mybatis.common.template.Template"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안녕 나는 메뉴바야</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>

    body{
        margin:0px;
    }
	.outer{
		width : 900px;
		background-color : lightpink;
		color : white;
		margin : auto;
		margin-top : 20px;
	}
	
	.login-area a{
		text-decoration : none;
		font-size : 14px;
		color : black;
	}
	
	.nav-area, #footer{
		background-color : lightpink;
		height : 60px;
		color : white;
	}

    #footer{
	background-color : lightpink;
	height : 60px;
	color : white;
        line-height: 60px;
        padding-right : 20px;
        font-size: 17px;
        text-align:right;
        font-weight: 600;
    }
	
	.menu{
        
		display : table-cell;
		width : 250px;
		height : 60px;
		font-size : 20px;
		font-weight : bold;
		vertical-align : middle;
	}
	
	.menu:hover{
		cursor : pointer;
		color : lightgrey;
	}
    form{
        width : 600px;
    }
    #sakura{
        background-image:url('https://www.crossroadfukuoka.jp/storage/special_features/38/responsive_images/q0hE9tjduBiHqz9D4hlPG9Rx4qnsyGjp3aFupoG1__1673_1115.jpg');
        width:90%; 
        height:600px; 
        margin : 20px 0px;
        background-size: cover;
        float : left;
    }

    

    #sakura2{
        background-image:url('https://www.gotokyo.org/kr/story/guide/hanami-guide/images/sg009_1376_1.jpg');
        width:90%; 
        height:600px; 
        margin : 20px 0px;
        float : right;
        background-size: cover;
    }



    .scroll_image {
        opacity:0;
        margin-bottom:-300px;
        max-width:100%;
    }

</style>
</head>
<body>

    <div class="nav-area" align="center">
		<div class="menu">HOME</div>	
		<div class="menu">공지사항</div>
		<div class="menu" onclick="location.href='list.board?page=1'">게시판</div>
		<div class="menu">ETC</div>
	</div>
		
	<br>
	
	<div class="login-area" align="right">
		<c:choose>
			<c:when test="${ empty sessionScope.loginUser }">
		        <div class="container" style="float:right;">
		            <form action="login.member" method="post">
		                <div class="row">
		                    <div class="col">
		                        <label>아이디</label>
		                        <input type="text" name="userId" class="form-control" required>
		                    </div>
		                    <div class="col">
		                        <label>비밀번호</label>
		                        <input type="password" class="form-control" name="userPwd" required>
		                    </div>
		
		                </div>
		                <div class="row">
		                    <div class="col">
		                        <br>
		                        <button type="submit" class="btn btn-block btn-secondary">로그인</button>
		                        <a href="enrollForm.member">회원가입</a>
		                    </div>
		                </div>
		            </form>
		        </div>
	        <br clear="both">
	        <br><br>
        </c:when>
        
		<c:otherwise>
	        <div>
	            <table>
	                <tr>
	                    <td colspan="2">
	                        <h3>${ sessionScope.loginUser.userName }</h3>
	                    </td>
	                </tr>
	                <tr>
	                    <td><a href="#">마이페이지</a></td>
	                    <td><a href="#">로그아웃</a></td>
	                </tr>
	            </table>
	        </div>
        	<br clear="both">
        </c:otherwise>
     </c:choose>
     
	<jsp:include page="content.jsp" />
</body>
</html>