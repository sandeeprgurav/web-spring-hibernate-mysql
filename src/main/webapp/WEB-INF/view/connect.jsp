<html>

<head>
<title>Home Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

</head>

<body>
	<nav
		class="container navbar navbar-expand-md navbar-light bg-light sticky-top">
		<div class="container-fluid">
			<b><a class="navbar-brand nameCss" href="#"> Sandeep Gurav</a></b>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="${pageContext.request.contextPath}/student/list">Student
							List</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/student/skillSet">Skill
							Set</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/student/education">Education</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/student/experience">Experience</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/student/connect">Connect</a>
					</li>
				</ul>
			</div>
	</nav>
	<div class="container navbar navbar-expand-md navbar-light bg-light ">
		<div id="content">
			<div id="connect" class="jumbotron rounded">
				<div class="container-fluid padding">
					<div class="row text-center padding">
						<div class="col-12">
							<h2>Connect</h2>
						</div>
						<div class="col-12 social padding">
							<a href="https://www.facebook.com/sandeep.gurav.357"
								target="_blank"><i class="fab fa-facebook"></i></a> <a
								href="https://twitter.com/home" target="_blank"><i
								class="fab fa-twitter"></i></a> <a
								href="https://aboutme.google.com/" target="_blank"><i
								class="fab fa-google-plus-g"></i></a> <a
								href="https://www.linkedin.com/in/sandeep-gurav-41001428/"
								target="_blank"><i class="fab fa-linkedin"></i></a> <a
								href="https://www.youtube.com/channel/UCmJuG155Jo30S7PF6mCznpA?view_as=subscriber"
								target="_blank"><i class="fab fa-youtube"></i></a>
						</div>
					</div>
				</div>
			</div>
			<form:form action="${pageContext.request.contextPath}/logout"
				method="POST">
				<input type="submit" value="Logout" />
			</form:form>
		</div>
	</div>

</body>

</html>









