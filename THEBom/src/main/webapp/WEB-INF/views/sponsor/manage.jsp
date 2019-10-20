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

<script src="https://cdn.jsdelivr.net/npm/vue"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.min.js"></script>

</head>

<body  data-target="#nino-navbar" data-spy="scroll">
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
								<li class="active"><a href="manage">진행중인 후원 관리</a></li>
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
	<section  id="portfolio" class="section archive page">
		<div id="manageApp" class="container">
			<div class="row">
				<h3 style="color: gray">
					진행중인 후원 관리
					</h1>
					<h6 style="color: gray">
						후원 중인 목록입니다.
						</h4>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<!-- 후원 칸 반복문돌릴것. -->


							<c:forEach var="place" items="${ places }">

								<div data-url="manage_detail?id=${ place.id }"
									class="portfolio-single">
									<a class="zoom">
										<div class="portfolio-head">
											<i class="fa fa-search"></i>
										</div>
									</a>
									<div class="text">
										<h4>
											<a>${ place.name}</a>
										</h4>
										<p>현재 참여중입니다.</p>

											
										<button class="btn btn-default search-button"
											data-target="#blind" data-toggle="modal"
											style="margin: 10px;">사각지대 신고</button>
										<button class="btn btn-default search-button"
											data-target="#dailylog" data-toggle="modal"
											style="margin: 10px;">일지작성하기</button>
									</div>
								</div>


	<!--사각지대 신고 -->
							<div class="modal fade" id="blind">
								<div class="modal-dialog">
									<div class="modal-content" style="width: 70%; left: 15%;">
										<br />
										<!-- body -->
										<div class="modal-body">
											<table class="table table-striped"
												style="text-align: center; border: 1px solid #dddddd">
												<thead>
													<tr>
														<th colspan="2"
															style="background-color: #eeeeee; text-align: center;">사각지대
															신고하기</th>
													</tr>										
												</thead>
												<tbody>
													<tr>
														<td><label>신고대상자 이름</label></td>
														<td><input type="text" class="form-control"
															v-model="name" name="name" /></td>
													</tr>
													
													<tr>
														<td colspan="2"><textarea class="form-control"
																placeholder="신고내용을 구체적으로 작성해주세요" name="content"
																v-model="content" maxlength="2048" style="height: 350px;"></textarea></td>
													</tr>
												</tbody>
											</table>
										</div>
										<br />
										<!-- Footer -->
										<div class="modal-footer">
											<button type="button" v-on:click="insertBlind" class="btn btn-default search-button">등록</button>
											&nbsp;
											<button type="button" class="btn btn-default search-button"
												data-dismiss="modal">되돌아가기</button>
										</div>
									</div>
								</div>
							</div>
	
							<!--일지작성-->
							<div class="modal fade" id="dailylog">
								<div class="modal-dialog">
									<div class="modal-content" style="width: 70%; left: 15%;">
										<br />
										<!-- body -->
										<div class="modal-body">
											<table class="table table-striped"
												style="text-align: center; border: 1px solid #dddddd">
												<thead>
													<tr>
														<th colspan="2"
															style="background-color: #eeeeee; text-align: center;">일지
															작성하기</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><label>방문 날짜</label></td>
														<td><input type="date" class="form-control"
															name="visitDate" v-model="date" min="20119-09-01" max="2019-10-21" /></td>
													</tr>
													<tr>
														<td><label>빙문 대상</label></td>
														<!-- select로 바꿀 것 -->
														<td><input type="text" class="form-control"
															v-model="seniorName" name="seniorName" /></td>
													</tr>
													<tr>
														<td colspan="2"><textarea class="form-control"
																placeholder="활동 내용,특이사항,식사여부를 작성해주세요" v-model="logContent"  name="logContent"
																maxlength="2048" style="height: 350px;"></textarea></td>
													</tr>
												</tbody>
											</table>
										</div>
										<br />
										<!-- Footer -->
										<div class="modal-footer">
											<button type="button" v-on:click="insertLog" class="btn btn-default search-button">등록</button>
											&nbsp;
											<button type="button" class="btn btn-default search-button"
												data-dismiss="modal">되돌아가기</button>
										</div>
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
		var blindApp=new Vue({
			el:'#manageApp',
			data:{
				name:'',
				content:'',
				pNo:0,
				seniorName:'',
				date:2019-01-01,
				logContent:''
				},
			methods:{
				insertBlind: function(){
		              let url = '/insertBlind';
		              axios.get(url,{
		            	  params: {
		            		    name: this.name,
		            		    content: this.content,
		            		    pNo: this.pNo
		            	  }});
		              $('#blind').modal('hide');
				},
				insertLog:function(){
					 let url = '/insertLog';
		              axios.get(url,{
		            	  params: {
		            		seniorName:this.seniorName,
		      				date:this.date,
		      				logContent:this.logContent
		            	  }});
		              $('#dailylog').modal('hide');
				}
				
			}
		})
		
	</script>

</body>
</html>