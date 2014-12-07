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
			<jsp:param name="admin" value="${sessionScope.ad }"/>
		</jsp:include>
	</div>

	<a href='Main.jsp'><img class="center-block"
		src="./images/logo.png" width="200"></a>
	<br>

	<div id='cssmenu'>
		<ul>
			<li class='has-sub'><a href='#'><span>의류</span></a>
				<ul>
					<li class='has-sub'><a href='IntoMenu.jsp'><span>남성의류</span></a></li>
					<li class='has-sub'><a href='IntoMenu.jsp'><span>여성의류</span></a></li>
					<li class='has-sub'><a href='IntoMenu.jsp'><span>아동의류</span></a></li>
					<li class='has-sub'><a href='IntoMenu.jsp'><span>스포츠/아웃도어</span></a></li>
					<li class='has-sub'><a href='IntoMenu.jsp'><span>패션잡화</span></a></li>
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
					<li class='has-sub'><a href='#'><span>for women</span></a></li>
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

			<form class="navbar-form navbar-right">
				<input type="text" class="form-control col-lg-8"
					placeholder="Search">
				<button class="btn btn-primary" a href='#'>Search</button>
			</form>

		</ul>
	</div>

	<br>
	<div class="row">
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<a href="IntoArticle.jsp"><img src="./images/missha12.jpg"
					width=200px; alt="..."></a>
				<div class="caption">
					<h3>MISSHA</h3>
					<p>미샤</p>
				</div>
			</div>
		</div>

		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<a href="IntoArticle.jsp"><img src="./images/oliveyoung12.jpg"
					width=200px; alt="..."></a>
				<div class="caption">
					<h3>OliveYoung</h3>
					<p>올리브영</p>
				</div>
			</div>
		</div>

		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<a href="IntoArticle.jsp"><img src="./images/apieu_item.jpg"
					width=200px; alt="..."></a>
				<div class="caption">
					<h3>Apieu</h3>
					<p>어퓨</p>
				</div>
			</div>
		</div>

		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<a href="IntoArticle.jsp"><img src="./images/thefaceshop12.jpg"
					width=200px; alt="..."></a>
				<div class="caption">
					<h3>THE FACE SHOP</h3>
					<p>더페이스샵</p>
				</div>
			</div>
		</div>
	</div>


	<div class="row">
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<a href="IntoArticle.jsp"><img src="./images/sample.PNG"
					width=200px; alt="..."></a>
				<div class="caption">
					<h3>Adventure Time</h3>
					<p>what time is it?</p>
				</div>
			</div>
		</div>

		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<a href="IntoArticle.jsp"><img src="./images/sample.PNG"
					width=200px; alt="..."></a>
				<div class="caption">
					<h3>Adventure Time</h3>
					<p>what time is it?</p>
				</div>
			</div>
		</div>

		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<a href="IntoArticle.jsp"><img src="./images/sample.PNG"
					width=200px; alt="..."></a>
				<div class="caption">
					<h3>Adventure Time</h3>
					<p>what time is it?</p>
				</div>
			</div>
		</div>

		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<a href="IntoArticle.jsp"><img src="./images/sample.PNG"
					width=200px; alt="..."></a>
				<div class="caption">
					<h3>Adventure Time</h3>
					<p>what time is it?</p>
				</div>
			</div>
		</div>
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