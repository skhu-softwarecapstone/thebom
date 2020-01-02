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
								<li><a href="sp_main">홈<span
										class="sr-only">(current)</span></a></li>
								<li><a href="dailylog">방문 기록</a></li>
								<li class="active"><a href="blind">사각지대 신고</a></li>
								<li><a href="donate">직접 후원하기</a></li>
								<li><a href="mypage">마이페이지</a></li>
								<li><a href="<c:url value='/'/>">Logout</a></li>
								<li><a href="" style="color: pink;">${user.fullname }</a></li>
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
                <form:form method="post" modelAttribute="part" style="margin:63px">
                    <table class="table table-striped"
                        style="text-align: center; border: 1px solid #dddddd">
                        <thead>
                            <tr>
                                <th colspan="2"
                                    style="background-color: #eeeeee; text-align: center;">
                                    	사각지대 신고하기</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input class="form-control" placeholder="신고 대상 이름" name="name" maxlength="50"/></td>
                            </tr>
                            <tr>
                                <td><textarea class="form-control" placeholder="신고 내용(구체적인 위치,특이사항  등 기재 ) 필요시  사회복지사의 연락이 갈 수 있습니다." name="content" maxlength="2048" style="height: 350px;"></textarea></td>
                            </tr>
                        </tbody>
                    </table>
                    <a href="blind" class="btn btn-primary pull-right"  style="background-color: #95e1d3; border-color: #95e1d3">목록으로</a>	
                    <input type="submit" class="btn btn-primary pull-right"  style="background-color: #95e1d3; border-color: #95e1d3; margin-right: 5px;" value="신고" />
                   
                </form:form>
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


</body>
</html>