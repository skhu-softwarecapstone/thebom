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
								<li><a href="sp_main">홈<span class="sr-only">(current)</span></a></li>
								<li><a href="dailylog">방문 기록</a></li>
								<li><a href="blind">사각지대 신고</a></li>
								<li class="active"><a href="donate">직접 후원하기</a></li>
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
		<div id="app" class="container">
			<div class="row">
				<h3 style="color: gray">
					후원게시판
					</h3>
					<h6 style="color: gray">
						후원할 수 있는 단체의 목록입니다.
						</h6>
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
																v-model="startDate"  name="startDate" /></td>
														</tr>
														<tr>
															<td><label>방문 선호 요일</label></td>
															<td><input type="text" class="form-control"
																v-model="day" name="day" /></td>
														</tr>
														<tr>
															<td><label>방문 선호 시간</label></td>
															<td><input type="text" class="form-control"
																v-model="time" name="time" maxlength="50" /></td>
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
		var sponApp = new Vue({
			el : '#app',
			data : {
				day:'',
				time:'',
				startDate:2019-09-01
				
			},
			methods : {
				insertSpon : function() {
					let url = '/insertSpon';
					axios.get(url, {
						params : {
							day : this.day,
							content : this.time,
							pNo : this.startDate
						}
					});
					$('#apply').modal('hide');
				}

			}
		})
	</script>

</body>
</html>