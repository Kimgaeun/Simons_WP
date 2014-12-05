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

<script>
	$(function() {
		$("#datepicker1").datepicker();
	});
</script>
<script>
	$(function() {
		$("#datepicker2").datepicker();
	});
</script>
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
				<h1>글 작성</h1>
			</div>
			<hr />
			<div class="user-content">
				<form class="form-horizontal" action="user" method="POST">
				
					<fieldset>
						<div class="form-group">
							<label class="col-sm-3 control-label">카테고리</label>
							<div class="col-sm-4">
								<select name="category" class="form-control" >
									<c:forEach var="categoryName" items="${user.categoryNames}">
										<option ${user.checkCategory(categoryName)}>${categoryName }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label" for="title">글　제목</label>
							<div class="col-sm-9">
								<input type="title" class="form-control" name="title">
							</div>
						</div>
						
							<div class="form-group">
							<label class="col-sm-3 control-label" for="item">세일품목</label>
							<div class="col-sm-9">
								<input type="item" class="form-control" name="item">
								품목이 여러가지 일 경우 ',(콤마)'로 구분하여 작성해주세요!
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label">세일기간</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" name="term"  id="datepicker1" >
								~<input type="text" class="form-control" name="term"  id="datepicker2">
							
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label" for="plus">추가 할인 및　　 할인 조건</label>
							<div class="col-sm-9">
								<input type="plus" class="form-control" name="plus">
							</div>
						</div>
						
								
						<div class="form-group">
							<label class="col-sm-3 control-label" for="content">추가 내용</label>
							<div class="col-sm-9">
							<textarea class="form-control" rows="9"  id = "content"  name="content"  ></textarea>
							</div>
						</div>

						
						<p>
							<button type="reset" class="btn btn-primary pull-right">취소</button>
							<button type="submit" class="btn btn-primary pull-right">작성</button>
						</p>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</body>
</html>