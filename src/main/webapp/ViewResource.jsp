<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Hr</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="m-4 p-4">
		<div class="card" style="width: 650px;">
			<div class="card-body">
				<h3 class="card-title">
					<u>Resource Details</u>
				</h3>
				<p class="card-text">
				<pre>
		<h2>
         ID            :- ${resourceBean.id }
         Name          :- ${resourceBean.name }
         Email         :- ${resourceBean.email }
         Mobile No     :- ${resourceBean.mobno }
         Gender        :- ${resourceBean.gender }
         Experience    :- ${resourceBean.experience }
         ResumeURL     :- ${resourceBean.resumeurl }
         Qualification :- ${resourceBean.qualification }
      </h2>
	</pre>
				</p>
			</div>
		</div>
	</div>

</body>
</html>