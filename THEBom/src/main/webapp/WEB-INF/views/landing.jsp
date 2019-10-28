<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>The bom</title>
	<!-- css -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>res/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>res/css/template.css" />
</head>

<body data-target="#nino-navbar" data-spy="scroll">

	<!-- Header
    ================================================== -->
	<header id="nino-header">
		<div id="nino-headerInner" style="background-image:url(<%=request.getContextPath() %>/res/images/main.jpg);height: 600px;">		

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
						<a class="navbar-brand" href="login.jsp">the bom</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right">
						<div class="collapse navbar-collapse pull-left" id="nino-navbar-collapse">
							<ul class="nav navbar-nav">
                                    <li class="active"><a href="login.jsp">홈<span class="sr-only">(current)</span></a></li>
                                    <li><a href="login">로그인</a></li>
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
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">the bom</span>
							<p style="font-size:85px">독거노인 <br>이중케어 시스템</p>
						</h2>
						<a href="login " class="nino-btn">Learn more</a>
					</div>
					<div class="item">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">the bom</span>
							후원자 페이지
						</h2>
						<a href="login " class="nino-btn">바로가기</a>
					</div>
					<div class="item">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">the bom</span>
							독거노인 페이지
						</h2>
						<a href="login " class="nino-btn">바로가기</a>
					</div>
					<div class="item">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">the bom</span>
							사회복지사 페이지
						</h2>
						<a href="login " class="nino-btn">바로가기</a>
					</div>
				</div>
			</section>
		</div>
	</header><!--/#header-->

	<section id="portfolio" class="section archive page">
			<div class="container">
				<div class="row">
						<p>
							<h1 style="color:grey;">THE BOM</h1>
                                double care system for the elderly living alone
                                "더불어 돌봄(더봄)"
                                '더불다' 라는 누군가와 "함께,같이,동시에" 라는 뜻을 갖고 있습니다.<br>
                                1.둘 이상의 사람이 함께하다.<br>
                                2.무엇과 같이하다.<br>
                                3.어떤 일이 동시에 일어나다.<br>
								OECD 노인 자살률 1위 대한민국에서 더불어 함께 살아가면서 봄이 전해진다면 좋겠다는 취지에서 시작되었습니다.	    </p>
								</div>
								</div>
	</section>
   

    <!-- Search Form - Display when click magnify icon in menu
    ================================================== -->
    <form action="" id="nino-searchForm">
    	<input type="text" placeholder="Search..." class="form-control nino-searchInput">
    	<i class="mdi mdi-close nino-close"></i>
    </form><!--/#nino-searchForm-->
	
    <!-- Scroll to top
    ================================================== -->
	<a href="#" id="nino-scrollToTop">Go to Top</a>
	
	<!-- javascript -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery.min.js"></script>	
	<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/common.js"></script>
</body>
</html>