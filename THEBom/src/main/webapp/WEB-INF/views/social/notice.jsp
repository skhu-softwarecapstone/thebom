<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>The bom</title>


<!-- css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/template.css" />
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
                                    <li><a href="social_main.html">홈</a></li>
                                    <li class="active"><a href="notice.html">공지사항<span class="sr-only">(current)</span></a></li>
                                    <li><a href="circle.html">써클조회</a></li>
                                    <li><a href="senior.html">노인조회</a></li>
                                    <li><a href="sponsor.html">후원자조회</a></li>
                                    <li><a href="sponsorview.html">후원매치현황</a></li>
                                    <li><a href="mypage.html">마이페이지</a></li>
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
						<h3 style="color:gray">후원게시판</h1>
                        <h6 style="color:gray">후원할 수 있는 단체의 목록입니다.</h4>
                            <div class="pull-right mb5">
                                    <a href="write_notice.html" class="btn btn-info search-button">
                                      <span class="glyphicon glyphicon-user"></span> 공지사항 등록</a>
                            </div>
                                <!-- Start table -->
                                <div class="notice_container"> 
                                    <table class="table table-bordered mt5 table-hover">
                                      <thead style="color:black">
                                        <tr>
                                          <th>번호</th>
                                          <th>제목</th>
                                          <th>글쓴이</th>
                                          <th>답변 유무</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <c:forEach var="student" items="${ students }">
                                          <tr onclick="location.href='notice_detail.html'"">
                                            <td>${ student.id }</td>
                                            <td>${ student.studentNumber }</td>
                                            <td>${ student.name }</td>
                                            <td>${ student.departmentName }</td>
                                          </tr>
                                        </c:forEach>
                                        <c:forEach var="student" items="${ students }">
                                                <tr data-url="edit?id=${ student.id }">
                                                  <td>${ student.id }</td>
                                                  <td>${ student.studentNumber }</td>
                                                  <td>${ student.name }</td>
                                                  <td>${ student.departmentName }</td>
                                                </tr>
                                              </c:forEach>
                                              <c:forEach var="student" items="${ students }">
                                                    <tr data-url="edit?id=${ student.id }">
                                                      <td>${ student.id }</td>
                                                      <td>${ student.studentNumber }</td>
                                                      <td>${ student.name }</td>
                                                      <td>${ student.departmentName }</td>
                                                    </tr>
                                                  </c:forEach>
                                                  <c:forEach var="student" items="${ students }">
                                                        <tr data-url="edit?id=${ student.id }">
                                                          <td>${ student.id }</td>
                                                          <td>${ student.studentNumber }</td>
                                                          <td>${ student.name }</td>
                                                          <td>${ student.departmentName }</td>
                                                        </tr>
                                                      </c:forEach>
                                                      <c:forEach var="student" items="${ students }">
                                                            <tr data-url="edit?id=${ student.id }">
                                                              <td>${ student.id }</td>
                                                              <td>${ student.studentNumber }</td>
                                                              <td>${ student.name }</td>
                                                              <td>${ student.departmentName }</td>
                                                            </tr>
                                                          </c:forEach>
                                                          <c:forEach var="student" items="${ students }">
                                                                <tr data-url="edit?id=${ student.id }">
                                                                  <td>${ student.id }</td>
                                                                  <td>${ student.studentNumber }</td>
                                                                  <td>${ student.name }</td>
                                                                  <td>${ student.departmentName }</td>
                                                                </tr>
                                                              </c:forEach>
                                                              <c:forEach var="student" items="${ students }">
                                                                    <tr data-url="edit?id=${ student.id }">
                                                                      <td>${ student.id }</td>
                                                                      <td>${ student.studentNumber }</td>
                                                                      <td>${ student.name }</td>
                                                                      <td>${ student.departmentName }</td>
                                                                    </tr>
                                                                  </c:forEach>
                                                                  <c:forEach var="student" items="${ students }">
                                                                        <tr data-url="edit?id=${ student.id }">
                                                                          <td>${ student.id }</td>
                                                                          <td>${ student.studentNumber }</td>
                                                                          <td>${ student.name }</td>
                                                                          <td>${ student.departmentName }</td>
                                                                        </tr>
                                                                      </c:forEach>

                                      </tbody>
                                    </table>
                                  </div>
                                <!-- End table -->
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

	<script type="text/javascript" src="../js/jquery.min.js"></script>	
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	
		
</body>
</html>