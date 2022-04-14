<%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Login Page</title>
</head>
<body>
	<div class="text-center">
		<div class="alert alert-danger" role="alert">
			<h3>${message}</h3>
		</div>
	</div>
	<div class="container pt-5">
		<form action="loginprocess" method="post">
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Enter
					Unique ID</label> <input type="number" name="id" class="form-control"
					id="exampleInputPassword1">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Enter
					Email</label> <input name="email" type="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
			</div>
			<div class="text-center">
				<button style="width: 20%" type="submit" class="btn btn-success">Login</button>
			</div>
		</form>
		<div class="text-center p-3 mt-3">
			<button type="button" class="btn btn-primary">
				<a style="color: white;text-decoration: none;" 
				href="${pageContext.request.contextPath}">Register Here</a>			
			</button>
		</div>
	</div>
</body>
</html>
