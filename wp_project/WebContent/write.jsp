<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./share/link.jsp"></jsp:include>
<script>
	$(function() {
		$("#datepicker1").datepicker();
	});
</script>
<script>
	$(function() {
		$("#datepicker2").datepicker();
	});
</script>
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
				<h1>글 작성</h1>
			</div>
			<hr />
			<div class="user-content">
				<form class="form-horizontal" action="post" method="POST">
				
					<fieldset>
						<div class="form-group">
							<label class="col-sm-3 control-label">카테고리</label>
							<div class="col-sm-4">
								<select name="category" class="form-control" >
									<c:forEach var="categoryName" items="${user.categoryNames}">
										<option ${user.checkCategory(categoryName)}>${categoryName }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label" for="title">글 제 목</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="title">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label">세일기간</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" name="term"  id="datepicker1" >
								~<input type="text" class="form-control" name="term"  id="datepicker2">
							
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label" for="brand">브랜드</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="brand">
							</div>
						</div>
								
						<div class="form-group">
							<label class="col-sm-3 control-label" for="content">추가 내용</label>
							<div class="col-sm-9">
							<textarea class="form-control" rows="9"  id = "content"  name="content"  ></textarea>
							</div>
						</div>
												
						<div class="form-group">
							<button type="submit" class="btn btn-primary pull-right">작성</button>
							<button type="reset" class="btn btn-primary pull-right">다시쓰기</button>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</body>
</html>