<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script src="https://kit.fontawesome.com/f327e1d3d1.js" crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- ====================================================================== -->
<style>
html, body {
	background-size: cover;
	background-repeat: no-repeat;
	height: 100%;
	font-family: 'Numans', sans-serif;
}

.container {
	height: 100%;
	align-content: center;
}

.card {
	margin-top: auto;
	margin-bottom: auto;
	width: 400px;
	/* background-color: rgba(0, 0, 0, 0.5) !important; */
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Emp Management</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="addEmp">Add
							Emp</a></li>
					<li class="nav-item"><a class="nav-link" href="lg">Login </a></li>
					<li class="nav-item"><a class="nav-link" href="addEmp">Logout</a></li>

				</ul>
				<!--  <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form> -->
			</div>
		</div>
	</nav>



	<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="card" style="margin-top: 20px;">
				<div class="card bg-primary">
					<article class="card-body mx-auto" style="max-width: 400px;">
						<h4 class="card-title mt-3 text-center text-white">Login Page</h4>
						<p class="text-center text-white">Get started with your free
							account</p>
						<form:form action="LgData" method="post" modelAttribute="emp">
							<div class="form-group input-group">

								<div class="input-group-prepend">

									<span class="input-group-text"><i class="fa fa-user"></i></span>
								</div>
								<form:input path="Email" class="form-control"
									placeholder="Enter Email" type="text"></form:input>
							</div>
							<div class="form-group input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i class="fa fa-lock"></i>
									</span>
								</div>
								<form:input path="Password" class="form-control"
									placeholder="Enter Password" type="password"
									required="required" />
							</div>
							<div class="form-group">
								<button type="submit"
									class="btn btn-success btn-block text-white">Login Page
									</button>
							</div>

						</form:form>
					</article>
				</div>
			</div>
		</div>
	</div>
</body>
</html>