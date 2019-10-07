<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
                                    <li><a href="seniorMain">홈</a></li>
                                    <li class="active"><a href="diary">일지작성<span class="sr-only">(current)</span></a></li>
                                </ul>
                            </div><!-- /.navbar-collapse -->
                        </div>
                    </div><!-- /.container-fluid -->
                </nav>
            </div>
        </header><!--/#header-->
        
        <div class="container">

            <div class="row">    
                <form method="post" action="notice.html" style="margin:63px">
                    <table class="table table-striped"
                        style="text-align: center; border: 1px solid #dddddd">
                        <thead>
                            <tr>
                                <th colspan="2"
                                    style="background-color: #eeeeee; text-align: center;">일지작성</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"/></td>
                                <td><input type="text" class="form-control" placeholder="날짜" name="bbsTitle" maxlength="50"/></td>
                            </tr>
                            <tr>
                                <td colspan="2"><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height: 350px;"></textarea></td>
                            </tr>
                        </tbody>
                    </table>	
                    <input type="submit" class="btn btn-primary pull-right"  style="background-color: #95e1d3; border-color: #95e1d3" value="글등록" />
                </form>
            </div>
        </div>
    
              

    <!-- Footer
    ================================================== -->
    <footer id="footer">
			
	  </footer><!--/#footer-->

	
	<!-- javascript -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery.min.js"></script>	
	<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/common.js"></script>	
		
</body>
</html>