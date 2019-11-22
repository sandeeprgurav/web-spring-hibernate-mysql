<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>
<title>Student List</title>

<!-- reference our style sheet -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
					<li class="nav-item active">
						<a class="nav-link" href="${pageContext.request.contextPath}/student/list">
							Student List
						</a>
					</li>
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
		</div>
	</nav>

	<div class="container navbar navbar-expand-md navbar-light bg-light ">

		<div id="content">

			<!-- put new button: Add Customer -->

			<input type="button" value="Add Student"
				onclick="window.location.href='showFormForAdd'; return false;"
				class="add-button" />

			<!--  add our html table here -->

			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>City</th>
					<th>State</th>
					<th>Graduation</th>
					<th>Action</th>
				</tr>

				<c:forEach var="tempStudent" items="${students}">

					<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/student/showFormForUpdate">
						<c:param name="studentId" value="${tempStudent.id}" />
					</c:url>

					<!-- construct an "delete" link with customer id -->
					<c:url var="deleteLink" value="/student/delete">
						<c:param name="studentId" value="${tempStudent.id}" />
					</c:url>

					<tr>
						<td>${tempStudent.firstName}</td>
						<td>${tempStudent.lastName}</td>
						<td>${tempStudent.email}</td>
						<td>${tempStudent.city}</td>
						<td>${tempStudent.state}</td>
						<td>${tempStudent.graduation}</td>

						<td><a href="${updateLink}">Update</a> | <a
							href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this Student?'))) return false">Delete</a>
						</td>

					</tr>

				</c:forEach>

			</table>
			<form:form action="${pageContext.request.contextPath}/logout"
				method="POST">
				<input type="submit" value="Logout" />
			</form:form>
		</div>
	</div>
		
</body>

</html>









