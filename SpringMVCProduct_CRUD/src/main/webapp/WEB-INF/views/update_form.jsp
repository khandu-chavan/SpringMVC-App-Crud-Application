<!doctype html>
<html lang="en">
<head>
<title>add product</title>
<%@include file="./StylecssBase.jsp"%>
</head>
<body class="p-3 mb-2 bg-light text-dark">
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-7 offset-md-3">
				<h1 class="text-center">Change Update Product</h1>
				<form action="${pageContext.request.contextPath }/submit_product"
					method="POST">
					<input type="text" value="${product.id}">
					<div class="form-group">
						<label for="productName">Product Name:</label> <input type="text"
							class="form-control" id="productName" name="name"
							placeholder="Enter product name" required
							value="${product.name }">
					</div>
					<div class="form-group">
						<label for="price">Price:</label> <input type="number"
							class="form-control" id="price" name="price"
							placeholder="Enter product price" step="0.01"
							value="${product.price }" required>
					</div>
					<div class="form-group">
						<label for="description">Description:</label>

						<textarea id="description" class="form-control" name="description"
							placeholder="Enter product decription" required>${product.description}
            </textarea>
					</div>
					<div class="form-group">
						<a href="${pageContext.request.contextPath }/ "
							class="btn btn-outline-danger">Back</a>&nbsp;&nbsp; <input
							type="submit" value="Update Product">
					</div>
				</form>
			</div>
		</div>


	</div>
</body>
</html>
