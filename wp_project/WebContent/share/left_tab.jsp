<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<a href='Main.jsp'><img src="./images/logo.png" width="150"></a>
<c:choose>
	<c:when test="${sessionScope.ad == 1}">
		<jsp:include page="admin_control.jsp"></jsp:include>
	</c:when>
	<c:when test="${!empty sessionScope.id}">
		<jsp:include page="user_control.jsp"></jsp:include>
	</c:when>
</c:choose>