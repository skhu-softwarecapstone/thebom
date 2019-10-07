<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>The bom</title>


<!-- css -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/res/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/res/css/template.css" />
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
								<li><a href="sponsor_main.html">홈</a></li>
								<li><a href="spon.html">후원하기</a></li>
								<li class="active"><a href="notice.html">공지사항<span
										class="sr-only">(current)</span></a></li>
								<li><a href="mypage.html">마이페이지</a></li>
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

	<div class="container">

		<div class="row">
			<form method="post" action="notice.html" style="margin: 63px">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">글제목</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><p>동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세. 무궁화 삼천리 화려강산
									대한 사람, 대한으로 길이 보전하세. 남산[11] 위에 저 소나무, 철갑을 두른 듯 바람서리[12] 불변함은 우리
									기상일세. 무궁화 삼천리 화려강산 대한 사람, 대한으로 길이 보전하세. 3 가을 하늘 공활한데 높고 구름 없이
									밝은 달은 우리 가슴 일편단심일세. 무궁화 삼천리 화려강산 대한 사람, 대한으로 길이 보전하세. 4 이 기상과 이
									맘으로 충성을 다하여 괴로우나 즐거우나 나라 사랑하세. 무궁화 삼천리 화려강산 대한 사람, 대한으로 길이
									보전하세.</p></td>
						</tr>
					</tbody>
				</table>
				<a href="notice.html" class="pull-right search-button">돌아가기</a>
			</form>
		</div>
	</div>



	<!-- Footer
    ================================================== -->
	<footer id="footer"> </footer>
	<!--/#footer-->


	<!-- javascript -->
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>


</body>
</html>