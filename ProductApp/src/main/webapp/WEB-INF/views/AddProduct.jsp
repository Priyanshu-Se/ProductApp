<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./Base.jsp" %>
<style>
    body {
        background: #f8f9fa;
    }
    .form-card {
        margin: 60px auto;
        max-width: 600px;
        border-radius: 15px;
        padding: 30px 40px;
        background: #ffffff;
        box-shadow: 0px 8px 20px rgba(0,0,0,0.1);
        transition: transform 0.3s ease-in-out;
    }
    .form-card:hover {
        transform: scale(1.01);
    }
    .form-label {
        font-weight: 600;
    }
    .btn {
        min-width: 120px;
    }
</style>
</head>
<body>

<div class="container">
    <div class="form-card">
        <h2 class="text-center text-primary mb-4">
            <i class="fa-solid fa-box-open"></i> Add New Product
        </h2>

        <form action="add" method="post">

            <div class="form-group mb-3">
                <label for="productName" class="form-label">
                    <i class="fa-solid fa-tag"></i> Product Name
                </label>
                <input type="text" class="form-control" id="productName"
                       name="productName" placeholder="Enter product name" required>
            </div>

            <div class="form-group mb-3">
                <label for="productDescription" class="form-label">
                    <i class="fa-solid fa-align-left"></i> Description
                </label>
                <textarea class="form-control" id="productDescription" 
                          name="productDescription" rows="4" 
                          placeholder="Enter product description" required></textarea>
            </div>

            <div class="form-group mb-3">
                <label for="productPrice" class="form-label">
                    <i class="fa-solid fa-indian-rupee-sign"></i> Price
                </label>
                <input type="number" step="0.01" class="form-control" id="productPrice"
                       name="productPrice" placeholder="Enter product price" required>
            </div>

            <div class="text-center mt-4">
                <a href="${pageContext.request.contextPath}/" 
                   class="btn btn-outline-danger me-2">
                    <i class="fa-solid fa-arrow-left"></i> Back
                </a>
                <button type="submit" class="btn btn-success">
                    <i class="fa-solid fa-plus"></i> Add Product
                </button>
            </div>

        </form>
    </div>
</div>

</body>
</html>
