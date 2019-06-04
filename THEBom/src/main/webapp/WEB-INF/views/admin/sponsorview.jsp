<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- tag library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>The Bom</title>

<!-- css -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/res/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/res/css/template.css" />

</head>

<body data-target="#nino-navbar" data-spy="scroll">
	<!-- What We Do
    ================================================== -->
	<section id="nino-whatWeDo">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">THE BOM</span> 방문후원자 상세페이지
			</h2>
			<p class="nino-sectionDesc">
			<div class="skill-main">
				<div class="sectionContent">
					<div class="fw" layout="row">
						<div class="col-md-4 col-sm-6 item seniorview">
							<div layout="row">
								<div>
									<h4 class="nino-serviceTitle">보고서</h4>
									<p>title${ sponsor.report.title }</p>
									<p>memo${ sponsor.report.memo }</p>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-6 item seniorview">
							<div layout="row">
								<div>
									<h4 class="nino-serviceTitle">주소</h4>
									<p>시/도${ sponsor.address.city }</p>
									<p>zipcode${ sponsor.address.zip }</p>
									<p>좌표X${ sponsor.address.location.x }</p>
									<p>좌표Y${ sponsor.address.location.y }</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</p>

		</div>
		</div>
	</section>
	<!--/#nino-whatWeDo-->





	<!-- Footer
    ================================================== -->
	<footer id="footer">
		<div class="container">
			<div class="nino-copyright">
				Copyright &copy; 2019 <a target="_blank">The bom</a>. All Rights
				Reserved. <br /> MoGo free PSD template by Laaqiq
			</div>
		</div>
	</footer>
	<!--/#footer-->


	<!-- javascript -->
	<script type="text/javascript" src="res/js/jquery.min.js"></script>
	<script type="text/javascript" src="res/js/bootstrap.min.js"></script>


</body>
</html>