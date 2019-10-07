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
        <header id="nino-header" style="background-color:#fce38a" ;>
                <div id="nino-headerInner">		
                    <nav id="nino-navbar" class="navbar navbar-default" role="navigation">
                        <div class="container header">
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="nino-menuItem pull-right">
                                <div class="collapse navbar-collapse pull-left" id="nino-navbar-collapse">
                                    <ul class="nav navbar-nav">
                                        <li><a href="social_main.html">홈</a></li>
                                        <li><a href="notice.html">공지사항</a></li>
                                        <li><a href="circle.html">써클조회</a></li>
                                        <li><a href="senior.html">노인조회</a></li>
                                        <li class="active"><a href="sponsor.html">후원자조회<span class="sr-only">(current)</span></a></li>
                                        <li><a href="sponsorview.html">후원매치현황</a></li>
                                        <li><a href="mypage.html">마이페이지</a></li>
                                    </ul>
                                </div><!-- /.navbar-collapse -->
                               
                                
                            </div>
                        </div><!-- /.container-fluid -->
                    </nav>
                </div>
            </header><!--/#header-->
	<!-- What We Do
    ================================================== -->
    <section id="nino-whatWeDo">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">THE BOM</span>
				후원자 조회
            </h2>
            <div style="float:right" class="search">
                    <div class=" col-sm-12 col-xs-12" >
                        <form style="display: inline-block">
                            <select>
                                <option>이름</option>
                                <option>번호</option>
                            </select>
                            
                            <div >
                                <form><input /></form>
                            </div>
    
                            <div style="display: inline-block"><button class="search-button">검색</button></div>
                            <div>페이지 크기
                                <select>
                                    <option>10</option>
                                    <option>15</option>
                                    <option>30</option>
                                </select>
                            </div>
                        </form>
                    </div>
                </div>
			<p class="nino-sectionDesc">
                <div class="skill-main">
                    <table class="table table-bordered">
                        <thead style="color:black">
                            <tr>
                                <th>id</th>
                                <th>이메일</th>
                                <th>이름</th>
                            </tr>
                        </thead>
                        <tbody>
                                <tr data-url="student_details?id=${ student.id }">
                                    <td>${ student.id }</td>
                                    <td>${ student.studentId }</td>
                                    
                                </tr>
                        </tbody>
                    </table>
                </div>
            </p>
			</div>
    	</div>
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