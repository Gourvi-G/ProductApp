<html>
<head>
<%@include file="./base.jsp" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<div class="conetiner" mt-3>
<div class="row">
<div class="col-md-12">
<h1 class="text-center mt-3" >WELCOME TO PRODUCT APP</h1>
<div class="container">
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Product Name</th>
      <th scope="col">Product Desc.</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${product }" var="p">
    <tr>
      <th scope="row">${p.id }</th>
      <td>${p.name }</td>
      <td>${p.description}</td>
      <td class="font-weight-bold">&#8377; ${p.price }</td>
      <td>
      <a href="delete/${p.id }"><i class="fa fa-trash text-danger"  style="font-size: 25px" aria-hidden="true"></i></a>
      </td>
       <td>
      <a href="update/${p.id }" ><i class="fa fa-pen-nib text-promary"  style="font-size: 25px" aria-hidden="true"></i></a>
      </td>
    </tr>
   
   </c:forEach>
  </tbody>
</table>

</div>
<div class="conatiner text-center">
<a href="add-product" class="btn btn-outline-success">Add Product</a>
</div>
</div>
</div>
</div>
</body>
</html>
