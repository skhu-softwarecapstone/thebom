<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                                    <li><a href="sponsor_main.html">홈</a></li>
                                    <li class="active"><a href="spon.html">후원하기<span class="sr-only">(current)</span></a></li>
                                    <li><a href="sponNotice">공지사항</a></li>
                                    <li><a href="sponMypage">마이페이지</a></li>
                                </ul>
                            </div><!-- /.navbar-collapse -->
                           
                            
                        </div>
                    </div><!-- /.container-fluid -->
                </nav>
            </div>
		</header><!--/#header-->
		
		
	<!-- Start Project -->
    <section id="portfolio" class="section archive page">
			<div class="container">
				<div class="row">
						<h3 style="color:gray">후원게시판</h1>
						<h6 style="color:gray">후원할 수 있는 단체의 목록입니다.</h4>
					<div class="col-md-4 col-sm-4 col-xs-12">
						<!-- 후원 칸 반복문돌릴것. -->
						<div class="portfolio-single">
							<a class="zoom">
								<div class="portfolio-head">
									<i class="fa fa-search"></i>
								</div>
							</a>
							<div class="text">
								<h4><a data-target="#layerpop_sm1" data-toggle="modal">후원자 모집</a></h4>
								<p>연락주세요</p>
							</div>
						</div>

						<!--상세보기 창-->
						<div class="modal fade" id="layerpop_sm1">
							<div class="modal-dialog">
							 <div class="modal-content" style="width:70%; left: 15%;">
							  <br/>
							  <!-- body -->
							  <div class="modal-body">
								<table class="table table-striped"
								style="text-align: center; border: 1px solid #dddddd">
								<thead>
									<tr>
										<th colspan="2"
											style="background-color: #eeeeee; text-align: center;">내용상세보기</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"/></td>
										<td><input type="text" class="form-control" placeholder="날짜" name="bbsTitle" maxlength="50"/></td>
									</tr>
									<tr>
										<td colspan="2"><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height: 350px;"></textarea></td>
									</tr>
								</tbody>
							</table>	
								</div>
							  <br/>
							  <!-- Footer -->
							  <div class="modal-footer">
								 <button type="submit" class="btn btn-default search-button">후원하기</button>                                    
								  &nbsp;
								  <button type="button" class="btn btn-default search-button" data-dismiss="modal" >되돌아가기</button>
							  </div>
						  </div>
					  </div>
				  </div>
						<!--/ End Portfolio -->
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12">
						<!-- Single Portfolio -->
						<div class="portfolio-single">
							<a class="zoom">
								<div class="portfolio-head">
									<i class="fa fa-search"></i>
								</div>
							</a>
							<div class="text">
								<h4><a data-target="#layerpop_sm1" data-toggle="modal">부천시 복지관</a></h4>
								<p>부천시 독거노인 후원</p>
							</div>
						</div>
						<!--/ End Portfolio -->
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12">
						<!-- Single Portfolio -->
						<div class="portfolio-single">
							<a class="zoom" data-toggle="modal">
								<div class="portfolio-head">
									<i class="fa fa-search"></i>
								</div>
							</a>
							<div class="text">
								<h4><a data-target="#layerpop_sm1" data-toggle="modal">서울 구로구 복지관</a></h4>
								<p>구로구 독거노인 모바일기기 후원</p>
							</div>
						</div>
						<!--/ End Portfolio -->
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12">
						<!-- Single Portfolio -->
						<div class="portfolio-single">
							<a class="zoom">
								<div class="portfolio-head">
									<i class="fa fa-search"></i>
								</div>
							</a>
						
						</div>
						<!--/ End Portfolio -->
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12">
						<!-- Single Portfolio -->
						<div class="portfolio-single">
							<a  class="zoom">
								<div class="portfolio-head">
									<i class="fa fa-search"></i>
								</div>
							</a>
							
						</div>
						<!--/ End Portfolio -->
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12">
						<!-- Single Portfolio -->
						<div class="portfolio-single">
							<a class="zoom">
								<div class="portfolio-head">
									<i class="fa fa-search"></i>
								</div>
							</a>
							
						</div>
						<!--/ End Portfolio -->
					</div>
				</div>
				<div class="row">					
					<div class="col-md-12 col-sm-12 col-xs-12">
						<!-- Start Pagination -->
						<ul class="pagination">
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
    </section><!--/#nino-whatWeDo-->

    
    <!-- Footer
    ================================================== -->
    <footer id="footer">
			
	  </footer><!--/#footer-->

	
	<!-- javascript -->
	
	<script type="text/javascript" src="../js/jquery.min.js"></script>	
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	
		
</body>
</html>