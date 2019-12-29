<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- tag library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
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
	<header id="nino-header" style="background-color: #fce38a";>
		<div id="nino-headerInner">
			<nav id="nino-navbar" class="navbar navbar-default" role="navigation">
				<div class="container header">
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right">
						<div class="collapse navbar-collapse pull-left"
							id="nino-navbar-collapse">
							<ul class="nav navbar-nav">
								<li><a href="sw_main">홈<span class="sr-only">(current)</span></a></li>
								<li><a href="notice">공지사항</a></li>
								<li class="active"><a href="circle">써클조회</a></li>
								<li><a href="seniorList ">노인조회</a></li>
								<li><a href="sponsor ">후원자조회</a></li>
								<li><a href="match">후원매치현황</a></li>
								<li><a href="blind">사각지대 관리</a></li>
								<li><a href="mypage">마이페이지</a></li>
								<li><a href="" style="color: pink;">${user.fullname }</a></li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</div>
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
	</header>
	<!--/#header-->


	<!-- Start Project -->
	<!-- Start Project -->
	<section id="portfolio" class="section archive page">
		<div class="container">
			<div class="row">
				<h2 class="nino-sectionHeading">써클 관리</h2>





				<div class="sectionContent">
					<div class="row nino-hoverEffect">
						<!--써클 노인1-->
						<div class="col-md-4 col-md-offset-4 col-sm-offset-4 col-sm-4">
							<div data-url="circle_detail?cNo=${ circle.cNo }"
								class="panel-group" id="accordion" role="tablist"
								aria-multiselectable="true">
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="mdi mdi-camera nino-icon"></i> ${ circle.cNo }
											</a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body">${ circle.introduce }</div>
									</div>
								</div>
							</div>
						</div>


						<!--써클 노인2-->
						<div class="col-md-4 col-md-offset-1 col-sm-offset-1 col-sm-4">
							<div data-url="circle_detail?cNo=${ circle.cNo }"
								class="panel-group" id="accordion" role="tablist"
								aria-multiselectable="true">
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="mdi mdi-camera nino-icon"></i> ${ circle.cNo }
											</a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body">${ circle.introduce }</div>
									</div>
								</div>
							</div>
						</div>
						
						
						<!--써클 노인3-->
						<div class="col-md-4 col-md-offset-2 col-sm-offset-2 col-sm-4">
							<div data-url="circle_detail?cNo=${ circle.cNo }"
								class="panel-group" id="accordion" role="tablist"
								aria-multiselectable="true">
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="mdi mdi-camera nino-icon"></i> ${ circle.cNo }
											</a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body">${ circle.introduce }</div>
									</div>
								</div>
							</div>
						</div>


						<!--써클 노인4-->
						<div class="col-md-4 col-md-offset-4 col-sm-offset-4 col-sm-4">
							<div data-url="circle_detail?cNo=${ circle.cNo }"
								class="panel-group" id="accordion" role="tablist"
								aria-multiselectable="true">
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="mdi mdi-camera nino-icon"></i> ${ circle.cNo }
											</a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body">${ circle.introduce }</div>
									</div>
								</div>
							</div>
						</div>


						<!--써클-->
					</div>
				</div>







			</div>

			<!--/ End blog -->
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<!-- Start Pagination -->
					<ul class="pagination" style="margin: 50px 0 0 0;">
						<li class="prev"><a href="#"><span
								class="fa fa-angle-left"></span></a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li class="next"><a href="#"><span
								class="fa fa-angle-right"></span></a></li>
					</ul>
					<!--/ End Pagination -->
				</div>
			</div>
		</div>
	</section>
	<!--/ End Project -->


	<!-- Footer
    ================================================== -->
	<footer id="footer"> </footer>
	<!--/#footer-->


	<!-- javascript -->

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/res/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/res/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/res/js/common.js"></script>
</body>
</html>