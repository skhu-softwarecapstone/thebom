<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- tag library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>The Bom</title>


<!-- css -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/res/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/res/css/template.css" />

<!-- javascript -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/res/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/res/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/res/js/common.js"></script>

<style>
.wrapper {
	display: flex;
	width: 100%;
	align-items: stretch;
}

a, a:hover, a:focus {
	color: inherit;
	text-decoration: none;
	transition: all 0.3s;
}

#sidebar {
	/* don't forget to add all the previously mentioned styles here too */
	background:#F5DA81;
	color: #fff;
	transition: all 0.3s;
}

#sidebar .sidebar-header {
	padding: 20px;
	background:#FACC2E;
}

#sidebar ul.components {
	padding: 20px 0;
}

#sidebar ul p {
	color: #fff;
	padding: 10px;
}

#sidebar ul li a {
	padding: 10px;
	font-size: 1.1em;
	display: block;
}

#sidebar ul li a:hover {
	color: black;
	background: #fff;
}

#sidebar ul li.active>a, a[aria-expanded="true"] {
	color: #fff;
	background: #FFBF00;
}

ul ul a {
	font-size: 0.9em !important;
	padding-left: 30px !important;
	background: #F5DA81;
}

@media ( max-width : 768px) {
	#sidebar {
		margin-left: -250px;
	}
	#sidebar.active {
		margin-left: 0;
	}
}
</style>
</head>

<body data-target="#nino-navbar" data-spy="scroll" class="main">
	<!-- What We Do
    ================================================== -->
	<nav id="nino-navbar" class="navbar navbar-default" role="navigation">
		<div class="container">

			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#nino-navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/main">THE BOM</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="nino-menuItem pull-right">
				<div class="collapse navbar-collapse pull-left"
					id="nino-navbar-collapse">
	
					<ul class="nav navbar-nav">
						<li><a href="/main">홈<span class="sr-only">(current)</span></a></li>
						<li><a href="/register">후원자 등록</a></li>
						<li><a href="/matchinfo">후원정보 확인</a></li>
						<li><a href="/blind">사각지대 신고</a></li>
						<li><a href="/createdailylog">일지 작성</a></li>
						<li class="active"><a href="/mypage">마이페이지</a></li>
					</ul>
					
				</div>
				<!-- /.navbar-collapse -->
				<ul class="nino-iconsGroup nav navbar-nav">
					<li><a href="#" class="nino-search"><i
							class="mdi mdi-magnify nino-icon"></i></a></li>
				</ul>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div class="bar">
		<div class="wrapper">
			<!-- Sidebar -->
			<nav id="sidebar">
				<div class="sidebar-header">
					<h3 style="color: white">마이페이지</h3>
				</div>

				<!-- <ul class="list-unstyled components">
					<li class="active"><a href="#homeSubmenu"
						data-toggle="collapse" aria-expanded="false"
						class="dropdown-toggle">Home</a>
						<ul class="collapse list-unstyled" id="homeSubmenu">
							<li><a href="#">Home 1</a></li>
							<li><a href="#">Home 2</a></li>
							<li><a href="#">Home 3</a></li>
						</ul></li>
				 -->
				<ul>
					<li class="active"><a href="/managedailylog">나의 일지 관리</a></li>	
					<li><a href="/infoedit">개인정보 수정</a></li>
				</ul>
			</nav>

		</div>
	</div>
	<!--/#nino-whatWeDo-->


	<!-- Footer
    ================================================== -->
	<!-- 
	<footer id="footer">
		<div class="container">
			<div class="nino-copyright">
				Copyright &copy; 2019 <a target="_blank">The bom</a>. All Rights
				Reserved. <br /> MoGo free PSD template by Laaqiq
			</div>
		</div>
	</footer>
	 -->
	<!--/#footer-->


	<script>
		$(document).ready(function() {

			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
			});

		});
	</script>





</body>
</html>