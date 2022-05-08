<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Searched Employee Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<div class="container">
		<table class="table table-striped">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Date Of Birth</th>
				<th>Age</th>
				<th>Salary</th>
				<th>Active</th>
			</tr>
			<tr>
				<td>${ employee.id }</td>
				<td>${ employee.name }</td>
				<td>${ employee.email }</td>
				<td>${ employee.dob }</td>
				<td>${ employee.age }</td>
				<td>${  employee.salary }</td>
				<td>${ employee.status }</td>
			</tr>
		</table>

	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>