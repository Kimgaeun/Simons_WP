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
			<h1>회원관리</h1>
		</div>
		<hr />
		<div class="admin-content">
			<div class="col-md-12 page-info">
				<div class="pull-left">
					Total <b>${users.numItems }</b> users
				</div>
				<div class="pull-right">
					<b>${users.page }</b> page / total <b>${users.numPages }</b> pages
				</div>
			</div>
			<table class="table table-bordered table-stripped">
				<thead>
					<tr>
						<th>ID</th>
						<th>PWD</th>
						<th>Name</th>
						<th>PhoneNum</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${users.list }">
						<tr>
							<td><c:out value="${user.email}" /></td>
							<td><c:out value="${user.pwd}" /></td>
							<td><c:out value="${user.name}" /></td>
							<td><c:out value="${user.phoneNum}" /></td>
							<td><a href="admin?op=user_update&id=${user.id}"
								class="btn btn-default btn-xs">수정</a> <a href="#"
								class="btn btn-default btn-xs btn-primary" data-action="delete"
								data-id="${user.id}">삭제</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<c:out value="${op}" />
			<div>
				<jsp:include page="page.jsp">
					<jsp:param name="currentPage" value="${users.page}" />
					<jsp:param name="url" value="admin" />
					<jsp:param name="startPage" value="${users.startPageNo}" />
					<jsp:param name="endPage" value="${users.endPageNo}" />
					<jsp:param name="numPages" value="${users.numPages}" />
				</jsp:include>
			</div>
			<div class="form-group"></div>
		</div>
	</div>
</body>
<script>
	$(function() {
		$("a[data-action='delete']").click(function() {
			if (confirm("정말로 삭제하시겠습니까?")) {
				location = 'user?op=delete&&id=' + $(this).attr('data-id');
			}
			return false;
		});
	});
</script>
</html>