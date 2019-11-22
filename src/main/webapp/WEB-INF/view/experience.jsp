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
			<div id="experience" class="jumbotron rounded">
				<h3>Experience:</h3>
				<hr />
				<div class="media">
					<img src="${pageContext.request.contextPath}/resources/img/sap.png"
						class="align-self-start mr-3" style="width: 60px">
					<div class="media-body">
						<h4>SAP Labs (NAPERVILLE, CHICAGO, USA)</h4>
						<p>This application provides the leading SaaS platform to
							procure and manage contingent workers, services such as statement
							of work projects, independent contractors, and specialized talent
							pools. This application used to help Global 2000 firms in nearly
							70 countries.</p>
						<b>Responsibilities:</b>
						<ul>
							<li>Development of new features using Struts, Spring,
								JQuery, custom frameworks etc.</li>
							<li>Development of internal projects using ReactJs, Spring
								Boot and Mongodb.</li>
							<li>Participated in design meeting for new features with BA,
								QA and other stakeholders.</li>
							<li>Implemented continuous build, testing and deploy using
								Jenkins for internal projects.</li>
							<li>Worked on POC using Apache Kafka to improve throughput
								of msessaging servcies.</li>
							<li>Worked on AWS to develop POC to store files data into
								cloud databases for easy scalability.</li>
							<li>Developed Rest API using Spring Boot for mobile
								application’s front end.</li>
							<li>Worked as lead developer to convert monolithic
								application to microservices based application.</li>
							<li>Developed basic automation testing framework for QA team
								using Selenium and TestNG.</li>
						</ul>
					</div>
				</div>
				<br />

				<div class="media">
					<img src="${pageContext.request.contextPath}/resources/img/jet.png"
						class="align-self-start mr-3" style="width: 60px">
					<div class="media-body">
						<h4>GLOBAL TRAVEL SOLUTIONS - JET ENTERPRISE (MUMBAI, INDIA)
						</h4>
						<p>This system facilitating users to plan and do booking for
							all domestic and international flights linked with hotels, rented
							Car and other relevant stuff to provide as complete travel
							package with the help of shopping cart.</p>
						<b>Responsibilities:</b>
						<ul>
							<li>Designed and developed User Management, Airline schedule
								and Booking modules.</li>
							<li>Developed exception, caching, logging frameworks. (GWT,
								Spring, Hibernate and MSSQL DB)</li>
						</ul>
					</div>
				</div>
				<br />

				<div class="media">
					<img src="${pageContext.request.contextPath}/resources/img/isg.png"
						class="align-self-start mr-3" style="width: 60px">
					<div class="media-body">
						<h4>INSOLUTION GLOBAL PVT LTD. (MUMBAI, INDIA)</h4>
						<p>This system processes all credit card operation related
							data files e.g. Switch, payment, billing, merchant settlement
							files. Using this system reconciliation of all these data files
							with respective data files can carried out on daily basis to
							check the authorization, billing and received payments
							transactions are correct or not .</p>
						<b>Responsibilities:</b>
						<ul>
							<li>Development of ‘File Processing and Reconciliation’
								module which process all uploaded files into database server and
								reconciled the all uploaded data. (Struts, JQuery,MSSQL
								database)</li>
							<li>Development of all MIS reports for uploaded and
								reconciled sources. Performed code validation and peer reviews.</li>
						</ul>
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









