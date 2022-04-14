<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Register Page</title>
</head>
<body>
	<div class="container text-center">
		<div class="alert alert-danger" role="alert">
			<form:errors path="customer.*"/></div>
	</div>
	<div class="container pt-5">
		<form action="registerprocess" method="post">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Enter
					Unique ID</label> <input name="uniqueId" type="number" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Enter
					First Name</label> <input name="firstName" type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Enter
					Last Name</label> <input name="lastName" type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Enter
					Email</label> <input name="email" type="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Enter
					Password</label> <input type="password" name="password"
					class="form-control" id="exampleInputPassword1">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Enter
					Phone Number</label> <input name="phoneNumber" type="number"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp">
			</div>
			<span class="form-check"> <input class="form-check-input"
				type="radio" name="gender" id="flexRadioDefault1" value="Male">
				<label class="form-check-label" for="flexRadioDefault1">
					Male </label>
			</span> <span class="form-check"> <input class="form-check-input"
				type="radio" name="gender" id="flexRadioDefault1" value="Female">
				<label class="form-check-label" for="flexRadioDefault1">
					Female </label>
			</span>
			<div class="text-center">
				<button style="width: 20%" type="submit" class="btn btn-success">Register</button>
			</div>
		</form>
		<div class="text-center p-3 mt-3">
			<button type="button" class="btn btn-primary">
				<a style="color: white; text-decoration: none;" href="login">Login</a>
			</button>
		</div>
	</div>
</body>
</html>
