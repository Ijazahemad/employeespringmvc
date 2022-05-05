<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Form</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
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
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="addEmployee">Add Employee</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="displayAll">View All Employee</a></li>
				</ul>
			</div>
		</div>
		</nav>
		<div class="container">
			<form action="addemp" method="post">
				<div class="mb-3">
					<label for="name" class="form-label">Name</label> <input
						type="text" class="form-control" id="exampleInputEmail1"
						name="name">
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Email address</label> <input
						type="email" class="form-control" id="email" name="email">
					<div id="emailHelp" class="form-text">We'll never share your
						email with anyone else.</div>
				</div>

				<div class="mb-3">
					<label for="dob" class="form-label">Date Of Birth</label> <input
						type="date" class="form-control" id="dob" name="dob">
				</div>

				<div class="mb-3">
					<label for="sal" class="form-label">Salary</label> <input
						type="text" class="form-control" id="sal" name="salary">
				</div>

				<div class="mb-3">
					<label>Status</label>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault1" name="status" value="1"> 
							<label
							class="form-check-label" for="flexRadioDefault1" > Active </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault2"  name="status" value="0"> <label
							class="form-check-label" for="flexRadioDefault2" >Inactive</label>
					</div>
				</div>

				<button type="submit" class="btn btn-primary">Add Employee</button>
			</form>

		</div>
	</div>
</body>
</html>