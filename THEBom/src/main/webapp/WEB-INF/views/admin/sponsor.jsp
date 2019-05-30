<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

	<title>The Bom</title>
	
	
	<!-- css -->
	<link rel="stylesheet" type="text/css" href="res/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="res/css/template.css" />
	
</head>

<body data-target="#nino-navbar" data-spy="scroll">
	<!-- What We Do
    ================================================== -->
    <section id="nino-whatWeDo">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">THE BOM</span>
				후원자 조회
			</h2>
			<p class="nino-sectionDesc">
                <div class="skill-main">
                    <table class="table table-bordered">
                        <thead style="color:#f09f9f">
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
	<script type="text/javascript" src="res/js/jqueryn.js"></script>	
	<script type="text/javascript" src="res/js/bootstrap.min"></script>
	
		
</body>
</html>