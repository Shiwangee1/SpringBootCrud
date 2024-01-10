<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@page isELIgnored="false"%>
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
<script src="https://kit.fontawesome.com/f327e1d3d1.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<!-- ================================================================= -->
	<style>
.tbl-fixed {
	overflow-x: scroll;
	overflow-y: scroll;
	height: fit-content;
	max-height: 80vh;
	margin-top: 40px;
}
</style>
	<!-- ====================================================================================================== -->

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
					<li class="nav-item"><a class="nav-link" href="lg">Logout</a></li>

				</ul>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
	<div class="container P-4 justify-content-center ">

		<div class="card-header text-center bg-primary"
			style="margin-top: 30px;">
			<h4 style="color: pink">All EMP List</h4>
			<c:if test="${not empty msg}">
				<h5 class="text-success">${msg }</h5>
				<c:remove var="msg" />
			</c:if>
		</div>
		<div class="row  tbl-fixed" style="margin-top: 0px;">
			<div class="col-md-12">
				<div class="card">

					<div class="card-body ">


						<table class="table">
							<thead>
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Name</th>
									<th scope="col">Address</th>
									<th scope="col">Email</th>
									<th scope="col">Password</th>
									<th scope="col">Role</th>


									<th scope="col">Image</th>
									<th scope="col">Action</th>

								</tr>

							</thead>

							<tbody>

								<%-- <c:forEach items="${emplist }" var="emp">
									<tr>
										<td>${emp.id}</td>
										<td>${emp.Name}</td>
										<td>${emp.Address}</td>
										<td>${emp.Email}</td>
										<td>${emp.Password}</td>
										<td><a href="#" class="btn btn-sm btn-primary">Edit</a> <a
											href="#" class="btn btn-sm btn-danger">Delete</a></td>
									</tr>
								</c:forEach> --%>



								<c:forEach items="${emplist}" var="emp">


									<c:url var="editLink" value="editUser">
										<c:param name="customerId" value="${emp.id}"></c:param>
									</c:url>

									<tr>
										<td>${emp.id}</td>
										<td>${emp.name}</td>
										<!-- Use "name" instead of "Name" if that's the correct property name -->
										<td>${emp.address}</td>
										<!-- Use "address" instead of "Address" if that's the correct property name -->
										<td>${emp.email}</td>
										<!-- Use "email" instead of "Email" if that's the correct property name -->
										<td>${emp.password}</td>
										<!-- Use "password" instead of "Password" if that's the correct property name -->
										<td>${emp.role}</td>

										<td><img src="data:image/jpeg;base64,${emp.imageBase64}"
											hight="100px" width="100px" /></td>


										<%-- <a href="Edit/${emp.id }"><i class="fa-solid fa-pen-to-square"></i></a> --%>
										<td><a href="${editLink}"><i class="fas fa-edit"></i></a>
											<a href="DeleteEmp/${emp.id }"><i
												class="fa-solid fa-trash"></i></a></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>