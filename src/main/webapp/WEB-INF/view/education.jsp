<html>

<head>
<title>Home Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

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
			<div id="education" class="jumbotron rounded">
				<h3>Education:</h3>
				<hr />
				<div class="conainer-fluid padding">
					<div class="row text-center padding">
						<div class="col-xs-12 col-sm-6 col-md-4">
							<img
								src="${pageContext.request.contextPath}/resources/img/wilmington.jpg"
								class="align-self-start mr-3" style="width: 160px">
							<h3>MS-IT</h3>
							<p>Wilmington University, New Castle, Delaware,19720,USA</p>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-4">
							<img
								src="${pageContext.request.contextPath}/resources/img/mumbaiUniversity.png"
								class="align-self-start mr-3" style="width: 160px">
							<h3>MBA-IT</h3>
							<p>Mumbai University, Mumbai, Maharashtra, India</p>
						</div>
						<div class="col-sm-12 col-md-4">
							<img
								src="${pageContext.request.contextPath}/resources/img/mumbaiUniversity.png"
								class="align-self-start mr-3" style="width: 160px">
							<h3>BE-EXTC</h3>
							<p>Mumbai University, Mumbai, Maharashtra, India</p>
						</div>
					</div>
				</div>
				<br />
			</div>
			<form:form action="${pageContext.request.contextPath}/logout"
				method="POST">

				<input type="submit" value="Logout" />

			</form:form>
		</div>
	</div>




</body>

</html>









