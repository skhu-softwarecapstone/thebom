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

<!-- javascript -->
<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/common.js"></script>

</head>

<body data-target="#nino-navbar" data-spy="scroll" class="main">
	<!-- What We Do
    ================================================== -->
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
								<li><a href="#nino-header">홈<span class="sr-only">(current)</span></a></li>
								<li><a href="#nino-story">후원자 등록</a></li>
								<li><a href="#nino-services">후원정보 확인</a></li>
								<li><a href="#nino-ourTeam">사각지대 신고</a></li>
								<li><a href="#nino-portfolio">일지 작성</a></li>
								<li class="active"><a href="#nino-latestBlog">마이페이지</a></li>
							</ul>
						</div><!-- /.navbar-collapse -->
						<ul class="nino-iconsGroup nav navbar-nav">
							<li><a href="#" class="nino-search"><i class="mdi mdi-magnify nino-icon"></i></a></li>
						</ul>
					</div>
				</div><!-- /.container-fluid -->
			</nav>
	<section id="nino-whatWeDo">
		<div class="container middle">
			<h2 class="nino-sectionHeading">
				
			</h2>
			<p class="nino-sectionDesc">
			<div class="skill-main">
				
			</div>
			</p>
		</div>
		</div>
	</section>
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

		
	</script>




</body>
</html>