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
                                <li class="active"><a href="notice">공지사항</a></li>
                                <li><a href="circle">써클조회</a></li>
                                <li><a href="seniorList">노인조회</a></li>
                                <li><a href="sponsor ">후원자조회</a></li>
                                <li><a href="sponsorview ">후원매치현황</a></li>
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
    <section id="portfolio" class="section archive page" style="min-height:100%; height: 666px;">
			<div class="container" style="min-height:100%;">
				    <div class="row">
						<h3 style="color:gray">공지사항 게시판</h1>
                        <h6 style="color:gray">더불어돌봄 관리자 공지사항 게시판입니다</h4>
                            <div class="pull-right mb5">
                                    <a href="notice_write" class="btn btn-info search-button">
                                      <span class="glyphicon glyphicon-user"></span> 공지사항 등록</a>
                            </div>
                                <!-- Start table -->
                                <div class="notice_container"> 
                                    <table class="table table-bordered mt5 table-hover">
                                      <thead style="color:black">
                                        <tr>
                                          <th>제목</th>
                                          <th>내용</th>
                                          <th>작성날짜</th>
                                          <th>작성자</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <c:forEach var="notice" items="${ notices }">
                                          <tr data-url="notice_detail?no=${notice.no}">
                                            <td>${ notice.title }</td>
                                            <td>${ notice.content}</td>  
                                            <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${ notice.createdDate}" /></td>
                                            <td>${ notice.userId }</td>
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
    <footer id="footer" style="height:100px;">
			
	  </footer><!--/#footer-->

	
	<!-- javascript -->

	<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery.min.js"></script>	
	<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/common.js"></script>
		
</body>
</html>