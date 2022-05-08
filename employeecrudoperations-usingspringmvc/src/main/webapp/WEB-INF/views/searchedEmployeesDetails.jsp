<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display All</title>
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
				<c:forEach items="${ allEmployees }" var="emp">
					<tr>
						<td>${ emp.id }</td>
						<td>${ emp.name }</td>
						<td>${ emp.email }</td>
						<td>${ emp.dob }</td>
						<td>${ emp.age }</td>
						<td>${  emp.salary }</td>
						<td>${ emp.status }</td>
					</tr>
				</c:forEach>
			</table>

		</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>