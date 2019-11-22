<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

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
			<security:authorize access="hasRole('MANAGER')">

				<p>
					<a href="${pageContext.request.contextPath}/leaders">Leadership
						Meeting</a> (Only for Manager peeps)
				</p>

			</security:authorize>


			<security:authorize access="hasRole('ADMIN')">

				<p>
					<a href="${pageContext.request.contextPath}/systems">IT Systems
						Meeting</a> (Only for Admin peeps)
				</p>

			</security:authorize>

			<hr>

			<form:form action="${pageContext.request.contextPath}/logout"
				method="POST">

				<input type="submit" value="Logout" />

			</form:form>
		</div>
	</div>
</body>
</html>









