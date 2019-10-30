<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>The bom</title>


<!-- css -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/res/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/res/css/template.css" />
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
								<li><a href="sp_main">홈<span class="sr-only">(current)</span></a></li>
								<li><a href="dailylog">방문 기록</a></li>
								<li class="active"><a href="blind">사각지대 신고</a></li>
								<li><a href="donate">직접 후원하기</a></li>
								<li><a href="mypage">마이페이지</a></li>
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
	<section id="portfolio" class="section archive page">
		<div class="container">
			<div class="row">
				<h3 style="color: gray">
					사각지대 신고하기
				</h3>
					
						<div class="col-md-4 col-sm-4 col-xs-12">
							<!-- Single Portfolio -->
							<div class="portfolio-single">
								<a href="images/portfolio/6.jpg" class="zoom">
									<div class="portfolio-head">
										<img src="images/portfolio/6.jpg" alt="" /> <i
											class="fa fa-search"></i>
									</div>
								</a>
								<div class="text">
									<h4>
										<a href="blind_detail">부천시 복지관</a>
									</h4>
									<p>후원자 신청</p>
								</div>
							</div>
							<!--/ End Portfolio -->
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<!-- Single Portfolio -->
							<div class="portfolio-single">
								<a href="images/portfolio/2.jpg" class="zoom">
									<div class="portfolio-head">
										<img src="images/portfolio/2.jpg" alt="" /> <i
											class="fa fa-search"></i>
									</div>
								</a>
								<div class="text">
									<h4>
										<a href="portfolio-single "></a>
									</h4>
									<p></p>
								</div>
							</div>
							<!--/ End Portfolio -->
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<!-- Single Portfolio -->
							<div class="portfolio-single">
								<a href="images/portfolio/3.jpg" class="zoom">
									<div class="portfolio-head">
										<img src="images/portfolio/3.jpg" alt="" /> <i
											class="fa fa-search"></i>
									</div>
								</a>
								<div class="text">
									<h4>
										<a href="portfolio-single "></a>
									</h4>
									<p></p>
								</div>
							</div>
							<!--/ End Portfolio -->
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<!-- Single Portfolio -->
							<div class="portfolio-single">
								<a href="images/portfolio/4.jpg" class="zoom">
									<div class="portfolio-head">
										<img src="images/portfolio/4.jpg" alt="" /> <i
											class="fa fa-search"></i>
									</div>
								</a>
								<div class="text">
									<h4>
										<a href="portfolio-single "></a>
									</h4>
									<p></p>
								</div>
							</div>
							<!--/ End Portfolio -->
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<!-- Single Portfolio -->
							<div class="portfolio-single">
								<a href="images/portfolio/5.jpg" class="zoom">
									<div class="portfolio-head">
										<img src="images/portfolio/5.jpg" alt="" /> <i
											class="fa fa-search"></i>
									</div>
								</a>
								<div class="text">
									<h4>
										<a href="portfolio-single "></a>
									</h4>
									<p></p>
								</div>
							</div>
							<!--/ End Portfolio -->
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<!-- Single Portfolio -->
							<div class="portfolio-single">
								<a href="images/portfolio/6.jpg" class="zoom">
									<div class="portfolio-head">
										<img src="images/portfolio/6.jpg" alt="" /> <i
											class="fa fa-search"></i>
									</div>
								</a>
								<div class="text">
									<h4>
										<a href="portfolio-single "></a>
									</h4>
									<p></p>
								</div>
							</div>
							<!--/ End Portfolio -->
						</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<!-- Start Pagination -->
					<ul class="pagination">
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
	</section>
	<!--/#nino-whatWeDo-->


	<!-- Footer
    ================================================== -->
	<footer id="footer"> </footer>
	<!--/#footer-->


	<!-- javascript -->

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/res/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/res/js/bootstrap.min.js"></script>


</body>
</html>