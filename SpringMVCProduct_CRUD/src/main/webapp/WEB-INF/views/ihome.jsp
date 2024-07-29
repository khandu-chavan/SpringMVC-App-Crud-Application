<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="./StylecssBase.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>
<body class="p-3 mb-2 bg-light text-dark">
	<div class=container mt-3>
		<div class="row">
			<div class=" col-md-12">
				<h1 class="text-center mb-3">Welcome to product app</h1>
			</div>
			<table class="table">
				<thead class="thead-dark" style="text-align: center">
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Product Name</th>
						<th scope="col">Description</th>
						<th scope="col">price</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${products }" var="p">
						<tr>
							<th scope="row">${p.id }</th>
							<td>${p.name }</td>
							<td>${p.description }</td>
							<td class="font-weight-bold">&#x20B9;${p.price }</td>
							<td><a href="delete/${p.id }"> <i
									class="fas fa-trash-alt text-danger" style="font-size: 30px"></i></a>
								&nbsp;&nbsp; <a href="update/${p.id }"><i
									class="fas fa-pen-nib" style="font-size: 30px"></i></i></a></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="container text-center">
				<a href="addproduct" class=" btn btn-outline-success"> Add
					product</a>
			</div>


		</div>
	</div>

</body>
</html>