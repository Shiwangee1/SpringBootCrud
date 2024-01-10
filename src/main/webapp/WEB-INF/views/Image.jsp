
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Sign Up</title>
<head>
<%-- <link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/style.css">
 --%>
<!-- bootstrapcdn link for css  -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<!-- bootstrap link   -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/f327e1d3d1.js"
	crossorigin="anonymous"></script>

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

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
						<h4 class="card-title mt-3 text-center text-white">Create
							Account</h4>
						<p class="text-center text-white">Get started with your free
							account</p>


						<%-- 	<form:form action="CreateEmp" method="post" modelAttribute="emp" enctype="multipart/form-data" > --%>
						<form action="uploadphoto" method="Post"
							enctype="multipart/form-data">

							<div class="form-group input-group">

								<div class="input-group-prepend">

									<span class="input-group-text"><i class="fa fa-user"></i></span>
								</div>
								<input type="text" class="form-control"
									placeholder="Full Name" name="name">
							</div>

							<div class="form-group input-group">

								<div class="input-group-prepend">

									<span class="input-group-text"><i
										class="fa-solid fa-house"></i></span>
								</div>
								<input  type="text" class="form-control"
									placeholder="Address " name ="Address" type="text"/>
							</div>


							<div class="form-group input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i
										class="fa fa-envelope"></i>
									</span>
								</div>
								<input name="Email" class="form-control"
									placeholder="Email address" type="email" required="required" />
							</div>


							<div class="form-group input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i class="fa fa-lock"></i>
									</span>
								</div>
								<input name="password" class="form-control"
									placeholder="Create password" type="password"
									required="required" />
							</div>


							  <div class="form-group input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i class="fa-solid fa-image"></i></i>
									</span>
								</div>
								<input name="Image" class="form-control"
									placeholder="Upload Image" type="file"
									required="required" />
							</div>
							  



							<div class="form-group input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i
										class="fa fa-building"></i>
									</span>
								</div>
								<select name="Role" class="form-control"
									required="required">
									<option value="" label="Select Designation type" />
									<option value="Admin" label="Admin" />
									<option value="User" label="User" />

								</select>
							</div>
							<div class="form-group">
								<button type="submit"
									class="btn btn-success btn-block text-white">Create
									Account</button>
								<a href="Login"></a>
							</div>
							<input type="hidden" name="id" />

						</form>
					</article>

				</div>
			</div>

		</div>


	</div>



</body>
</html>