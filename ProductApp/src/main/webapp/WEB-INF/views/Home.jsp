<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./Base.jsp"%>
<style>
    body {
        background: #f8f9fa;
    }
    h1 {
        font-weight: 700;
        color: #343a40;
    }
    .table {
        background: #ffffff;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0px 4px 12px rgba(0,0,0,0.1);
    }
    thead {
        background-color: #343a40;
        color: white;
    }
    tbody tr:hover {
        background-color: #f1f1f1;
        transition: 0.3s;
    }
    .btn-add {
        margin-top: 20px;
        padding: 10px 25px;
        font-size: 16px;
        border-radius: 8px;
    }
</style>
</head>
<body>
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-12">

                <h1 class="text-center mb-4">
                    <i class="fa-solid fa-box"></i> Welcome to Product App
                </h1>

                <table class="table table-hover text-center align-middle">
                    <thead>
                        <tr>
                            <th scope="col">Serial No.</th>
                            <th scope="col">Product Name</th>
                            <th scope="col">Description</th>
                            <th scope="col">Price (₹)</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${products}" var="product" varStatus="loop">
                            <tr>
                                <th scope="row">${loop.index + 1}</th>
                                <td class="fw-bold">${product.productName}</td>
                                <td>${product.productDescription}</td>
                                <td class="fw-bold text-success">₹ ${product.productPrice}</td>
                                <td>
                                    <a href="${pageContext.request.contextPath }/delete/${product.productId }" 
                                       class="btn btn-sm btn-outline-danger"
                                       onclick="return confirm('Are you sure you want to delete this product?')">
                                        <i class="fa-solid fa-trash"></i> Delete
                                    </a>
                                    <a href="${pageContext.request.contextPath }/update/${product.productId }" 
                                       class="btn btn-sm btn-outline-primary"
                                       onclick="return confirm('Are you sure you want to edit this product?')">
                                        <i class="fa-solid fa-pen"></i> Update
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <div class="text-center">
                    <a href="add" class="btn btn-outline-success btn-add">
                        <i class="fa-solid fa-plus"></i> Add Product
                    </a>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
