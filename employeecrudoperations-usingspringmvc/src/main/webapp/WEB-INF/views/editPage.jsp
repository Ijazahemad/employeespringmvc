<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>

		<jsp:include page="navbar.jsp"></jsp:include>
		
		
		<div class="container">
			<form action="http://localhost:8080/employeecrudoperations-usingspringmvc/employee/update" method="post">
			<input type="hidden" name="id" value="${ emp.id }">
				<div class="mb-3">
					<label for="name" class="form-label">Name</label> <input
						type="text" class="form-control" id="exampleInputEmail1"
						name="name" value = "${ emp.name }">
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Email address</label> <input
						type="email" class="form-control" id="email" name="email" value="${ emp.email }">
					<div id="emailHelp" class="form-text">We'll never share your
						email with anyone else.</div>
				</div>

				<div class="mb-3">
					<label for="dob" class="form-label">Date Of Birth</label> <input
						type="date" class="form-control" id="dob" name="dob" value="${ emp.dob }">
				</div>

				<div class="mb-3">
					<label for="sal" class="form-label">Salary</label> <input
						type="text" class="form-control" id="sal" name="salary" value="${ emp.salary }">
				</div>

			<c:choose>
			<c:when test="${ emp.status }}">
				<div class="mb-3">
					<label>Status</label>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault1" name="status" value="1" checked="checked"> 
							<label
							class="form-check-label" for="flexRadioDefault1" > Active </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault2"  name="status" value="0"> <label
							class="form-check-label" for="flexRadioDefault2" >Inactive</label>
					</div>
				</div>
				</c:when>
				<c:otherwise>
				<div class="mb-3">
					<label>Status</label>
					<div class="form-check">
						<input class="form-check-input" type="radio"
						 id="flexRadioDefault1" name="status" value="1"> 
							<label
							class="form-check-label" for="flexRadioDefault1" > Active </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							 id="flexRadioDefault2"  name="status" value="0" checked="checked"> <label
							class="form-check-label" for="flexRadioDefault2" >Inactive</label>
					</div>
				</div>
				</c:otherwise>
			</c:choose>

				<button type="submit" class="btn btn-primary">Update Employee</button>
			</form>

		</div>

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>
</body>
</html>