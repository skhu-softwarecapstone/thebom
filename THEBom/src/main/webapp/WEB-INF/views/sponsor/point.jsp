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
<style>
     .dailyform{
        margin: 0 auto;
        text-align: center;
        width:30%;
      }
</style>
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

<body data-target="#nino-navbar" data-spy="scroll" class="main">
	<!-- What We Do
    ================================================== -->
	<nav id="nino-navbar" class="navbar navbar-default" role="navigation">
		<div class="container">

			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#nino-navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/main">THE BOM</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="nino-menuItem pull-right">
				<div class="collapse navbar-collapse pull-left"
					id="nino-navbar-collapse">
					<ul class="nav navbar-nav">
						<li><a href="main">홈<span class="sr-only">(current)</span></a></li>
						<li class="active"><a href="matchinfo">후원정보 확인</a></li>
						<li><a href="blind">사각지대 신고</a></li>
						<li><a href="createdailylog">일지 작성</a></li>
						<li><a href="mypage">마이페이지</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
				<ul class="nino-iconsGroup nav navbar-nav">
					<li><a href="#" class="nino-search"><i
							class="mdi mdi-magnify nino-icon"></i></a></li>
				</ul>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>
	
		<div class="bar row">
			<h2 class="nino-sectionHeading">적립 포인트 내역</h2>
			
			<div class="col-sm-2">
			<!-- Sidebar -->
			<nav id="sidebar">
				<div class="sidebar-header">
					<h3 style="color: white">후원 정보 확인</h3>
				</div>

				<ul>
					<li><a href="matchinfo">돌봄 현황</a></li>	
					<li class="active"><a href="point">적립 포인트 내역</a></li>
				</ul>
			</nav>
			</div>
			<p class="nino-sectionDesc">
			<div class="skill-main col-sm-8  ffset-sm-2">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>날짜</th>
							<th>활동 내용</th>
							<th>적립 포인트</th>
							<th>누적 포인트</th>
						</tr>
					</thead>
					<tbody>
						
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						
					</tbody>
				</table>
			</div>
			</p>
			
		</div>
	


	<script>
		
	</script>




</body>
</html>