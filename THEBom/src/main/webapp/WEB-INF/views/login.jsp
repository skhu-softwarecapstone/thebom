<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/res/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/res/css/template.css" />

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
<body>

	<section class="login_container">
		<article style="margin: 10px 20px 10px 20px">
			<h1>the bom</h1>
			<div class="tabs">
				<span class="tab signin active"><a href="#signin">로그인</a></span> <span
					class="tab signup"><a href="#signup">회원가입</a></span>
			</div>
			<div class="content">
				<div class="signin-cont cont">
					<form action="#" method="post" enctype="multipart/form-data">
						<input type="email" name="email" id="email" class="inpt"
							required="required" placeholder="Your email"> <label
							for="email">Your email</label> <input type="password"
							name="password" id="password" class="inpt" required="required"
							placeholder="Your password"> <label for="password">Your
							password</label> <input type="checkbox" id="remember" class="checkbox"
							checked> <label for="remember">Remember me</label>
						<div class="submit-wrap">
							<input type="submit" value="Sign in" class="submit"> <a
								href="#" class="more">Forgot your password?</a>
						</div>
					</form>
				</div>
				<div class="signup-cont cont">
					<form action="#" method="post" enctype="multipart/form-data">
						<input type="name" name="name" id="name" class="inpt"
							required="required" placeholder="Your name"> <label
							for="name">Your name</label> <input type="email" name="email"
							id="email" class="inpt" required="required"
							placeholder="Your email"> <label for="email">Your
							email</label> <input type="password" name="password" id="password"
							class="inpt" required="required" placeholder="Your password">
						<label for="password">Your password</label>
						<div class="submit-wrap">
							<input type="submit" value="Sign up" class="submit"> <a
								href="#" class="more">Terms and conditions</a>
						</div>
					</form>
				</div>
			</div>
		</article>

	</section>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript">
$('.tabs .tab').click(function(){
    if ($(this).hasClass('signin')) {
        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');
        $('.cont').hide();
        $('.signin-cont').show();
    } 
    if ($(this).hasClass('signup')) {
        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');
        $('.cont').hide();
        $('.signup-cont').show();
    }
});

</script>
</body>
</html>

