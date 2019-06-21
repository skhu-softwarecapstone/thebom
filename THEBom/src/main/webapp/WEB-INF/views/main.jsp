<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- tag library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>The bom</title>

<!-- css -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/res/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/res/css/template.css" />

</head>

<body data-target="#nino-navbar" data-spy="scroll" class="main">

	<!-- Header
    ================================================== -->
	<!-- <header id="nino-header"> -->
	<div id="nino-headerInner">
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
					<a class="navbar-brand" href="homepage.html">THE BOM</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="nino-menuItem pull-right">
					<div class="collapse navbar-collapse pull-left"
						id="nino-navbar-collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="#nino-header">홈<span
									class="sr-only">(current)</span></a></li>
							<li><a href="#nino-story">후원자 등록</a></li>
							<li><a href="#nino-services">후원정보 확인</a></li>
							<li><a href="#nino-ourTeam">사각지대 신고</a></li>
							<li><a href="#nino-portfolio">일지 작성</a></li>
							<li><a href="#nino-latestBlog">마이페이지</a></li>
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

		<section id="nino-slider" class="carousel slide container"
			data-ride="carousel">

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<h2 class="nino-sectionHeading">
						<span class="nino-subHeading">BOM</span> Welcome <br>to The
						Bom
					</h2>
					<a href="#" class="nino-btn">LOGIN</a>
				</div>

			</div>

			<!-- Indicators -->

		</section>
	</div>

	<form method="post" action="login_processing" class="loginform">
		<div class="select">
			<input type="radio" name="socialworker" id="socialworker" value="socialworker"> 관리자
			 <input type="radio" name="sponsor" id="sponsor" value="sponsor">후원자 
			<input type="radio" name="senior" id="senior" value="senior"> 노인
		</div>
		<div class="form-group">
			<input type="text" class="form-control" name="loginId" id="id" placeholder="id">아이디
		</div>
		<div class="form-group">
			<input type="password" class="form-control" name="passwd" id="password" placeholder="password">비밀번호
		</div>
		<div class="checkbox">
			<input type="checkbox"> Remember me
		</div>
		<button type="submit" class="btn btn-default">로그인</button>
		<button type="submit" class="btn btn-default">sign up</button>		
	</form>
	
	<c:if test="${param.error!=null}">
		<div class="mt5">로그인 실패</div>
	</c:if>

	<!-- javascript -->
	<script type="text/javascript" src="res/js/jquery.min.js"></script>
	<script type="text/javascript" src="res/js/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="res/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="res/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="res/js/jquery.hoverdir.js"></script>
	<script type="text/javascript" src="res/js/modernizr.custom.97074.js"></script>
	<script type="text/javascript"
		src="res/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="res/js/unslider-min.js"></script>
	<script type="text/javascript" src="res/js/template.js"></script>

	<script>
		
   </script>

</body>
</html>
