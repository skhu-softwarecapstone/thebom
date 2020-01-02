<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- tag library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
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

<script type="text/javascript">
	var first_index = new Array('서울특별시', '부산광역시', '대구광역시', '인천광역시', '광주광역시',
			'대전광역시', '울산광역시', '세종특별자치시', '경기도', '강원도', '충청북도', '충청남도', '전라북도',
			'전라남도', '경상북도', '경상남도', '제주특별자치도');

	var second_index = new Array();
	var second_index
	[ 0 ] = new Array('강남구', '강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구',
			'노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구', '서초구', '성동구', '성북구',
			'송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구');

	var third_index = new Array();

	var third_index[ 0 ] = new Array();var third_index[ 1 ] = new Array();var third_index[ 2 ] = new Array();var third_index[ 3 ] = new Array();
	var third_index[ 4 ] = new Array();	var third_index[ 5 ] = new Array();var third_index[ 6 ] = new Array();var third_index[ 7 ] = new Array();
	var third_index[ 8 ] = new Array();var third_index[ 9 ] = new Array();var third_index[ 10 ] = new Array();var third_index[ 11 ] = new Array();
	var third_index[ 12 ] = new Array();var third_index[ 13 ] = new Array();var third_index[ 14 ] = new Array();var third_index[ 15 ] = new Array();
	var third_index[ 16 ] = new Array();var third_index[ 17 ] = new Array();var third_index[ 18 ] = new Array();

	var third_index[ 19 ] = new Array('당산동', '당산동1가', '당산동2가', '당산동3가', '당산동4가', '당산동4가',
			'당산동5가', '당산동6가', '대림동', '도림동', '문래동1가', '문래동2가', '문래동3가', '문래동4가',
			'문래동5가', '문래동6가', '신길동', '양평동', '양평동1가', '양평동2가', '양평동3가', '양평동4가',
			'양평동5가', '양평동6가', '양화동', '여의도동', '영등포동', '영등포동1가', '영등포동2가',
			'영등포동3가', '영등포동4가', '영등포동5가', '영등포동6가', '영등포동7가', '영등포동8가');

	function init(f) {
		var first_select = f.first;
		var second_select = f.second;
		var third_select = f.third;

		first_index.options[0] = new Option("시도명", "");
		second_index.options[0] = new Option("시군구명", "");
		third_index.options[0] = new Option("읍면동명", "");

		for (var i = 0; i < first_select.length; i++) {
			first_select.options[i + 1] = new Option(first_index[i],f_selbox[i]);
		}
	}

	function itemChange(f) {
		var first_select = f.first;
		var second_select = f.second;
		

		var select = first_select.selectedIndex;
		for (var i = second_select.length; i >= 0; i--) {
			second_select.options[i] = null;
		}

		second_select.options[0] = new Option("시군구명", "");

		if (sel != 0) {
			for (var i = 0; i < s_selbox[sel - 1].length; i++) {
				s_sel.options[i + 1] = new Option(s_selbox[sel - 1][i],
						s_selbox[sel - 1][i]);
			}
		}
	}
</script>

</head>

<body data-target="#nino-navbar" data-spy="scroll"
	onload="init(this.form);">
	<!-- Header
    ================================================== -->

	<header id="nino-header" style="background-color: #fce38a;">
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
								<li class="active"><a href="circle">써클조회</a></li>
								<li><a href="seniorList">노인조회</a></li>
								<li><a href="sponsor ">후원자조회</a></li>
								<li><a href="match">후원매치현황</a></li>
								<li><a href="blind">사각지대 관리</a></li>
								<li><a href="mypage">마이페이지</a></li>
								<li><a href="<c:url value='/'/>">Logout</a></li>
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
			<div class="row" style="height: 490px";>
				<form name="form">
					<select id="first" style="width: 70px;"
						onchange="itemChange(this.form);"></select> 
						<select id="second"	style="width: 70px;"></select>
				</form>
				<h2 class="nino-sectionHeading">
					<span class="nino-subHeading">Circle management </span> 써클관리
				</h2>

				<div style="display: inline-block;">
					<button class="search-button" style="float: center;">검색</button>
				</div>

				<button class="search-button"
					style="float: center; margin-bottom: 10px; margin-top: -10%;"
					onclick="location.href='circle_add'">써클추가</button>
			</div>

		</div>




		<!--/ End blog -->
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<!-- Start Pagination -->
				<my:pagination pageSize="${ pagination.sz }"
					recordCount="${ pagination.recordCount }" queryStringName="pg" />

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


</body>
</html>