<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>The bom</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/res/css/main.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/res/css/noscript.css" />
	<style>
		body{
			background-color:#ffecb8;
		}
	</style>
</head>
<body>
<div id="wrapper">
      <!-- logo -->
      <div id="login-logo"> 
         <img src="/res/images/노인.png" alt="logo">
      </div>
      <!-- Main -->
      <header>
         <div id="kakao">
         <a
         href="https://kauth.kakao.com/oauth/authorize?client_id=a3f9cdf6ff350244d4e4e19401521bfd&redirect_uri=http://localhost:8080/login&response_type=code">
         <img src="/res/images/yellow_login_kakao.png">
      </a>
      </div>
        </header>

      <!-- Footer -->
      <footer id="footer">
         <ul class="copyright">
            <li> &copy;copyright &nbsp Data Campus Team Truffle</li>
         </ul>
      </footer>
   </div>
</body>
</html>