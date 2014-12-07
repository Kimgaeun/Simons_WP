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
		<div class="alert alert-danger">
			<c:out value="${error}" />

			<c:if test="${errorMsgs != null || errorMsgs.size() > 0 }">
				<h3>Errors:</h3>
				<ul>
					<c:forEach var="msg" items="${errorMsgs}">
						<li>${msg}</li>
					</c:forEach>
				</ul>
			</c:if>
		</div>
	</div>
</body>
</html>
