<%@page import="com.bean.ResourceBean"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<title>Display Resource List</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
	crossorigin="anonymous">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
	<h1>
		<center>
			<b>Resource Data</b>
		</center>
	</h1>
	<%
	ArrayList<ResourceBean> resourceBeanAL = (ArrayList<ResourceBean>) request.getAttribute("resourceBeanAL");
	%>
	<button type="button" class="btn btn-outline-primary"
		style="margin-left: 113px">
		<a href="SearchResource.jsp"><b>Search</b></a>
	</button>
	<button type="button" class="btn btn-outline-primary"
		style="margin-right: 113px">
		<a href="HrDashBoard.jsp"><b>Back To DashBoard</b></a>
	</button>
	<br>
	<br>
	<div class="container">
		<table class="table table-bordered table-striped table-hover">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile No</th>
				<th>Gender</th>
				<th>Experience</th>
				<th>Resume URL</th>
				<th>Qualification</th>
				<th>Action</th>
			</tr>
			<%
			for (ResourceBean rb : resourceBeanAL) {
			%>
			<tr class="info">
				<td><%=rb.getId()%></td>
				<td><%=rb.getName()%></td>
				<td><%=rb.getEmail()%></td>
				<td><%=rb.getMobno()%></td>
				<td><%=rb.getGender()%></td>
				<td><%=rb.getExperience()%></td>
				<td><%=rb.getResumeurl()%></td>
				<td><%=rb.getQualification()%></td>
				<td><button type="button" class="btn btn-outline-primary">
						<a href="ViewLanguageController?id=<%=rb.getId()%>">Language</a>
					</button>
					<button type="button" class="btn btn-outline-primary">
						<a href="ViewDatabaseController?id=<%=rb.getId()%>">Database</a>
					</button>
					<button type="button" class="btn btn-outline-primary">
						<a href="ViewTechnologyController?id=<%=rb.getId()%>">Technology</a>
					</button>
					<button type="button" class="btn btn-outline-primary">
						<a href="EditResourceController?id=<%=rb.getId()%>">Update</a>
					</button>
					<button type="button" class="btn btn-outline-info">
						<a href="ViewResourceController?id=<%=rb.getId()%>">View</a>
					</button>
					<button type="button" class="btn btn-outline-danger">
						<a href="DeleteResourceController?id=<%=rb.getId()%>">Delete</a></td>
				</button>
				</td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<br />
	<br />

</body>
</html>