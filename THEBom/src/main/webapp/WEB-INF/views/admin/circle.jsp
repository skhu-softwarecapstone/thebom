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

	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/res/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/res/css/template.css" />




</head>

<body data-target="#nino-navbar" data-spy="scroll" class="main">
 <nav id="nino-navbar" class="navbar navbar-default" role="navigation">
				<div class="container">

					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nino-navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="/main">THE BOM</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right">
						<div class="collapse navbar-collapse pull-left" id="nino-navbar-collapse">
							<ul class="nav navbar-nav">
								<li><a href="main">홈<span class="sr-only">(current)</span></a></li>
								<li><a href="#nino-story">진행 현황 조회</a></li>
								<li><a href="checkdailylog">일지 확인</a></li>
								<li class="active"><a href="circle">써클 관리</a></li>
								<li><a href="senior">관활 독거노인 조회</a></li>
								<li><a href="sponsor">후원자 조회</a></li>
							</ul>
						</div><!-- /.navbar-collapse -->
						<ul class="nino-iconsGroup nav navbar-nav">
							<li><a href="#" class="nino-search"><i class="mdi mdi-magnify nino-icon"></i></a></li>
						</ul>
					</div>
				</div><!-- /.container-fluid -->
			</nav>
	<!-- Story About Us
    ================================================== -->
	
		<div class="bar">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Circle management </span>
				
			</h2>
			<div class="col-md-12 col-sm-4" class="search">
				<button class="search-button" data-toggle="modal" data-target="#myModal" style="float:right; margin-bottom:10px">
					
				</button>
			</div>

			<!--ëª¨ë¬ì°½-->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">Ã
							</button>
							<h4 class="modal-title" id="myModalLabel">
								ì¨í´ì¶ê°
							</h4>
						</div>
						<div class="modal-body">
							ë´ì©.
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">
								ë«ê¸°
							</button>
							<button type="button" class="btn btn-primary" id="myButtons1">
								ì ì¥
							</button>
						</div>
					</div>
				</div>
			</div>
			<!--ëª¨ë¬ì°½ ë-->

			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-4 col-sm-4">
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="mdi mdi-camera nino-icon"></i>
											ì¨í´ì´ë¦â¨
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body">
										ì¨í´ë´ì©
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false"
										 aria-controls="collapseTwo">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="mdi mdi-owl nino-icon"></i>
											ì¨í´ì´ë¦â¨
										</a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
									<div class="panel-body">
										ì¨í´ë´ì©</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false"
										 aria-controls="collapseThree">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="mdi mdi-laptop-mac nino-icon"></i>
											ì¨í´ì´ë¦â¨
										</a>
									</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body">
										ì¨í´ë´ì©
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingfour">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsefour" aria-expanded="true" aria-controls="collapseOne">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="mdi mdi-camera nino-icon"></i>
											ì¨í´ì´ë¦â¨
										</a>
									</h4>
								</div>
								<div id="collapsefour" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body">
										ì¨í´ë´ì©
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!--/#nino-story-->

	<!-- Footer
    
	<footer id="footer">
		<div class="container">
			<div class="nino-copyright">Copyright &copy; 2019 <a target="_blank">The bom</a>. All Rights Reserved. <br/> MoGo free
				PSD template by Laaqiq
			</div>
		</div>
	</footer>
	-->

	<!-- javascript -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	
	<script>
		$("#myButtons1").click(function(){
		  alert('AJAXë¡ ì²ë¦¬íê³  ì ì ìëµì´ë©´.. hide í´ ì¤ë¤.');
	$('#myModal').modal('hide')
	   });
   </script>  


</body>

</html>