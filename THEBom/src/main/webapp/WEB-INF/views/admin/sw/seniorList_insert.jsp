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
								<li><a href="sponsor_detail">후원매치현황</a></li>
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

	<!-- Start Breadcrumbs -->
	<section id="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>어르신 정보 추가하기</h2>
				</div>
			</div>
		</div>
	</section>
	<!--/ End Breadcrumbs -->

	<!-- Contact Us -->
	<section id="contact" class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12 wow fadeIn">
					<div class="section-title center">
						<h2>사회복지사님!</h2>
						<p>후원자가 알아야 할 특이사항에 대해 상세하게 작성해주시길 바랍니다.</p>
					</div>
				</div>
			</div>

			<!-- Contact Form -->
			<div class="col-md-5 col-sm-5 col-xs-12" style="margin-left: 30%">
				<form class="form" method="post" modelAttribute="SeniorModel">


					<div class="form-group">
						<input type="text" name="name" placeholder="어르신 성함" path="name"
							required="required">
					</div>
					<div class="form-group">
						<input type="number" name="age" placeholder="어르신 연세" path="age"
							required="required" min="60">
					</div>
					<div class="form-group">
						<input type="radio" name="gender" value="true" checked> 男<br>
						<input type="radio" name="gender" value="false"> 女<br>
					</div>
					<div class="form-group">
						<input type="tel" name="phone"
							placeholder="어르신 연락처(Format: 010-xxxx-xxxx)" path="age"
							pattern="010-[0-9]{4}-[0-9]{4}" required>
					</div>

					<div class="form-group">
						<select name="disabilityGrade">
							<%
								for (int k = 1; k < 7; k++) {
							%>
							<option value="<%=k%>급"><%=k%>급
							</option>
							<%
								}
							%>
							<option value="X">X</option>
						</select>
					</div>
<!-- 다음 주소 api 이용하기 -->
					<div class="form-group">
						<input class="form-control" style="width: 40%; display: inline;"
							placeholder="우편번호" name="zipcode" id="zipcode" type="text"
							readonly="readonly">
						<button type="button" class="btn btn-default"
							onclick="execDaumPostcode()">
							<i class="fa fa-search"></i> 우편번호 찾기
						</button>
					</div>
					<div class="form-group">
						<input class="form-control" style="top: 5px;" placeholder="도로명 주소"
							name="address1" id="address1" type="text" readonly="readonly" />
					</div>
					<div class="form-group">
						<input class="form-control" placeholder="상세주소" name="address_detail"
							id="address_detail" type="text" />
					</div>
					
					<div class="form-group">
						<input class="form-control" placeholder="참고항목" name="address_extra"
							id="address_extra" type="text" readonly="readonly" />
					</div>
					<!-- 다음 주소 api 이용하기 끝-->
					<div class="form-group">
						<textarea name="uniqueness" rows="8" placeholder="어르신 특이사항"
							path="uniqueness"></textarea>
					</div>
					<div class="form-group">
						<button type="submit" class="button primary">
							<i class="fa fa-send"></i>추가
						</button>

					</div>
				</form>
			</div>
			<!--/ End Contact Form -->
	</section>
	<!--/ End Clients Us -->
	<!--/ End Project -->

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

	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	
	<script src="/res/js/addressAPI.js"></script>



</body>
</html>