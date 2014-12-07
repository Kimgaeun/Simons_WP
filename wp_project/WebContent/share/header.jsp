<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="sessionID" value="${param.sessionID}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${empty sessionID}">
			<a href='login'>로그인</a> | <a href='user?op=signup'>회원가입</a>
		</c:when>
		<c:otherwise>
			<a href='logout'>로그아웃</a>
		</c:otherwise>
	</c:choose>
</body>
</html>