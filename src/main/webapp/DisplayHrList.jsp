<!DOCTYPE html>

<%@page import="com.bean.HrBean"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
<title>Hr Data List</title>
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
			<b>HR Data</b>
		</center>
	</h1>
	<%
	ArrayList<HrBean> hrBeanAL = (ArrayList<HrBean>) request.getAttribute("hrBeanAL");
	%>
	<button type="button" class="btn btn-outline-primary"
		style="margin-left: 113px">
		<a href="Search.jsp"><b>Search</b></a>
	</button>
	<button type="button" class="btn btn-outline-primary"
		style="margin-right: 113px">
		<a href="AdminDashBoard.jsp"><b>Back To DashBoard</b></a>
	</button>
	<br>
	<br>
	<div class="container">
		<table class="table table-bordered table-striped table-hover">
			<tr>
				<th>HR Id</th>
				<th>HR Name</th>
				<th>HR Email</th>
				<th>HR Password</th>
				<th>HR Mobile No</th>
				<th>Action</th>
			</tr>
			<%
			for (HrBean user : hrBeanAL) {
			%>
			<tr class="info">
				<td><%=user.getId()%></td>
				<td><%=user.getHrname()%></td>
				<td><%=user.getHremail()%></td>
				<td><%=user.getHrpassword()%></td>
				<td><%=user.getHrmobno()%></td>
				<td><button type="button" class="btn btn-outline-primary">
						<a href="EditHrController?id=<%=user.getId()%>">Edit</a>
					</button>
					<button type="button" class="btn btn-outline-info">
						<a href="ViewHrController?id=<%=user.getId()%>">View</a>
					</button>
					<button type="button" class="btn btn-outline-danger">
						<a href="DeleteHrController?id=<%=user.getId()%>">Delete</a>
					</button></td>
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

