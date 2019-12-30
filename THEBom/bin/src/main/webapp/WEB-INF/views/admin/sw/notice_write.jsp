<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<!-- tag library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:url var="R" value="/" />

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
                                <li class="active"><a href="notice">공지사항</a></li>
                                <li><a href="circle">써클조회</a></li>
                                <li><a href="seniorList">노인조회</a></li>
                                <li><a href="sponsor">후원자조회</a></li>
                                <li><a href="match">후원매치현황</a></li>
                                <li><a href="blind">사각지대 관리</a></li>
                                 <li><a href="mypage">마이페이지</a></li>
                                 <li><a href="" style="color:pink;">${user.fullname }</a></li>
                                </ul>                               

                            </div><!-- /.navbar-collapse -->
                        </div>
                    </div><!-- /.container-fluid -->
                </nav>
            </div>
        </header><!--/#header-->
        
        <div class="container">

            <div class="row">    
                <form:form method="post" modelAttribute="part" style="margin:63px">
                    <table class="table table-striped"
                        style="text-align: center; border: 1px solid #dddddd">
                        <thead>
                            <tr>
                                <th colspan="2"
                                    style="background-color: #eeeeee; text-align: center;">게시판
                                    	공지사항 작성</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input class="form-control" placeholder="글 제목" name="title" maxlength="50"/></td>
                            </tr>
                            <tr>
                                <td><textarea class="form-control" placeholder="글 내용" name="content" maxlength="2048" style="height: 350px;"></textarea></td>
                            </tr>
                        </tbody>
                    </table>
                    <a href="notice" class="btn btn-primary pull-right"  style="background-color: #95e1d3; border-color: #95e1d3">목록으로</a>	
                    <input type="submit" class="btn btn-primary pull-right"  style="background-color: #95e1d3; border-color: #95e1d3; margin-right: 5px;" value="글등록" />
                   
                </form:form>
            </div>
        </div>
    
              

    <!-- Footer
    ================================================== -->
    <footer id="footer">
			
	  </footer><!--/#footer-->

	
	<!-- javascript -->
	
	<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery.min.js"></script>	
	<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/bootstrap.min.js"></script>
	
	
		
</body>
</html>