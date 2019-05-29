<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

	<title>The Bom</title>
	
	<!-- css -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="css/template.css" />
	
</head>

<body data-target="#nino-navbar" data-spy="scroll">
	<!-- What We Do
    ================================================== -->
    <section id="nino-whatWeDo">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">THE BOM</span>
				관할 노인조회
            </h2>
            <div style="float:right" class="search">
                <div class=" col-sm-12 col-xs-12" >
                    <form style="display: inline-block">
                        <select>
                            <option>이름</option>
                            <option>번호</option>
                        </select>
                        
                        <div >
                            <form><input /></form>
                        </div>

                        <div style="display: inline-block"><button class="search-button">검색</button></div>
                        <div>페이지 크기
                            <select>
                                <option>10</option>
                                <option>15</option>
                                <option>30</option>
                            </select>
                        </div>
                    </form>
			    </div>
            </div>
			<p class="nino-sectionDesc">
                <div class="skill-main">
                    <table class="table table-bordered">
                        <thead style="color:black">
                            <tr>
                                <th>id</th>
                                <th>학번</th>
                                <th>이름</th>
                                <th>학과</th>
                                <th>수강학기</th>
                                <th>졸업요건 충족여부</th>
                            </tr>
                        </thead>
                        <tbody>
                                <tr data-url="student_details?id=${ student.id }">
                                    <td>${ student.id }</td>
                                    <td>${ student.studentId }</td>
                                    <td>${ student.name }</td>
                                    <td>${ student.dname}</td>
                                    
                                </tr>
                        </tbody>
                    </table>
                </div>
            </p>
            </div>
            
    	</div>
    </section><!--/#nino-whatWeDo-->

    
    <!-- Footer
    ================================================== -->
    <footer id="footer">
        <div class="container">
			<div class="nino-copyright">Copyright &copy; 2019 <a target="_blank"  >The bom</a>. All Rights Reserved. <br/> MoGo free PSD template by Laaqiq</div>
        </div>
    </footer><!--/#footer-->

	
	<!-- javascript -->
	<script type="text/javascript" src="js/jquery.min.js"></script>	
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	
		
</body>
</html>