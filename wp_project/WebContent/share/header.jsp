<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="sessionID" value="${param.sessionID}" />
<c:set var="admin" value="${param.admin}" />
<c:choose>
	<c:when test="${empty sessionID}">
		<a href='login'>로그인</a> | <a href='user?op=signup'>회원가입</a>
	</c:when>
	<c:when test="${admin == 1 }">
		<a href='admin'>관리자</a> | <a href='logout'>로그아웃</a>
	</c:when>
	<c:otherwise>
		<a href='user'>마이페이지</a> | <a href='logout'>로그아웃</a>
	</c:otherwise>
</c:choose>