<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- Font Awesome -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
  rel="stylesheet"
/>
<!-- Google Fonts -->
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.0.0/mdb.min.css"
  rel="stylesheet"
/>
</head>
<body>
	<div class="container">

		<nav class="navbar navbar-expand-lg  navbar-dark bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Employee CRUD Operations</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="index">Home</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="addEmployee">Add Employee</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="displayAll">View All Employee</a></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								Search </a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href=searchBasedOnId>Search By Id</a></li>
								<li><a class="dropdown-item" href="searchBasedOnName">Search By Name</a></li>




								<li><a class="dropdown-item" href="#"> Search By Status &raquo;
								</a>
									<ul class="dropdown-menu dropdown-submenu">
										<li><a class="dropdown-item" href="#">Search By Active Employees</a>
										</li>
										<li><a class="dropdown-item" href="#">Search By Active Employees</a>
										</li>
									</ul></li>





								<li><a class="dropdown-item" href="searchBasedOnSalaryRange">Search By Salary
										Range</a></li>
								<li><a class="dropdown-item" href="searchBasedOnAgeRange">Search By Age
										Range</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</nav>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
		<!-- MDB -->

</body>
</html>