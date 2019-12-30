<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- tag library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
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

<!-- javascript -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/res/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/res/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/res/js/common.js"></script>



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
                                <li><a href="circle">써클조회</a></li>
                                <li class="active"><a href="seniorList ">노인조회</a></li>
                                <li><a href="sponsor ">후원자조회</a></li>
                                <li><a href="match">후원매치현황</a></li>
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
	<!-- Start Project -->
	<section id="portfolio" class="section archive page">
		<div class="container">
			<div class="row">
				<h2 class="nino-sectionHeading">
					<span class="nino-subHeading">THE BOM</span> 관할 노인조회
				</h2>

				<!-- 독거노인 조건 검색바 -->
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
				<!-- 독거노인 조건 검색바 끝 -->
				<!-- 독거노인 추가 버튼 -->
				<div class="col-sm-12 col-xs-12" id="write">
					<a href="seniorList_insert" style="margin-bottom: 30px;">어르신 추가</a>
				</div>
				<!-- 독거노인 추가 버튼 끝-->
				<p class="nino-sectionDesc">
				<div class="skill-main">
					<table class="table table-bordered table-hover">
						<thead style="color: black">
							<tr>
								<th>번호</th>
								<th>이름</th>
								<th>거주지역</th>
								<th>나이</th>
								<th>성별</th>
								<th>장애등급</th>

							</tr>
						</thead>
						<tbody>

							<c:forEach var="senior" items="${ seniors }">
								<tr data-url="seniorList_detail?seNo=${ senior.seNo }">
									<td>${ senior.seNo }</td>
									<td>${ senior.name }</td>
									<td>${ senior.address.address1 }</td>
									<td>${ senior.age}</td>
									<td><c:choose>
											<c:when test="${ senior.gender==true}">男</c:when>
											<c:otherwise>女</c:otherwise>
										</c:choose></td>
									<td><c:choose>
											<c:when test="${ senior.disabilityGrade==NULL}">X</c:when>
											<c:otherwise>${ senior.disabilityGrade } </c:otherwise>
										</c:choose></td>

								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
				</p>
			</div>
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<!-- Start Pagination -->
			
					  <my:pagination pageSize="${ pagination.sz }" recordCount="${ pagination.recordCount }" 
                 queryStringName="pg" />
					
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




</body>
</html>