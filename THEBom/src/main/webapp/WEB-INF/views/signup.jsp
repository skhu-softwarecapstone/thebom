<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>signUp</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>res/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>res/css/template.css" />

<style rel="stylesheet">
@charset "UTF-8";

@import url(https://fonts.googleapis.com/css?family=Lato:400,700);

* {
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}
</style>
</head>
<body class="text-center">
	<section class="login_container">
		<article style="margin: 10px 20px 10px 20px">
			<div class="content">
				<div class="signin-cont cont">
					<div layout:fragment="content">
						<form class="form-signin" th:action="@{/signup}" method="post">
							<h1 class="h3 mb-3 font-weight-normal">Signup Here</h1>
							<div th:if="${param.error}">독거노인 돌봄서비스</div>
							<div th:if="${param.logout}">"더봄" 회원가입 해주세요.</div>
							<label for="inputUsername" class="sr-only">email</label>
							 <input type="email" name="email" id="inputEmail" class="form-control" placeholder="Username" required="" />
							<label for="inputPassword" class="sr-only">Password</label>
							 <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required="" />
							<label for="inputFullname" class="sr-only">Full Name</label>
							 <input type="text" name="fullname" id="inputEmail" class="form-control" placeholder="Fullname" required="" /> <br/>
							<label for="inputFullname" class="sr-only">Full Name</label>
							
							<button class="btn btn-lg btn-primary btn-block" type="submit">Sign Up</button>
						</form>
						<form class="form-signin" th:action="@{/login}" method="get">
							<button class="btn btn-md btn-success btn-block" type="Submit">Sign In</button>
						</form>
					</div>
				</div>
			</div>
		</article>
	</section>

</body>
</html>