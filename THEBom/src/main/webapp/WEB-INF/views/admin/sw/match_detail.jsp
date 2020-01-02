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
	href="<%=request.getContextPath() %>/res/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/res/css/template.css" />
</head>

<body data-target="#nino-navbar" data-spy="scroll">
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
                                <li><a href="circle">써클조회</a></li>
                                <li><a href="seniorList ">노인조회</a></li>
                                <li><a href="sponsor ">후원자조회</a></li>
                                <li class="active"><a href="match">후원매치현황</a></li>
                                <li><a href="blind">사각지대 관리</a></li>
                                <li><a href="mypage ">마이페이지</a></li>
                                <li><a href="<c:url value='/'/>">Logout</a></li>
                                <li><a href="" style="color:pink;">${user.fullname }</a></li>
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
	<section id="nino-whatWeDo">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">THE BOM</span> 후원 매치
			</h2>
			<div style="float: right" class="search">
				<div class=" col-sm-12 col-xs-12">
					<form style="display: inline-block">
						<select>
							<option>이름</option>
							<option>번호</option>
						</select>

						<div>
							<form>
								<input />
							</form>
						</div>

						<div style="display: inline-block">
							<button class="search-button">검색</button>
						</div>
						<div>
							페이지 크기 <select>
								<option>10</option>
								<option>15</option>
								<option>30</option>
							</select>
						</div>
					</form>
				</div>
			</div>
			<p class="nino-sectionDesc">
			<div class="skill-main">
				<div class="sectionContent">
					<div class="fw" layout="row">

						<c:forEach var="sponsor" items="${ sponsors }">
							<div class="col-md-4 col-sm-6 item seniorview">
								<div layout="row">
									<div>
										<h4 class="nino-serviceTitle">후원자이름:${sponsor.name }</h4>
										<p>전화번호</p>
										<p>${sponsor.phone }</p>
									</div>
								</div>
							</div>
						</c:forEach>
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
	<footer id="footer"> </footer>
	<!--/#footer-->


	<!-- javascript -->

	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>


</body>
</html>