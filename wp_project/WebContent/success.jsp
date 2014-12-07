<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<div class="alert alert-success alert-content">${msg}</div>
		<div>
			<a href="index.jsp" class="btn btn-default">처음으로</a>
		</div>
	</div>
</body>
</html>