<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>The bom</title>


<!-- css -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/res/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/res/css/template.css" />
</head>

<body data-target="#nino-navbar" data-spy="scroll">
	<!-- Header
    ================================================== -->
	<header id="nino-header" style="background-color: #fce38a";>
		<div id="nino-headerInner">
			<nav id="nino-navbar" class="navbar navbar-default" role="navigation">
				<div class="container header">
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right">
						<div class="collapse navbar-collapse pull-left"
							id="nino-navbar-collapse">
							<ul class="nav navbar-nav">
								<li><a href="sw_main">홈<span class="sr-only">(current)</span></a></li>
								<li><a href="notice">공지사항</a></li>
								<li><a href="circle">써클조회</a></li>
								<li><a href="seniorList ">노인조회</a></li>
								<li><a href="sponsor ">후원자조회</a></li>
								<li><a href="match">후원매치현황</a></li>
								<li><a href="blind">사각지대 관리</a></li>
								<li class="active"><a href="mypage">마이페이지</a></li>
								<li><a href="/">Logout</a></li>
								<li><a href="" style="color: pink;">${user.fullname }</a></li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->


					</div>
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
	</header>
	<!--/#header-->

	<!-- Our Skill -->
	<section id="our-skill" class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12 wow fadeIn">
					<!-- Info Main -->
					<div class="info-main">
						<div class="section-title left">
							<h2>내정보</h2>
						</div>

						<ul class="info-list">
							<li><i class="fa fa-check"></i>${user.fullname}</li>
							<li><i class="fa fa-check"></i>${user.email}</li>
							<li><a data-target="#layerpop_sm2" data-toggle="modal">
									<button class="btn btn-default">수정하기</button>
							</a></li>

							<div class="modal fade" id="layerpop_sm2">
								<div class="modal-dialog">
									<div class="modal-content" style="width: 70%; left: 15%;">
										<!-- header -->
										<div class="modal-header">
											<!-- header title -->
											<h2>정보변경</h2>
										</div>
										<br />
										<!-- body -->
										<div class="modal-body">
											<form method="post" modelAttribute="student">
												<div class="form-group" style="width: 70%;">
													<label>이름</label>
													<p>${user.fullname}</p>
												</div>
												<div class="form-group" style="width: 70%;">
													<label>이메일 :</label>
													<p>${user.email}</p>
												</div>
												<div class="form-group" style="width: 70%;">
													<label>비밀번호 :</label> <input id="password" type="password"
														path="password" class="form-control" />
												</div>
											</form>
										</div>
										<br />
										<!-- Footer -->
										<div class="modal-footer">
											<button type="button" id="passwordChange"
												class="btn btn-default">등록하기</button>
											&nbsp;
											<button type="button" class="btn btn-default"
												data-dismiss="modal">되돌아가기</button>
										</div>
									</div>
								</div>
							</div>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/ End Our Skill -->
	<!-- Footer
    ================================================== -->
	<footer id="footer"> </footer>
	<!--/#footer-->


	<!-- javascript -->

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/res/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/res/js/bootstrap.min.js"></script>

	<script>
 	 function checkVal2(){
 		if($('#password').val()==''){
 			alert("비밀번호를 입력해주세요.");
 			return false;	
 		}
 		return true;				
 	};

	$('#passwordChange').bind({
		click: function(e){
    		e.preventDefault();
			
    		//입력폼 값 검사
			if(!checkVal2()){
				return false;
			}

			$.ajax({
    			url: "passwordChange",
    			method: "POST",
    			data:  $('#password').val(),
    			dataType: "json",
    			contentType: "application/json;charset=UTF-8",
    			beforeSend: function(){
    				if(confirm('비밀번호를 바꾸시겠습니까?')){	
						return true;
					}
					else{
						return false;
					}    				
    			},
    			success:function(data){
    				if(data){
    					alert(data+"성공하셨습니다.");
    					location.reload();
    					
    				}else{
    					alert("에러1");
    				}
				},
				error: function(){
            		alert("비밀번호가 변경됐습니다.");
         	   }
			});
		}//end of click
	});

      </script>

</body>
</html>