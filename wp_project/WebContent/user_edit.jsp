<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/styles_sidenav.css">
<script src="js/jquery-latest.min.js" type="text/javascript"></script>
<script src="js/script_sidenav.js"></script>
<title>당신은 더.호.아</title>
<link rel="SHORTCUT ICON" href="./images/titlelogo.png" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/base.css" rel="stylesheet">
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>

<body>
	<div id='header'>
		<a href='Login.jsp'>로그인</a> | <a href='Join.jsp'>회원가입</a>
	</div>

	<a href='Main.jsp'><img class="pull-left" src="./images/logo.png"
		width="150"></a>
	<br>
	<div class="container">
		<div class="user-head">
			<h1>개인정보 수정</h1>
		</div>
		<hr/>
		<div class="user-content">
				<form class="form-horizontal" action="user" method="POST">
				
		<fieldset>
			<div class="form-group">
				<label class="col-sm-3 control-label" for="nick">닉 네 임</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="nick">
					</div>
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label" for="phoneNum">전화번호</label>
					<div class="col-sm-7">
						<input type="phoneNum" class="form-control" name="phoneNum">
					</div>
			</div>
				
			<div class="form-group">
				<label class="col-sm-3 control-label" for="pwd">비밀번호</label>
					<div class="col-sm-7">
						<input type="password" class="form-control" name="pwd">
					</div>
			</div>
				
			<div class="form-group">
				<label class="col-sm-3 control-label" for="pwd_confirm">확　　인</label>
					<div class="col-sm-7">
						<input type="password" class="form-control" name="pwd_confirm">
					</div>
			</div>
			
				<button type="reset" class="btn btn-primary pull-right">취소</button>
				<button type="submit" class="btn btn-primary pull-right">저장</button>
				
				</fieldset>
		</div>
	
</body>
</html>