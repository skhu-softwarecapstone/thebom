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

		<form class="form-signin" action="/signup" method="post">
			<h1 class="h3 mb-3 font-weight-normal">Signup Here</h1>

			<label for="inputUsername" class="sr-only">email</label> <input
				type="email" name="email" id="inputEmail" class="form-control"
				placeholder="email" required=""  style="margin:10px;" /> <label for="inputPassword"
				class="sr-only">Password</label> <input type="password"
				name="password" id="inputPassword" class="form-control" 
				placeholder="Password" required=""  style="margin:10px;" /> <label for="inputFullname"
				class="sr-only">Full Name</label> <input type="text" name="fullname" 
				id="inputEmail" class="form-control" placeholder="Fullname"
				required=""  style="margin:10px;" />
			<button class="btn" style="background-color:transparent;" type="submit">Sign
				Up</button>
		</form>
		<form class="form-signin" action="/login" method="get">
			<button class="btn" style="background-color:transparent;" type="Submit">Sign
				In</button>
		</form>
		</div>
		</body>
</html>
</article>
</section>