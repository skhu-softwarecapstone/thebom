<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>The bom</title>


<!-- css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/template.css" />
</head>
<body data-target="#nino-navbar" data-spy="scroll">

	<!-- Header
    ================================================== -->
	<header id="nino-header">
		<div id="nino-headerInner" style="background-image:url(../images/main.jpg);height: 600px;">		

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
						<a class="navbar-brand" href="homepage.html">the bom</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right">
						<div class="collapse navbar-collapse pull-left" id="nino-navbar-collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="senior_main.html">홈<span class="sr-only">(current)</span></a></li>
                                <li><a href="diary.html">일지작성</a></li>
							</ul>
						</div><!-- /.navbar-collapse -->
						<ul class="nino-iconsGroup nav navbar-nav">
							<li><a href="#"><i class="mdi mdi-cart-outline nino-icon"></i></a></li>
							<li><a href="#" class="nino-search"><i class="mdi mdi-magnify nino-icon"></i></a></li>
						</ul>
					</div>
				</div><!-- /.container-fluid -->
			</nav>

			<section id="nino-slider" class="carousel slide container" data-ride="carousel">
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						
					<div class="item">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">the bom</span>
							독거노인 페이지<br>
						</h2>
					</div>
					
				</div>
			</section>
		</div>
	</header><!--/#header-->


    <!-- Search Form - Display when click magnify icon in menu
    ================================================== -->
    <form action="" id="nino-searchForm">
    	<input type="text" placeholder="Search..." class="form-control nino-searchInput">
    	<i class="mdi mdi-close nino-close"></i>
    </form><!--/#nino-searchForm-->
	
    <!-- Scroll to top
    ================================================== -->
	<a href="#" id="nino-scrollToTop">Go to Top</a>
	
    <!-- What We Do
    ================================================== -->
    <section id="nino-whatWeDo">
    	<div class="container">
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-6">
						<div class="text-center">
								<!-- Info Main -->
									<div class="section-title left">
										<h2 class="nino-sectionHeading">일지작성</h2>
									</div>
									<div class="info">
										<ul class="info-list">
											<li>7월18일</li>
											<li>7월20일</li> <!--작성한 날짜 보여주기-->
										</ul>
									</div>
								<!--/ End Info Main -->
						</div>
					</div>
					<div class="col-md-6">
						<div class="text-center">
								<!-- Info Main -->
									<div class="section-title left">
										<h2 class="nino-sectionHeading">내 정보</h2>
									</div>
									<div class="info">
										<ul class="info-list">
											<li>이름</li>
											<li>사는 곳</li>
											<li>담당 사회복지사</li>
										</ul>
									</div>
								<!--/ End Info Main -->
						</div>
					</div>
				</div>
			</div>
    	</div>
    </section><!--/#nino-whatWeDo-->
	<!-- javascript -->

	<script type="text/javascript" src="../js/jquery.min.js"></script>	
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</body>
</html>