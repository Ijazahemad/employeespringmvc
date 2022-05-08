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

<jsp:include page="navbar.jsp"></jsp:include>

		<div class="container">
			<form action="searchRange" method="get">
				
				<div class="mb-3">
					<label for="lowerlimit" class="form-label">Lower Limit  </label> <input
						type="number" class="form-control" id="lowerlimit"
						name="lowerlimit" placeholder="Please enter the lower limit of range">
				</div>
				<div class="mb-3">
					<label for="upperlimit" class="form-label">Upper Limit</label> <input
						type="number" class="form-control" id="upperlimit"
						name="upperlimit" placeholder="Please enter the upper limit of range">
				</div>


				<button type="submit" class="btn btn-primary">Search</button>
			</form>

		</div>
		<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>