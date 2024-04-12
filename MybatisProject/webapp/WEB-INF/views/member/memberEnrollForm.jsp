<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>

    .outer{
        width : 1200px;
        margin: auto;
    }
    td{
        line-height: 40px;
    }

</style>
</head>
<body>
	<jsp:include page="../main.jsp" />
	<div class="outer">
		<br>
		<h1 align="center">회원가입</h1>
		
		<form action="insert.member" method="post">
			
			<table align="center" class="table">
				<tr>
					<td>* ID</td>
					<td><input type="text" name="userId" class="form-control" required></td>
				</tr>
				<tr>
					<td>* PWD</td>
					<td><input type="password" name="userPwd" class="form-control" required></td>
				</tr>
				<tr>
					<td>* NAME</td>
					<td><input type="text" name="userName" class="form-control" required></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;EMAIL</td>
					<td><input type="email" class="form-control" name="email"></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;BIRTHDAY</td>
					<td><input type="text" name="birthday" class="form-control" placeholder="생년월일(6자리)"></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;GENDER</td>
					<td align="center">
						<input type="radio" name="gender" value="M" checked> 남
						<input type="radio" name="gender" value="F"> 여
					</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;PHONE</td>
					<td><input type="text" name="phone" class="form-control" placeholder="-포함"></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;ADDRESS</td>
					<td><input type="text" name="address" class="form-control"></td>
				</tr>
			</table>
			<br>
			<div align="center">
				<button type="reset" class="btn btn-secondary">초기화</button>
				<button type="submit" class="btn btn-primary">회원가입</button>
			</div>
		
		</form>
		<br><br>
	</div>

<br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>