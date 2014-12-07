<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/styles.css">
<script src="js/jquery-latest.min.js" type="text/javascript"></script>
<script src="script.js"></script>
<title>당신은 더.호.아</title>
<link rel="SHORTCUT ICON" href="./images/titlelogo.png" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/base.css" rel="stylesheet">
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
	$('.carousel').carousel({
		interval : 3000
	})
</script>
<body>
	<div id='header'>
		<jsp:include page="./share/header.jsp">
			<jsp:param name="sessionID" value="${sessionScope.id}" />
			<jsp:param name="admin" value="${sessionScope.ad }" />
		</jsp:include>
	</div>
	<a href='Main.jsp'><img class="pull-left" src="./images/logo.png"
		width="150"></a>
	<br>

	<a href='IntoMenu.jsp'>
		<button type="button" class="btn btn-default btn-xs">
			<span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span>
			목록으로
		</button>
	</a>

	<div class="panel panel-primary">
		<div class="panel-heading">OliveYoung</div>
		<div class="panel-body">
			<a href="http://www.oliveyoungshop.com/index.jsp"><img
				src="./images/oliveyoung_item.jpg"></a>
			<h3>올리브영</h3>
			<!-- 제목 -->
			<p>세일 품목</p>
			<!-- 세일 품목 -->
			<p>세일 기간</p>
			<!-- 세일 기간 -->
		</div>
	</div>

	<div id="body">
		<div id="content"></div>
	</div>
	<div id="foot">Created by. Simon's WebProject</div>
</body>
</html>