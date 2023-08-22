<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <%@include file="./base.jsp" %>
</head>
<body>
<div class="conatiner mt-3">
<div class="row">
<div class="col-md-6 offset-md-3">
<h1 class="text-center mb-3">Fill the product details</h1>
<form action="handle-product" method="post">

 <div class="from-group">
          <label for="exampleInput" class="form-label">Product Name</label>
          <input  name="name" type="text" class="form-control" id="exampleInput" placeholder="Enter Product Name">
        </div>

 <div class="form-group">
          <label for="exampleTextarea" class="form-label">Product Description</label>
          <textarea name="description" class="form-control" id="exampleTextarea" rows="5"
          placeholder="Enter the product description"></textarea>
 </div>
 
  <div class="from-group">
          <label for="exampleInput" class="form-label">Product Price</label>
          <input  name="price" type="text" class="form-control" id="exampleInput" placeholder="Enter text">
        </div>
        
        
        <div class="container text-center mt-4">
          <a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
          <button class="btn btn-primary">Add Product</button>
        </div>

</form>
</div>
</div>
</div>
</body>
</html>