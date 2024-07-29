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
				<h1 class="text-center">Fill the Product</h1>
				<form action="submit_product" method="POST">
					<div class="form-group">
						<label for="productName">Product Name:</label> <input type="text"
							class="form-control" id="productName" name="name"
							placeholder="Enter product name" required>
					</div>
					<div class="form-group">
						<label for="price">Price:</label> <input type="number"
							class="form-control" id="price" name="price"
							placeholder="Enter product price" step="0.01" required>
					</div>
					<div class="form-group">
						<label for="description">Description:</label>
						<textarea id="description" class="form-control" name="description"
							placeholder="Enter product decription" required></textarea>
					</div>
					<div class="form-group">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger button">Back</a> <input
							type="submit" value="Add Product">
					</div>
				</form>
			</div>
		</div>


	</div>
</body>
</html>
