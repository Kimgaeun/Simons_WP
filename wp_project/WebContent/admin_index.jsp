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
	<div class='pull-left'>
		<jsp:include page="./share/left_tab.jsp"></jsp:include>
	</div>

	<div class="container">
		<div class="admin-head">
			<h1>관리자 페이지</h1>
		</div>
		<hr />
	</div>
</body>
</html>