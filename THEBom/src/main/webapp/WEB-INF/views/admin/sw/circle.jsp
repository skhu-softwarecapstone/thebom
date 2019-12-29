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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/res/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/res/css/template.css" />
</head>

<body data-target="#nino-navbar" data-spy="scroll">
    <!-- Header
    ================================================== -->
	<header id="nino-header" style="background-color:#fce38a" ;>
            <div id="nino-headerInner">		
                <nav id="nino-navbar" class="navbar navbar-default" role="navigation">
                    <div class="container header">
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="nino-menuItem pull-right">
                            <div class="collapse navbar-collapse pull-left" id="nino-navbar-collapse">
                                <ul class="nav navbar-nav">
                                <li><a href="sw_main">홈<span class="sr-only">(current)</span></a></li>
                                <li><a href="notice">공지사항</a></li>
                                <li class="active"><a href="circle">써클조회</a></li>
                                <li><a href="seniorList">노인조회</a></li>
                                <li><a href="sponsor ">후원자조회</a></li>
                                <li><a href="match">후원매치현황</a></li>
                                <li><a href="blind">사각지대 관리</a></li>
                                <li><a href="mypage">마이페이지</a></li>
                                <li><a href="" style="color:pink;">${user.fullname }</a></li>
                                </ul>
                            </div><!-- /.navbar-collapse -->
                        </div>
                    </div><!-- /.container-fluid -->
                </nav>
            </div>
		</header><!--/#header-->
		
		
	<!-- Start Project -->
    <!-- Start Project -->
    <section id="portfolio" class="section archive page">
			<div class="container">
				    <div class="row">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">Circle management </span>
							써클관리
						</h2>
						<div style="float:right" class="search">
							<div class="pull-right col-sm-12 col-xs-12" >
								<form style="display: inline-block">
									<select>
										<option>이름</option>
										<option>번호</option>
									</select>
									<div >
										<form><input /></form>
									</div>
									<div style="display: inline-block;"><button class="search-button">검색</button></div>
									<div>페이지 크기
										<select>
											<option>10</option>
											<option>15</option>
											<option>30</option>
										</select>
									</div>
								</form>
								<button class="search-button" style="float:right; margin-bottom:10px; margin-top:-10%;"
								onclick="location.href='circle_add'">
										써클추가
								</button>
							</div>
							
							
							
						
							
							
						</div>
						            <!--모달창-->
									<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
														</button>
														<h4 class="modal-title" id="myModalLabel">
															써클추가
														</h4>
													</div>
													<div class="modal-body">
														내용.
													</div>
													<div class="modal-footer">
														<button type="button" class=" search-button2" data-dismiss="modal">
															닫기
														</button>
														<button type="button" class=" search-button" id="myButtons1">
															저장
														</button>
													</div>
												</div>
											</div>
										</div>
										<!--모달창 끝-->
							
                                <!-- Start table -->
								<div class="sectionContent">
									<div class="row nino-hoverEffect">
										<!--써클 반복문돌리기-->
										<div class="col-md-4 col-sm-4">
										<c:forEach var="circle" items="${ circles }">

											<div data-url="circle_detail?cNo=${ circle.cNo }" class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="headingOne">
														<h4 class="panel-title">
															<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
																<i class="mdi mdi-chevron-up nino-icon arrow"></i>
																<i class="mdi mdi-camera nino-icon"></i>
																${ circle.cNo }
															</a>
														</h4>
													</div>
													<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
														<div class="panel-body">
															${ circle.introduce }
														</div>
													</div>
												</div>
											</div>
											
										</c:forEach>
										</div>
										
										
										
										<!--써클-->
									</div>
								</div>
                        </div>
                   
            <!--/ End blog -->
				<div class="row">					
            <div class="col-md-12 col-sm-12 col-xs-12">
						<!-- Start Pagination -->
						<ul class="pagination" style="margin: 50px 0 0 0;">
							<li class="prev"><a href="#"><span class="fa fa-angle-left"></span></a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li class="next"><a href="#"><span class="fa fa-angle-right"></span></a></li>
						</ul>
						<!--/ End Pagination -->
					</div>
				</div>
            </div>
		</section>
		<!--/ End Project -->

    
    <!-- Footer
    ================================================== -->
    <footer id="footer">
			
	  </footer><!--/#footer-->

	
	<!-- javascript -->
	
	<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery.min.js"></script>	
	<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/common.js"></script>
		
</body>
</html>