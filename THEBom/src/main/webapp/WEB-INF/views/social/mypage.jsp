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
	<header id="nino-header" style="background-color:#fce38a" ;>
            <div id="nino-headerInner">		
                <nav id="nino-navbar" class="navbar navbar-default" role="navigation">
                    <div class="container header">
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="nino-menuItem pull-right">
                            <div class="collapse navbar-collapse pull-left" id="nino-navbar-collapse">
                                <ul class="nav navbar-nav">
									<li "><a href="social">홈<span class="sr-only">(current)</span></a></li>
                                <li><a href="notice">공지사항</a></li>
                                <li><a href="circle">써클조회</a></li>
                                <li><a href="senior">노인조회</a></li>
                                <li><a href="sponsor">후원자조회</a></li>
                                <li><a href="sponsorview">후원매치현황</a></li>
                                <li class="active"><a href="socialMypage">마이페이지</a></li>
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
						<h3 style="color:gray">마이페이지</h1>
						<h6 style="color:gray">회원님이 후원하고 계신 기업 목록입니다.</h4>
					<div class="col-md-4 col-sm-4 col-xs-12">
						<!-- Single Portfolio -->
						<div class="portfolio-single">
							<a href="images/portfolio/6.jpg" class="zoom">
								<div class="portfolio-head">
									<img src="images/portfolio/6.jpg" alt=""/>
									<i class="fa fa-search"></i>
								</div>
							</a>
							<div class="text">
								<h4><a href="question_answer.html">기업</a></h4>
								<p>후원내용</p>
							</div>
						</div>
						<!--/ End Portfolio -->
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12">
						<!-- Single Portfolio -->
						<div class="portfolio-single">
							<a href="images/portfolio/2.jpg" class="zoom">
								<div class="portfolio-head">
									<img src="images/portfolio/2.jpg" alt=""/>
									<i class="fa fa-search"></i>
								</div>
							</a>
							<div class="text">
								<h4><a href="portfolio-single.html">기업이름2</a></h4>
								<p>쌀보급 후원중</p>
							</div>
						</div>
						<!--/ End Portfolio -->
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12">
						<!-- Single Portfolio -->
						<div class="portfolio-single">
							<a href="images/portfolio/3.jpg" class="zoom">
								<div class="portfolio-head">
									<img src="images/portfolio/3.jpg" alt=""/>
									<i class="fa fa-search"></i>
								</div>
							</a>
							<div class="text">
								<h4><a href="portfolio-single.html">Portfolio 3</a></h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam interdum.</p>
							</div>
						</div>
						<!--/ End Portfolio -->
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12">
						<!-- Single Portfolio -->
						<div class="portfolio-single">
							<a href="images/portfolio/4.jpg" class="zoom">
								<div class="portfolio-head">
									<img src="images/portfolio/4.jpg" alt=""/>
									<i class="fa fa-search"></i>
								</div>
							</a>
							<div class="text">
								<h4><a href="portfolio-single.html">Portfolio 4</a></h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam interdum.</p>
							</div>
						</div>
						<!--/ End Portfolio -->
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12">
						<!-- Single Portfolio -->
						<div class="portfolio-single">
							<a href="images/portfolio/5.jpg" class="zoom">
								<div class="portfolio-head">
									<img src="images/portfolio/5.jpg" alt=""/>
									<i class="fa fa-search"></i>
								</div>
							</a>
							<div class="text">
								<h4><a href="portfolio-single.html">Portfolio 5</a></h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam interdum.</p>
							</div>
						</div>
						<!--/ End Portfolio -->
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12">
						<!-- Single Portfolio -->
						<div class="portfolio-single">
							<a href="images/portfolio/6.jpg" class="zoom">
								<div class="portfolio-head">
									<img src="images/portfolio/6.jpg" alt=""/>
									<i class="fa fa-search"></i>
								</div>
							</a>
							<div class="text">
								<h4><a href="portfolio-single.html">Portfolio 6</a></h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam interdum.</p>
							</div>
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