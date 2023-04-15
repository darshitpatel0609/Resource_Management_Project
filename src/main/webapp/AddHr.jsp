<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Horizontal Form Layout</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
.color {
	color: red;
}
</style>
</head>
<body>
<h1><center><b>Add HR Details</b></center></h1>
	<%
	String hrname = (String) request.getAttribute("hrname");
	String hremail = (String) request.getAttribute("hremail");
	String hrpassword = (String) request.getAttribute("hrpassword");
	String hrmobno = (String) request.getAttribute("hrmobno");
	%>

	<div class="m-4">
		<form action="HrRegistrationController" method="post">
			<div class="row mb-3">
				<label for="hrname" class="col-sm-2 col-form-label"><b>Enter HR
					Name:</b></label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="hrname" name="hrname"
						value="${hrnamevalue}" placeholder="Enter HR Name" required>
					<span class="color"><%=hrname == null ? "" : hrname%></span><br>
					<br>
				</div>
			</div>
			<div class="row mb-3">
				<label for="hremail" class="col-sm-2 col-form-label"><b>Enter
					HR Email:</b></label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="hremail"
						name="hremail" value="${hremailvalue}"
						placeholder="Enter HR Email" required> <span class="color"><%=hremail == null ? "" : hremail%></span><br>
					<br>
				</div>
			</div>


			<div class="row mb-3">
				<label for="hrpassword" class="col-sm-2 col-form-label"><b>Enter
					HR Password:</b></label>
				<div class="col-sm-10">
					<input type="password " class="form-control" id="hrpassword"
						name="hrpassword" value="${hrpasswordvalue}"
						placeholder="Enter HR Password" required> <span
						class="color"><%=hrpassword == null ? "" : hrpassword%></span><br>
					<br>
				</div>
			</div>


			<div class="row mb-3">
				<label for="hrmobno" class="col-sm-2 col-form-label"><b>Enter
					HR Mobile No:</b></label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="hrmobno"
						name="hrmobno" value="${hrmobnovalue}"
						placeholder="Enter HR Mobile Number" required> <span
						class="color"><%=hrmobno == null ? "" : hrmobno%></span><br>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-10 offset-sm-2">
					<input type="submit" value="Login" class="btn btn-primary">
				</div>
			</div>
		</form>
	</div>
</body>
</html>