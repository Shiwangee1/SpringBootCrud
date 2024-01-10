<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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



<script src="https://kit.fontawesome.com/2f587ffd5a.js"
	crossorigin="anonymous"></script>


<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

<style>
@import url('https://fonts.googleapis.com/css?family=Numans');

html, body {
	background-image:
		url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
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
	background-color: rgba(0, 0, 0, 0.5) !important;
}
</style>


</head>
<body>


	<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="card">
				<div class="card bg-light">
					<article class="card-body mx-auto" style="max-width: 400px;">
						<h4 class="card-title mt-3 text-center text-white">Create
							Account</h4>
						<p class="text-center text-white">Get started with your free
							account</p>

						<form action="UpdateUser" method="post"
							enctype="multipart/form-data">


							<div class="form-group input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i class="fa fa-user"></i>
									</span>
								</div>
								<input name="fullName" class="form-control"
									placeholder="Full name" type="text" value="${name}" />
							</div>



							<!-- form-group// -->
							<div class="form-group">
								<button type="submit"
									class="btn btn-primary btn-block text-white">Create
									Account</button>
							</div>
							<!-- form-group// -->
							<p class="text-center text-white">
								Have an account? <a href="login">Log In</a>
							</p>
						</form>
					</article>
				</div>
				<!-- card.// -->
			</div>
		</div>
	</div>
	<!--container end.//-->
</body>
</html>