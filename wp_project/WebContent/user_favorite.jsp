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
		<div class="user-head">
			<h1>즐겨찾기</h1>
		</div>
		<hr />
		<div class="user-content">
		
			<form role="form">
			
				<div class="form-group">
						<label class="col-sm-3 control-label" for="id">닉 네 임</label>
							<div class="col-sm-7" >
							<input type="text" class="form-control" name="name">
							</div>
				</div>
				<div class="form-group">
					<label for="phoneNum">전화번호 </label> <input type="text"
						class="form-control" name="phoneNum">
				</div>
				<div class="form-group">
					<label for="pwd">비밀번호</label> <input type="password"
						class="form-control" name="pwd">
				</div>
				<div class="form-group">
					<label for="pwd_confirm">확 인</label> <input type="password"
						class="form-control" name="pwd_confirm">
				</div>
				<button type="submit" class="btn btn-primary pull-right">저장</button>
			</form>
		</div>
	</div>
</body>
</html>