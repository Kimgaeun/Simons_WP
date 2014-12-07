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
				<h1>개인정보 수정</h1>
			</div>
			<hr />
			<div class="user-content">
				<form class="form-horizontal" action="user?op=update" method="POST">

					<fieldset>
						<input type="hidden" name="id" value="${user.id }" /> 
						<input type="hidden" name="email" value="${user.email }" /> 
						<div class="form-group">
							<label class="col-sm-2 control-label" for="pwd">비밀번호</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" name="pwd">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="pwd_confirm">확
								인</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" name="pwd_confirm">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="name">닉 네 임</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="name"
									value="${user.name }">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="phoneNum">전화번호</label>
							<div class="col-sm-7">
								<input type="text" class="form-control"
									placeholder="'-'없이 숫자만 입력해주세요." name="phoneNum"
									value="${user.phoneNum }">
							</div>
						</div>

						<div class="form-group local-center">
							<input type="submit" class="btn btn-default btn-primary"
								value="수정">
						</div>

					</fieldset>
				</form>
			</div>
		</div>
	</div>
</body>
</html>