<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<title>Admin Dashbioard</title>
<!-- Custom CSS -->
<style>
h1 {
	color: darkblue;
	text-align: center;
}

div.one {
	margin-top: 40px;
	text-align: center;
}

button {
	margin-top: 10px;
}
</style>
</head>
<body>
	<div class="container">
		<h1>
			<u>Admin DashBoard</u>
		</h1>
		<!-- Bootstrap Button Classes -->
		<div class="one" style="width: 100%;">
			<button type="button" class="btn btn-success" style="width: 25%;">
				<a href="AddHr.jsp"><b>Add HR</b></a>
			</button>
			<button type="button" class="btn btn-success" style="width: 25%;">
				<a href="HrListController"><b>HR List</b></a>
			</button>
			<button type="button" class="btn btn-success" style="width: 25%;">
				<a href=""><b>Resource List</b></a>
			</button>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
		integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
		integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
		crossorigin="anonymous"></script>
</body>
</html>
