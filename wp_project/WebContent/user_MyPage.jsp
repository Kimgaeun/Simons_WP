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
			<jsp:param name="admin" value="${sessionScope.ad}" />
		</jsp:include>
	</div>
	<div class="pull-left">
		<jsp:include page="./share/left_tab.jsp"></jsp:include>
	</div>
	
	<div class="container">
		<div class="user-head">
			<h1>
				<c:out value="${sessionScope.id }"></c:out>
				<c:out value="${user.name }"></c:out>
				회원님
			</h1>
		</div>
		<hr />
		<div class="pull-left">
			<h3>
				계 　　정 :
				<c:out value="${user.email }"></c:out>
			</h3>
			<p />
			<h3>
				전화번호 :
				<c:out value="${user.phoneNum }"></c:out>
			</h3>
		</div>
	</div>
</body>
</html>