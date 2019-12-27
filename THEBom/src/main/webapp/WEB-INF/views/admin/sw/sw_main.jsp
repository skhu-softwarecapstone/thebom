<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- tag library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
System.out.println("22223333ffff.jsp");
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
	layout:decorate="~{default}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>The bom</title>


<!-- css -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/res/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/res/css/template.css" />
</head>
<body data-target="#nino-navbar" data-spy="scroll">

	<!-- Header
    ================================================== -->
	<header id="nino-header">
		<div id="nino-headerInner"
			style="background-image: url(../images/main.jpg); height: 600px;">

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
						<a class="navbar-brand" href="homepage ">the bom</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right">
						<div class="collapse navbar-collapse pull-left"
							id="nino-navbar-collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="sw_main">홈<span
										class="sr-only">(current)</span></a></li>
								<li><a href="notice">공지사항</a></li>
								<li><a href="circle">써클조회</a></li>
								<li><a href="seniorList">노인조회</a></li>
								<li><a href="sponsor">후원자조회</a></li>
								<li><a href="match">후원매치현황</a></li>
								<li><a href="blind">사각지대 관리</a></li>
								<li><a href="mypage">마이페이지</a></li>
								<li><a href="<c:url value='/logout'/>">Logout</a></li>
								<li><a href="" style="color:pink;">${user.fullname }</a></li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->
						<ul class="nino-iconsGroup nav navbar-nav">
							<li><a href="#"><i
									class="mdi mdi-cart-outline nino-icon"></i></a></li>
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

						<div class="item">
							<h2 class="nino-sectionHeading">
								<span class="nino-subHeading">the bom</span> 사회복지사 페이지<br>
							</h2>
						</div>

					</div>
				</div>
			</section>
		</div>
	</header>
	<!--/#header-->


	<!-- Search Form - Display when click magnify icon in menu
    ================================================== -->
	<form action="" id="nino-searchForm">
		<input type="text" placeholder="Search..."
			class="form-control nino-searchInput"> <i
			class="mdi mdi-close nino-close"></i>
	</form>
	<!--/#nino-searchForm-->

	<!-- Scroll to top ================================================== -->
	<a href="#" id="nino-scrollToTop">Go to Top</a>

	<!-- What We Do  ================================================== -->
	<section id="nino-whatWeDo">
		<div class="container">
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-6">
						<div class="text-center">
							<!-- Info Main -->
							<div class="section-title left">
								<h2 class="nino-sectionHeading">공지사항</h2>
							</div>
							<div class="info">
								<ul class="info-list">
									<c:forEach var="notice" items="${ notices }">
										<li><i class="fa fa-check"></i>${notice.title}</li>
									</c:forEach>
								</ul>
							</div>
							<!--/ End Info Main -->

						</div>                         
					</div>
					<div class="col-md-6">
						<div class="text-center">
							<!-- Info Main -->
							<div class="section-title left">
								<h2 class="nino-sectionHeading">마이페이지</h2>
							</div>
							<div class="info">
								<ul class="info-list">
									<li>${currentUser.fullname}</li>
									<li>${currentUser.email}</li>
									<li>소속</li>
								</ul>
							</div>
							<!--/ End Info Main -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/#nino-whatWeDo-->
	<!-- javascript -->


	<script type="text/javascript"
		src="<%=request.getContextPath()%>/res/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/res/js/bootstrap.min.js"></script>

</body>
</html>