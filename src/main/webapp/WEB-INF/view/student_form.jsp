<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Customer</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/student-style.css">
</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>Student Account</h2>
		</div>
	</div>

	<div class="container navbar navbar-expand-md navbar-light bg-light ">
		<h3>Save Student</h3>
	
		<form:form action="saveStudent" modelAttribute="student" method="POST">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
					
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" /></td>
					</tr>
				
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>
					
					<tr>
						<td><label>City:</label></td>
						<td><form:input path="city" /></td>
					</tr>
					
					<tr>
						<td><label>State:</label></td>
						<td><form:input path="state" /></td>
					</tr>
					
					<tr>
						<td><label>Graduation:</label></td>
						<td><form:input path="graduation" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/student/list">Back to List</a>
		</p>
	
	</div>

</body>

</html>