<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/res/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/res/css/template.css" />
    <style media="screen">
      .registerform{
        margin: 0 auto;
        text-align: center;
        width:30%;
      }
      h3{
        text-align: center;
        margin: 40px;
      }
      .form-group{
        margin: 30px;
      }
 	body{
 		color:black;
 	}

    </style>
  </head>
  <body class="main">
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
						<a class="navbar-brand" href="landing">THE BOM</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right">
						<div class="collapse navbar-collapse pull-left" id="nino-navbar-collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#nino-header">홈<span class="sr-only">(current)</span></a></li>
								<li><a href="introduce">더 봄 소개</a></li>
							</ul>
						</div><!-- /.navbar-collapse -->
						<ul class="nino-iconsGroup nav navbar-nav">
							<li><a href="#" class="nino-search"><i class="mdi mdi-magnify nino-icon"></i></a></li>
						</ul>
					</div>
				</div><!-- /.container-fluid -->
			</nav>
   
   <div class="bar">
   
    <h3>회원가입</h3>
    <form class="registerform">

      <div class="form-group row">
        <label class="col-sm-5 col-form-label" for="inputId">아이디</label>
        <div class="col-sm-7">
          <input type="text" class="form-control" name="inputId" >
        </div>
      </div>
      <div class="form-group row">
        <label class="col-sm-5 col-form-label" for="inputPassword">비밀번호</label>
        <div class="col-sm-7">
          <input type="password" class="form-control" name="InputPassword" >
        </div>
      </div>

      <div class="form-group row">
        <label  class="col-sm-5 col-form-label" for="inputPassword2">비밀번호 확인</label>
        <div class="col-sm-7">
          <input type="password" class="form-control" id="InputPassword2" >
        </div>
      </div>

      <div class="row">
        <div class="select">
        <label class="col-form-label col-sm-5 pt-0">성별</label>
        <div class="col-sm-7">
          <label class="radio-inline">
          <input type="radio" name="sex"  value="woman"> 여자
          </label>
          <label class="radio-inline">
          <input type="radio" name="sex" s value="man"> 남자
         </label>
        </div>
      </div>
      </div>

      <div class="form-group row">
        <label  class="col-form-label col-sm-5 pt-0" for="birthday">생년월일(6자리)</label>
        <div class="col-sm-7">
          <input type="text" name="birthday">
        </div>
      </div>

      <div class="form-group row">
        <label class="col-form-label col-sm-5 pt-0" for="address">주소</label>
        <div class="col-sm-7">
          <input type="text" name="address">
        </div>
      </div>

      <div class="form-group row">
        <label class="col-form-label col-sm-5 pt-0" for="phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required>전화번호</label>
        <div class="col-sm-7">
          <input type="tel" name="phone">
        </div>
      </div>
      <div class="form-group row">
        <label class="col-form-label col-sm-5 pt-0" for="visitDate">방문 선호 날짜</label>
        <div class="col-sm-7">
          <input type="date" name="visitDate">
        </div>
      </div>
      <div class="form-group row">
        <label class="col-form-label col-sm-5 pt-0" for="visitTime">방문 선호 시간</label>
        <div class="col-sm-7">
          <input type="text" name="visitTime">
        </div>
      </div>
      <div class="form-group row">
        <label class="col-form-label col-sm-5 pt-0"  for="image">사진</label>
        <div class="col-sm-7">
          <input type="image" src="" alt="사진" width="48" height="48">
        </div>
      </div>
      <div>
      <button type="submit" class="btn btn-default">등록</button>
    </form>
    
    </div>
  </body>
</html>
