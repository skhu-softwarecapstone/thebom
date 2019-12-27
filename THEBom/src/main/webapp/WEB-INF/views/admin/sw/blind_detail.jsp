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
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/res/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/res/css/template.css" />

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
								<li><a href="senior ">노인조회</a></li>
								<li><a href="sponsor ">후원자조회</a></li>
								<li><a href="match">후원매치현황</a></li>
								<li class="active"><a href="blind">사각지대 관리</a></li>
								<li><a href="mypage ">마이페이지</a></li>
								<li><a href="" style="color: pink;">${user.fullname }</a></li>

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

				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">
								사각지대 관리</th>
						</tr>
					</thead>
					<tbody>

						<tr>
							<td>신고날짜</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd"
									value="${part.date}" /></td>
						</tr>

						<tr>
							<td>신고자 아이디</td>
							<td>${part.userId}</td>
						</tr>

						<tr>
							<td>처리상태</td>
							<td>${part.processState==0?"접수대기":part.processState==1?"접수완료":"처리완료"}</td>
						</tr>

						<tr>
							<td>신고대상자</td>
							<td>${part.name}</td>
						</tr>
						<tr>
							<td>신고내용</td>
							<td>${part.content}</td>
						</tr>

					</tbody>
				</table>
				<a href="blind" class="btn btn-primary pull-right"
					style="background-color: #95e1d3; border-color: #95e1d3">목록으로</a> <a
					href="blindComplete?bNo=${ part.BNo }"
					class="btn btn-primary pull-right"
					style="background-color: #95e1d3; border-color: #95e1d3; margin-right: 5px;">처리완료</a>
				<a href="blindAccept?bNo=${ part.BNo }"
					class="btn btn-primary pull-right"
					style="background-color: #95e1d3; border-color: #95e1d3; margin-right: 5px;">접수</a>




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