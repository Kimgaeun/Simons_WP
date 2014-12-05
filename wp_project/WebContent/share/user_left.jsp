<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href='Main.jsp'><img src="./images/logo.png" width="150"></a>
	<ul>
		<li class='active has-sub'><a href='#'><span>회원정보</span></a>
			<ul>
				<li><a href='user_MyPage.jsp'><span>프로필</span></a>
				<li><a href='user_edit.jsp'><span>수정</span></a>
				<li class="last"><a href='user_mypost.jsp'><span>내가 쓴 글</span></a>
			</ul>
		<li><a href='user_favorite.jsp'><span>즐겨찾기</span></a>
		<li class='last'><a href='user_coupon.jsp'><span>쿠폰함</span></a>
	</ul>
</body>
</html>