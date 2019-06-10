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
<link rel="stylesheet" type="text/css" href="res/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="res/css/template.css" />

<!-- javascript -->
<script type="text/javascript" src="res/js/jqueryn.min.js"></script>
<script type="text/javascript" src="res/js/bootstrap.min.js"></script>
<script type="text/javascript" src="res/js/common.js"></script>

</head>

<body data-target="#nino-navbar" data-spy="scroll">
	<!-- What We Do
    ================================================== -->
	<section id="nino-whatWeDo">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">THE BOM</span> 방문후원자 목록
			</h2>
			<p class="nino-sectionDesc">
			<div class="skill-main">
				<table class="table table-bordered">
					<thead style="color: #f09f9f">
						<tr>
							<th>id</th>
							<th>spNo</th>
							<th>name</th>
							<th>gender</th>
							<th>point</th>
							<th>phone</th>
							<th>visits</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="sponsor" items="${ sponsors }">
							<tr data-url="sponsorview1?id=${ sponsor.id }">
								<td>${ sponsor.id }</td>
								<td>${ sponsor.spNo }</td>
								<td>${ sponsor.name }</td>
								<td><c:choose>
										<c:when test="${ sponsor.gender==true }">男</c:when>
										<c:otherwise>女</c:otherwise>
									</c:choose></td>
								<td>${ sponsor.point}</td>
								<td>${ sponsor.phone}</td>
								<td>${ sponsor.visits}</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
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
	<script>
		$("[data-url]").click(function() {
			var url = $(this).attr("data-url");
			location.href = url;
		})
	</script>




</body>
</html>