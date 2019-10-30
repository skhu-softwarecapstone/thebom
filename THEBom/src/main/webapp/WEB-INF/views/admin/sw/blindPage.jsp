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
								<li><a href="sponMain">홈<span class="sr-only">(current)</span></a></li>
								<li><a href="dailylog">방문 기록</a></li>
								<li class="active"><a href="blind">사각지대 신고</a></li>
								<li><a href="spon">직접 후원하기</a></li>
								<li><a href="userMypage">마이페이지</a></li>
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
					사각지대 신고하기
				</h3>
					<div class="pull-right mb5">
                                    <a href="insertBlind" class="btn btn-info search-button">
                                      <span class="glyphicon glyphicon-user"></span> 사각지대 신고</a>
                            </div>
                                <!-- Start table -->
                                <div class="notice_container"> 
                                    <table class="table table-bordered mt5 table-hover">
                                      <thead style="color:black">
                                        <tr>
                                          <th>신고대상</th>
                                          <th>신고내용</th>
                                          <th>신고날짜</th>
                                          <th>처리상태</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <c:forEach var="blind" items="${ blinds }">
                                          <tr data-url="blindPagedt?bNo=${blind.BNo}">
                                            <td>${ blind.name }</td>
                                            <td>${ blind.content}</td>  
                                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${blind.date}" /></td>
                                            <td>${blind.processState==0?"접수대기":blind.processState==1?"접수완료":"처리완료"}</td>
                                          </tr>
                                        </c:forEach>
                                       
                                      </tbody>
                                    </table>
                                    
                                  </div>
                                <!-- End table -->
						
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
			<script type="text/javascript"
		src="<%=request.getContextPath()%>/res/js/common.js"></script>


</body>
</html>