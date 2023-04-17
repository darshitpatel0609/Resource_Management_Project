<!DOCTYPE html>
<html lang="en">
<head>
<title>Edit Resource</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
	<table border="5" class="table max-auto">
		<div class="container">
			<form action="EditResourceController" method="post">
				<tr>
					<td><h2>Edit Employee Details</h2></td>
				</tr>

				<tr>
					<td><div class="form-group">
							<label for="id"> Id:</label> <input type="hidden" name="id"
								id="id" value="${param.id}" class="form-control" placeholder="">
						</div></td>
				</tr>
				<tr>
					<td><div class="form-group">
							<label for="name"> Enter Name:</label> <input type="text"
								name="name" id="name" value="${resourceBean.name }"
								class="form-control" placeholder="Enter Name">
						</div></td>
				</tr>

				<tr>
					<td><div class="form-group">
							<label for="email"> Enter Email:</label> <input type="email"
								name="email" id="email" value="${resourceBean.email }"
								class="form-control" placeholder="Enter Email">
						</div></td>
				</tr>

				<tr>
					<td><div class="form-group">
							<label for="mobno">Enter Mobile Number:</label> <input
								type="text" name="mobno" id="mobno"
								value="${resourceBean.mobno }" class="form-control"
								placeholder="Enter MobileNo">
						</div></td>
				</tr>

				<tr>
					<td><div class="form-group">
							<label for="gender">Gender:</label> <input type="radio"
								name="gender" id="gender" value="M" />Male <input type="radio"
								name="gender" id="gender" value="F" />FeMale
						</div></td>
				</tr>

				<!-- <tr>
					<td><div class="form-group">
							<label for="language">Select Language:</label> <select
								name="language" id="language" multiple="multiple">
								<option value="C">C</option>
								<option value="C#">C#</option>
								<option value="Java">Java</option>
								<option value="PHP">PHP</option>
								<option value="Python">Python</option>
								<option value="Ruby">Ruby</option>
							</select>
						</div></td>
				</tr> -->

				<!-- <tr>
					<td><div class="form-group">
							<label for="database">Select Database:</label> <select
								name="database" id="database" multiple="multiple">
								<option value="Oracle DB">Oracle DB</option>
								<option value="MSSQL">MSSQL</option>
								<option value="MangoDB">MangoDB</option>
								<option value="MYSQL">MYSQL</option>
							</select>
						</div></td>
				</tr> -->
				<!-- 
				<tr>
					<td><div class="form-group">
							<label for="technology">Select Technology:</label> <select
								name="technology" id="technology" multiple="multiple">
								<option value="C">C</option>
								<option value="C#">C#</option>
								<option value="Java">Java</option>
								<option value="PHP">PHP</option>
								<option value="Python">Python</option>
								<option value="Ruby">Ruby</option>
							</select>
						</div></td>
				</tr> -->
		<tr>
			<td><div class="form-group">
					<label for="experience">Enter Experience:</label> <input
						type="text" name="experience" id="experience"
						value="${resourceBean.experience }" class="form-control"
						placeholder="Experience In Year">
				</div></td>
		</tr>

		<tr>
			<td><div class="form-group">
					<label for="qualification">Enter Qualification:</label> <input
						type="text" name="qualification" id="qualification"
						value="${resourceBean.qualification }" class="form-control"
						placeholder="Enter Qualification">
				</div></td>
		</tr>

		<tr>
			<td><div class="form-group">
					<label for="resumeurl">Enter Resume URL:</label> <input type="text"
						name="resumeurl" id="resumeurl" value="${resourceBean.resumeurl }"
						class="form-control" placeholder="Enter Url">
				</div></td>
		</tr>
		<tr>
			<td><div class="form-group">
					<input type="submit" value="UPDATE" class="btn btn-primary">
				</div></td>
		</tr>
		</form>
		</div>
	</table>
</body>
</html>