<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/res/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/res/css/template.css" />


</head>
<
<section class="login_container">
	<article style="margin: 10px 20px 10px 20px">
		<h1>the bom</h1>

		<form class="form-signin" action="/login" method="post">
			<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
			
			<label for="inputEmail" class="sr-only">Email address</label> <input
				type="email" name="email" id="inputEmail" class="form-control"
				placeholder="Email" required="" /> <label for="inputPassword"
				class="sr-only">Password</label> <input type="password"
				name="password" id="inputPassword" class="form-control"
				placeholder="Password" required="" />
			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
				in</button>
		</form>
		<form class="form-signin" action="/signup" method="get">
			<button class="btn btn-md btn-success btn-block" type="Submit">Signup
				Here</button>
		</form>
		</div>
		</div>
	</article>
</section>