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
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">


</head>
<body>
	<div id='header'>
		<a href='Login.jsp'>로그인</a> | <a href='Join.jsp'>회원가입</a>
	</div>

	<a href='Main.jsp'><img class="pull-left" src="./images/logo.png"
		width="150"></a>
	<br>

	<div class="container">
		<div>
			<div class="user-head">
				<h1>로그인</h1>
			</div>
			<hr />
			<div class="user-content">
				<form class="form-horizontal" action="user" method="POST">
				
					<fieldset>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="id">아 이 디</label>
							<div class="col-sm-7" >
								<input type="id" class="form-control" name="id">
							</div>
						</div>
					
						<div class="form-group">
							<label class="col-sm-3 control-label" for="pwd">비밀번호</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" name="pwd">
							</div>
						</div>
			
							<input type="reset"class="btn btn-default btn-primary pull-right" value="취소">
							<input type="button" class="btn btn-default btn-primary pull-right" value="회원가입" onclick="location.href='signup.jsp'">
							<input type="submit" class="btn btn-default btn-primary pull-right" value="로그인">
					
						
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</body>
</html>