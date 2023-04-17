<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Edit Hr Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<h1>
		<center>
			<b>Edit HR Details</b>
		</center>
	</h1>
	<form action="EditHrController" method="post">
		<div class="m-4">
			<div class="row mb-3">
				<label for="hrid" class="col-sm-2 col-form-label"><b>HR
						Id:</b></label>
				<div class="col-sm-10">
					<input type="hidden" name="hrid" value="${param.id}"
						class="form-control" id="hrid" name="hrid" placeholder="HR Id">
				</div>
			</div>
			<div class="row mb-3">
				<label for="hrname" class="col-sm-2 col-form-label"><b>Enter
						HR Name:</b></label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="hrname" name="hrname"
						value="${hrBean.hrname }" placeholder="Enter HR Name">
				</div>
			</div>
			<div class="row mb-3">
				<label for="hremail" class="col-sm-2 col-form-label"><b>Enter
						HR Email:</b></label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="hremail"
						name="hremail" value="${hrBean.hremail}"
						placeholder="Enter HR Email">
				</div>
			</div>


			<div class="row mb-3">
				<label for="hrpassword" class="col-sm-2 col-form-label"><b>Enter
						HR Password:</b></label>
				<div class="col-sm-10">
					<input type=password " class="form-control" id="hrpassword"
						name="hrpassword" value="${hrBean.hrpassword}"
						placeholder="Enter HR Password">
				</div>
			</div>
			<div class="row mb-3">
				<label for="hrmobno" class="col-sm-2 col-form-label"><b>Enter
						HR Mobile No:</b></label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="hrmobno" name="hrmobno"
						value="${hrBean.hrmobno}" placeholder="Enter HR Mobile Number">
				</div>
			</div>
			<div class="row">
				<div class="col-sm-10 offset-sm-2">
					<input type="submit" value="Update" class="btn btn-primary">
				</div>
			</div>
	</form>
	</div>
</body>
</html>