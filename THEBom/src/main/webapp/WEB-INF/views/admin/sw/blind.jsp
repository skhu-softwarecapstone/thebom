<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- tag library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
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
                                <li><a href="seniorList ">노인조회</a></li>
                                <li><a href="sponsor ">후원자조회</a></li>
                                <li><a href="match">후원매치현황</a></li>
                                <li class="active"><a href="blind">사각지대 관리</a></li>
                                <li><a href="mypage ">마이페이지</a></li>
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
    <section id="portfolio" class="section archive page" style="min-height:100%;">
			<div class="container">
				    <div class="row">
						<h3 style="color:gray">사각지대 관리하기</h3>
                        
                                <!-- Start table -->
                                <div class="notice_container"> 
                                    <table class="table table-bordered mt5 table-hover">
                                      <thead style="color:black">
                                        <tr>
                                          <th>신고대상</th>
                                          <th>신고내용</th>
                                          <th>신고날짜</th>
                                          <th>작성자</th>
                                          <th>처리상태</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <c:forEach var="blind" items="${ blinds }">
                                          <tr data-url="blind_detail?bNo=${blind.BNo}">
                                            <td>${ blind.name }</td>
                                            <td>${ blind.content}</td>  
                                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${blind.date}" /></td>
                                            <td>${ blind.userId}</td> 
                                            <td value="${blind.processState}">${blind.processState==0?"접수대기":blind.processState==1?"접수완료":"처리완료"}</td>
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
						  <my:pagination pageSize="${ pagination.sz }" recordCount="${ pagination.recordCount }" 
                 queryStringName="pg" />

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
	
	<script>
	$(document).ready(function() {
		$("td").filter("td[value='0']").css("color","pink");
		$("td").filter("td[value='1']").css("color","#6799FF");
		$("td").filter("td[value='2']").css("color","#8EE088");
	});
	</script>
	
</body>
</html>