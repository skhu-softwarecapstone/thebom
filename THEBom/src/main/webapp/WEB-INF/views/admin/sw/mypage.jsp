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
                                <li><a href="sw_main">홈<span class="sr-only">(current)</span></a></li>
                                <li><a href="notice">공지사항</a></li>
                                <li><a href="circle">써클조회</a></li>
                                <li><a href="senior ">노인조회</a></li>
                                <li><a href="sponsor ">후원자조회</a></li>
                                <li><a href="match">후원매치현황</a></li>
                                <li><a href="blind">사각지대 관리</a></li>
                                <li class="active"><a href="mypage">마이페이지</a></li>
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
						<h3 style="color:gray;text-align:center">마이페이지</h3>
					<div class="col-md-8 col-sm-12 col-xs-12"
								style="margin-left: 20%;">
								<!-- Single blog -->
								<div style="margin-top:80px" class="single-blog">

									<div class="blog-content">
										<h3>내 정보</h3>
										<hr />

										<div id="info">
											<span>이름: </span> <span>${ user.fullname }</span> <br> 
											<span>이메일:</span>
											<span>${ user.email }</span> <br>
										</div>
										

									</div>
								</div>
								<!--/ End Single blog -->

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
	
	<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery.min.js"></script>	
	<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/bootstrap.min.js"></script>
		
</body>
</html>