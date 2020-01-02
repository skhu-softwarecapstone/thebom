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
								<li><a href="sW_main">홈<span class="sr-only">(current)</span></a></li>
								<li><a href="notice">공지사항</a></li>
								<li><a href="circle">써클조회</a></li>
								<li class="active"><a href="seniorList">노인조회</a></li>
								<li><a href="sponsor">후원자조회</a></li>
								<li><a href="match">후원매치현황</a></li>
								<li><a href="blind">사각지대 관리</a></li>
								<li><a href="mypage">마이페이지</a></li>
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
	<!-- Start Project -->
	<section id="portfolio" class="section archive page">
		<div class="container">
			<div class="row">
				<h2 class="nino-sectionHeading">
					<span class="nino-subHeading">THE BOM</span> 관할 노인조회
				</h2>

				<!-- Start blog -->
				<section id="blog" class="single section page">
					<div class="container">
						<div class="row">
							<div class="col-md-8 col-sm-12 col-xs-12"
								style="margin-left: 20%;">
								<!-- Single blog -->
								<div class="single-blog">

									<div class="blog-content">
										<h3>어르신 세부사항</h3>
										<hr />

										<div id="info">
											<span>성함: </span> <span>${ senior.name }</span> <br> 
											<span>거주지역:</span>
											<span>${ senior.address.address1 }${ senior.address.address_detail }(우편번호:${ senior.address.zipcode })</span> <br>
											<span>거주지역 좌표:</span>
											<span>lat:${ senior.address.location.lat }/lng:${ senior.address.location.lng }</span> <br>
											 <span>연세:</span>
											<span>${ senior.age}</span> <br> 
											 <span>연락처:</span>
											<span>${ senior.phone}</span> <br> 
											<span>장애등급:</span> <span><c:choose>
													<c:when test="${ senior.disabilityGrade==NULL}">X</c:when>
													<c:otherwise>${ senior.disabilityGrade } </c:otherwise>
												</c:choose></span><br> 
												<%-- <span>담당복지사:</span> <span>${socialWorker.fullname }</span> --%>

										</div>
										<hr />
										<div id="body">어르신 특이사항: ${ senior.uniqueness }</div>
										<hr />

									</div>
								</div>
								<!--/ End Single blog -->

							</div>

						</div>
					</div>

				</section>

				<div class="list">
					<button type="button" class="search-button"
						onclick="location.href='seniorList' ">
						목록으로
					</button>
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
		src=".<%=request.getContextPath()%>/res/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/res/js/bootstrap.min.js"></script>


</body>
</html>