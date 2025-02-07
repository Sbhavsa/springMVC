<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->

<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

<h1 class="text-center">Hello, world!</h1>
	<div class="container">
		<form action="/register" method="post">
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Id</label> 
			<input type="text" class="form-control" name="id" value="${u.id }" id="exampleInputEmail1" aria-describedby="emailHelp">
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Name</label> 
			<input type="text" class="form-control" name="name" value="${u.name }" id="exampleInputEmail1" aria-describedby="emailHelp">
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Contact</label> 
			<input type="text" class="form-control" name="contact" value="${u.contact }" id="exampleInputEmail1" aria-describedby="emailHelp">
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Address</label> 
			<input type="text" class="form-control" name="address" value="${u.address }" id="exampleInputEmail1" aria-describedby="emailHelp">
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Email</label> 
			<input type="email" class="form-control" name="email" value="${u.email }" id="exampleInputEmail1" aria-describedby="emailHelp">
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Password</label> 
			<input type="password" class="form-control" name="password" value="${u.password }" id="exampleInputEmail1" aria-describedby="emailHelp">
		</div>
		
		<div class="text-center">
			<button type="submit" name="action" value="register" class="btn btn-primary">update</button>
		</div>
	</form>
	</div>

<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>