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
			<jsp:param name="admin" value="${sessionScope.ad }"/>
		</jsp:include>
	</div>
	<div class='pull-left'>
		<jsp:include page="./share/left_tab.jsp"></jsp:include>
	</div>
	
	<div class="container">
		<div class="content-head">
			<h1>로그인</h1>
		</div>
		<hr />
		<div class="user-content">
			<form class="form-horizontal" action="login" method="POST">

				<fieldset>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="email">아 이 디</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="email">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label" for="pwd">비밀번호</label>
						<div class="col-sm-7">
							<input type="password" class="form-control" name="pwd">
						</div>
					</div>
					<div class="form-group local-center">
						<input type="submit" class="btn btn-default btn-primary"
							value="로그인"> <a href="user?op=signup"
							class="btn btn-primary">회원가입</a>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>