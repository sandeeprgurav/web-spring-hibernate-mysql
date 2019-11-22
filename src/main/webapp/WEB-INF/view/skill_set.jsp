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
			<div id="skillSet" class="jumbotron text-black rounded">
				<h3>Skill Set:</h3>
				<hr />
				<p>
					<b>Web Technologies:</b> Core Java, JSP, Servlet, HTML, CSS,
					jQuery, SQL and JavaScript.
				</p>
				<p>
					<b>Web Application Frameworks:</b> ReactJS, NodeJS, Spring Boot,
					Swagger, REST API, Spring3.0, Hibernate3.0, Struts1.3, Apache
					Kafka, DevOps, Jasper Report, AWS, Azure, Microservices and Google
					Web Toolkit (GWT).
				</p>
				<p>
					<b>Automation Testing Frameworks:</b> Selenium WebDriver, Cucumber,
					TestNG.
				</p>
				<p>
					<b>Databases:</b> Mongo Db, MS-SQL, Oracle and SAP HANA.
				</p>
				<p>
					<b>IDEs:</b> Eclipse, Idea IntelliJ, Visual Studio, Atom.
				</p>
				<p>
					<b>Tools:</b> Jenkins, GIT, MKS, SVN, Bamboo, Maven, ANT, Gradle.
				</p>
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









