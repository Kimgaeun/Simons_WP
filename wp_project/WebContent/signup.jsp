<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./share/link.jsp"></jsp:include>
</head>
<body>
	<div id='header'>
		<jsp:include page="./share/header.jsp">
			<jsp:param name="sessionID" value="${sessionScope.id}" />
		</jsp:include>
	</div>
	<div class="pull-left">
		<jsp:include page="./share/user_left.jsp"></jsp:include>
	</div>
	
	<div class="container">
		<div>
			<div class="user-head">
				<h1>회원가입</h1>
			</div>
			<hr />
			<div class="user-content">
				<form class="form-horizontal" action="user" method="POST">
					<fieldset>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="email">E -
								mail</label>
							<div class="col-sm-7">
								<input type="email" class="form-control email"
									placeholder="hong@abc.com" name="email">
							</div>
							<div class="col-sm-2 control checker">
								<input type="button" class="btn btn-default btn-primary emailCheck"
									value="중복확인">
							</div>
							<div class="checkResult1"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="pwd">비밀번호</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" name="pwd">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="pwd_confirm">확 인</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" name="pwd_confirm">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="name">닉 네 임</label>
							<div class="col-sm-7">
								<input type="text" class="form-control name" name="name">
							</div>
							<div class="col-sm-2 control checker">
								<input type="button" class="btn btn-default btn-primary nameCheck"
									value="중복확인">
							</div>
							<div class="checkResult2"></div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="phoneNum">전화번호</label>
							<div class="col-sm-7">
								<input type="text" class="form-control"
									placeholder="'-'없이 숫자만 입력해주세요." name="phoneNum">
							</div>
						</div>

						<div class="form-group local-center">
							<input type="submit" class="btn btn-default btn-primary"
								value="가입">
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(function() {
		$('.emailCheck').click(function() {
			$.post('CheckServlet', {op: "email", val: $('.email').val()}, function(data) {
				$('.checkResult1').html(data).show();
			});
		});
		
		$('.nameCheck').click(function() {
			$.post('CheckServlet', {op: "name", val: $('.name').val()}, function(data) {
				$('.checkResult2').html(data).show();
			});
		});
	});
</script>
</html>