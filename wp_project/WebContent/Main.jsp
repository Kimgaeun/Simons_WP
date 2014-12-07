<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/styles.css">
<script src="js/jquery-latest.min.js" type="text/javascript"></script>
<script src="script.js"></script>
<title>당신은 더.호.아</title>
<link rel="SHORTCUT ICON" href="./images/titlelogo.png" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/base.css" rel="stylesheet">
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
	$('.carousel').carousel({
		interval : 3000
	})
</script>
</head>

<body>
	<div id='header'>
		<jsp:include page="./share/header.jsp">
			<jsp:param name="sessionID" value="${sessionScope.id}" />
			<jsp:param name="admin" value="${sessionScope.ad }" />
		</jsp:include>
	</div>

	<a href='Main.jsp'><img class="center-block"
		src="./images/logo.png" width="200"></a>
	<br>

	<div id='cssmenu'>
		<ul>
			<li class='has-sub'><a href='#'><span>의류</span></a>
				<ul>
					<li class='has-sub'><a href='#'><span>남성의류</span></a></li>
					<li class='has-sub'><a href='#'><span>여성의류</span></a></li>
					<li class='has-sub'><a href='#'><span>아동의류</span></a></li>
					<li class='has-sub'><a href='#'><span>스포츠/아웃도어</span></a></li>
					<li class='has-sub'><a href='#'><span>패션잡화</span></a></li>
				</ul></li>
			<li class='has-sub'><a href='#'><span>신발</span></a>
				<ul>
					<li class='has-sub'><a href='#'><span>스니커즈</span></a></li>
					<li class='has-sub'><a href='#'><span>런닝화</span></a></li>
					<li class='has-sub'><a href='#'><span>드레스.캐주얼</span></a></li>
					<li class='has-sub'><a href='#'><span>부츠</span></a></li>
					<li class='has-sub'><a href='#'><span>샌들</span></a></li>
				</ul></li>
			<li class='has-sub'><a href='#'><span>뷰티</span></a>
				<ul>
					<li class='has-sub'><a href='#'><span>for men</span></a></li>
					<li class='has-sub'><a href='IntoMenu.jsp'><span>for
								women</span></a></li>
					<li class='has-sub'><a href='#'><span>for teenagers</span></a></li>
					<li class='has-sub'><a href='#'><span>for baby</span></a></li>
				</ul></li>
			<li class='has-sub'><a href='#'><span>음식</span></a>
				<ul>
					<li class='has-sub'><a href='#'><span>한식</span></a></li>
					<li class='has-sub'><a href='#'><span>중식</span></a></li>
					<li class='has-sub'><a href='#'><span>일식</span></a></li>
					<li class='has-sub'><a href='#'><span>양식</span></a></li>
					<li class='has-sub'><a href='#'><span>기타</span></a></li>
				</ul></li>
			<li class='has-sub'><a href='#'><span>문화</span></a>
				<ul>
					<li class='has-sub'><a href='#'><span>놀이동산</span></a></li>
					<li class='has-sub'><a href='#'><span>여름철 놀이시설</span></a></li>
					<li class='has-sub'><a href='#'><span>겨울철 놀이시설</span></a></li>
					<li class='has-sub'><a href='#'><span>영화<br>뮤지컬,연극
						</span></a></li>
					<li class='has-sub'><a href='#'><span>전시회</span></a></li>
					<li class='has-sub'><a href='#'><span>여행</span></a></li>
				</ul></li>
			<li class="navbar-form navbar-right">
				<input type="text" class="form-control col-lg-8"
					placeholder="Search">
				<div class="btn btn-primary" onclick='search()'>Search</div>
			</li>

		</ul>
	</div>

	<div id="carousel" class="carousel slide" data-ride="carousel">

		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel" data-slide-to="0" class="active"></li>
			<li data-target="#carousel" data-slide-to="1"></li>
			<li data-target="#carousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="./images/00.PNG">
			</div>

			<div class="item">
				<img src="./images/01.PNG">
			</div>

			<div class="item">
				<img src="./images/02.PNG">
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel" role="button`"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span>
			<span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<div id="body">
		<div id="content"></div>
	</div>
	<div id="foot">Created by. Simon's WebProject</div>

</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</html>