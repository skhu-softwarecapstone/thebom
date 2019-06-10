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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/res/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/res/css/template.css" />

</head>

<body data-target="#nino-navbar" data-spy="scroll" class="main">
     <nav id="nino-navbar" class="navbar navbar-default" role="navigation">
				<div class="container">

					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nino-navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="homepage.html">THE BOM</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right">
						<div class="collapse navbar-collapse pull-left" id="nino-navbar-collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="main">홈<span class="sr-only">(current)</span></a></li>
								<li><a href="register">후원자 등록</a></li>
								<li><a href="#nino-services">후원정보 확인</a></li>
								<li><a href="blind">사각지대 신고</a></li>
								<li><a href="#nino-portfolio">일지 작성</a></li>
								<li><a href="mypage">마이페이지</a></li>
							</ul>
						</div><!-- /.navbar-collapse -->
						<ul class="nino-iconsGroup nav navbar-nav">
							<li><a href="#" class="nino-search"><i class="mdi mdi-magnify nino-icon"></i></a></li>
						</ul>
					</div>
				</div><!-- /.container-fluid -->
			</nav>
	<!-- What We Do
    ================================================== -->
	<section id="nino-whatWeDo">
		<div class="container middle">
			<h2 class="nino-sectionHeading">
				방문후원자 상세페이지
			</h2>
			<p class="nino-sectionDesc">
			<div class="skill-main">
				<div class="sectionContent">
					<div class="fw" layout="row">
						<div class="col-md-4 col-sm-6 item seniorview">
							<div layout="row">
								<div>
									<h4 class="nino-serviceTitle">보고서</h4>
									<p>title${ sponsor.report.title }</p>
									<p>memo${ sponsor.report.memo }</p>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-6 item seniorview">
							<div layout="row">
								<div>
									<h4 class="nino-serviceTitle">주소</h4>
									<p>시/도${ sponsor.address.city }</p>
									<p>zipcode${ sponsor.address.zip }</p>
									<p>좌표X${ sponsor.address.location.x }</p>
									<p>좌표Y${ sponsor.address.location.y }</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</p>

		</div>
		</div>
	</section>
	<!--/#nino-whatWeDo-->





	<!-- Footer
    ================================================== -->
	<footer id="footer">
		<div class="container">
			<div class="nino-copyright">
				Copyright &copy; 2019 <a target="_blank">The bom</a>. All Rights
				Reserved. <br /> MoGo free PSD template by Laaqiq
			</div>
		</div>
	</footer>
	<!--/#footer-->


	<!-- javascript -->
	<script type="text/javascript" src="res/js/jquery.min.js"></script>
	<script type="text/javascript" src="res/js/bootstrap.min.js"></script>


</body>
</html>