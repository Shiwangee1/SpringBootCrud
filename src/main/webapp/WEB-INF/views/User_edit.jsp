<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page isELIgnored="false"%>



<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
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

				</ul>
				<!--  <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form> -->
			</div>
		</div>
	</nav>
	<div class="Container">

		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center">
						<h3>Edit Emp</h3>
						<c:if test="${not empty msg}">
							<h5 style="color: green">${msg }</h5>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<%-- <form action="updateEmp" method="post" modelAttribute="emp">
						<input type="hidden" name="id" value="${emp.id }">
							<div class="mb-3">
								<label>Enter full Name</label> <input type="text" name="Name" value="${emp.name }"
									class="form-control">
							</div>
							<div class="mb-3">
								<label>Enter Address</label> <input type="text" name="Address" value="${emp.address }"
									class="form-control">
							</div>
							<div class="mb-3">
								<label>Enter Email</label> <input type="text" name="Email" value="${emp.email }"
									class="form-control">
							</div>
							<div class="mb-3">
								<label>Enter Password</label> <input type="text" name="Password" value="${emp.password }"
									class="form-control">
							</div>
							<!-- 			<button class="btn btn-primary">Update</button> -->
							<input type="submit" value="submit">
							
						</form> --%>


						<form:form action="updateEmp" modelAttribute="emp" method="post"
							enctype="multipart/form-data">



							<!-- <input ="hidden" name="id" /> -->

							<div class="mb-3">
								<label>Enter full Name</label>
								<form:input path="Name" value="" class="form-control" />
							</div>
							<div class="mb-3">
								<label>Enter Address</label>
								<form:input path="Address" value="" class="form-control" />
							</div>
							<div class="mb-3">
								<label>Enter Email</label>
								<form:input path="Email" value="" class="form-control" />
							</div>
							<%-- <div class="mb-3">
								<label>Enter Image</label> <form:input name="file"
									value="<img src="data:image/jpeg;base64,${emp.imageBase64}" hight="100px" width="100px"/>" />
							</div> --%>


							<div class="mb-3">
								<label>Enter Password</label>
								<form:input path="Password" class="form-control" />
							</div>
							<!-- 			<button class="btn btn-primary">Update</button> -->

							<%-- <div class="mb-3">
								<label>Enter Image</label>
								<form:input path="file" />
							</div> --%>
							<div class="mb-3">
								<form:select path="Role" class="form-control"
									required="required">
									<form:option value="" label="Select Designation type" />
									<form:option value="Admin" label="Admin" />
									<form:option value="User" label="User" />

								</form:select>
							</div>

					 <div class="mb-3">
								<label>Image</label>
								<img
									src="data:image/jpeg;base64,${imageBase64}" height="100px"
									width="100px" />
								<form:input path="Image" type="file" class="form-control" />
							</div> 


							





							<%-- <input name="email" class="form-control"
								placeholder="Email address" type="email" required="required"
								value="${email}" />
							<input name="fullName" class="form-control"
								placeholder="Full name" type="text" required="required"
								value="${fullName}" /> --%>


							<div class="text-centre">
								<input type="submit" value="save"
									class="btn btn-success text-centre">
							</div>

						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>