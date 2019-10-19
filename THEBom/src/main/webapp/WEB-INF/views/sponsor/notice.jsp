<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
								<li><a href="sponMain">홈<span class="sr-only">(current)</span></a></li>
								<li><a href="spon">후원하기</a></li>
								<li><a href="register">후원자 등록하기</a></li>
								<li><a href="manage">진행중인 후원 관리</a></li>
								<li class="active"><a href="sponNotice">공지사항</a></li>
								<li><a href="sponMypage">마이페이지</a></li>
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
				<h3 style="color: gray">
					공지사항
					</h1>
					<!-- Start table -->
					<div class="notice_container">
						<table class="table table-bordered mt5 table-hover">
							<thead style="color: black">
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>글쓴이</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="student" items="${ students }">
									<!-- <tr data-url="notice_detail ">-->
									<tr onclick="location.href='sponNoticeDetail '">
										<td>1</td>
										<td>문의드립니다 </td>
										<td> 추은정</td>
									</tr>
								</c:forEach>
								<c:forEach var="student" items="${ students }">
									<tr data-url="edit?id=1">
										<td>2</td>
										<td>문의요~~ </td>
										<td>한지민 </td>
									</tr>
								</c:forEach>
								<c:forEach var="student" items="${ students }">
									<tr data-url="edit?id= ">
										<td>2</td>
										<td> </td>
										<td> </td>
									</tr>
								</c:forEach>
								<c:forEach var="student" items="${ students }">
									<tr data-url="edit?id= ">
										<td> 3</td>
										<td> </td>
										<td> </td>
									</tr>
								</c:forEach>
								<c:forEach var="student" items="${ students }">
									<tr data-url="edit?id= ">
										<td> 4</td>
										<td> </td>
										<td> </td>
									</tr>
								</c:forEach>
								<c:forEach var="student" items="${ students }">
									<tr data-url="edit?id= ">
										<td> 5</td>
										<td> </td>
										<td> </td>
									</tr>
								</c:forEach>
								<c:forEach var="student" items="${ students }">
									<tr data-url="edit?id= ">
										<td> 6</td>
										<td> </td>
										<td> </td>
									</tr>
								</c:forEach>
								<c:forEach var="student" items="${ students }">
									<tr data-url="edit?id= ">
										<td> 7</td>
										<td> </td>
										<td> </td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
					<!-- End table -->
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

	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>


</body>
</html>