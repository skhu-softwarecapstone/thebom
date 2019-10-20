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
	href="<%=request.getContextPath()%>/res/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/res/css/template.css" />

<script src="https://cdn.jsdelivr.net/npm/vue"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.min.js"></script>
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
								<li class="active"><a href="spon">후원하기</a></li>
								<li><a href="register">후원자 등록하기</a></li>
								<li><a href="manage">진행중인 후원 관리</a></li>
								<li><a href="sponNotice">공지사항</a></li>
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
	<section id="portfolio" class="section archive page">
		<div class="container">
			<div class="row">
				<h3 style="color: gray">
					후원게시판
					</h1>
					<h6 style="color: gray">
						후원할 수 있는 단체의 목록입니다.
						</h4>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<!-- 후원 칸 반복문돌릴것. -->



							<c:forEach var="place" items="${ places }">

								<div data-url="manage_detail?id=1" class="portfolio-single">
									<a class="zoom">
										<div class="portfolio-head">
											<i class="fa fa-search"></i>
										</div>
									</a>
									<div class="text">
										<h4>
											<a>${ place.name}</a>
										</h4>
										<p>${ place.introduce}</p>

										<button class="btn btn-default search-button"
											data-target="#apply" data-toggle="modal"
											style="margin: 10px;">신청</button>

									</div>
								</div>



							<!--상세보기 창-->
							<div class="modal fade" id="apply">
								<div class="modal-dialog">
									<div class="modal-content" style="width: 70%; left: 15%;">
										<br />
										<!-- body -->
										<form action="">

											<div class="modal-body">
												<table class="table table-striped"
													style="text-align: center; border: 1px solid #dddddd">
													<thead>
														<tr>
															<th colspan="2"
																style="background-color: #eeeeee; text-align: center;">후원
																신청하기</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td><label>시작 가능 날짜</label></td>
															<td><input type="date" class="form-control"
																name="visitDate" /></td>
														</tr>
														<tr>
															<td><label>방문 선호 요일</label></td>
															<td><input type="text" class="form-control"
																name="visitWeek" /></td>
														</tr>
														<tr>
															<td><label>방문 선호 시간</label></td>
															<td><input type="text" class="form-control"
																name="visitTime" maxlength="50" /></td>
														</tr>
													</tbody>
												</table>
											</div>


											<br />
											<!-- Footer -->
											<div class="modal-footer">
												<button type="submit" class="btn btn-default search-button">후원하기</button>
												&nbsp;
												<button type="button" class="btn btn-default search-button"
													data-dismiss="modal">되돌아가기</button>
											</div>
										</form>
									</div>
								</div>
							</div>



							</c:forEach>






							<!--/ End Portfolio -->
						</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<!-- Start Pagination -->
					<ul class="pagination">
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
	<script type="text/javascript">
		var blindApp = new Vue({
			el : '#manageApp',
			data : {
				name : '',
				content : '',
				pNo : 0,
				seniorName : '',
				date : 2019 - 01 - 01,
				logContent : ''
			},
			methods : {
				insertBlind : function() {
					let url = '/insertBlind';
					axios.get(url, {
						params : {
							name : this.name,
							content : this.content,
							pNo : this.pNo
						}
					});
					$('#blind').modal('hide');
				},
				insertLog : function() {
					let url = '/insertLog';
					axios.get(url, {
						params : {
							seniorName : this.seniorName,
							date : this.date,
							logContent : this.logContent
						}
					});
					$('#dailylog').modal('hide');
				}

			}
		})
	</script>

</body>
</html>