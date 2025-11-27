<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./Base.jsp" %>
<style>
    body {
        background: #f8f9fa;
    }
    .success-card {
        margin: 60px auto;
        max-width: 600px;
        border-radius: 20px;
        padding: 40px;
        background: #ffffff;
        box-shadow: 0px 8px 20px rgba(0,0,0,0.1);
        transition: transform 0.3s ease-in-out;
    }
    .success-card:hover {
        transform: scale(1.02);
    }
    .check-icon {
        font-size: 80px;
        color: #28a745;
        margin-bottom: 20px;
        animation: pop 0.8s ease-in-out;
    }
    @keyframes pop {
        0% { transform: scale(0.5); opacity: 0; }
        100% { transform: scale(1); opacity: 1; }
    }
    .product-info h4 {
        margin: 10px 0;
        font-weight: 500;
        color: #333;
    }
</style>
</head>
<body>

    <div class="container d-flex justify-content-center align-items-center">
        <div class="success-card text-center">
            <i class="fa-solid fa-circle-check check-icon"></i>
            <h2 class="text-success">Product Added Successfully!</h2>
            <p class="text-muted">Here are the details of your product:</p>
            
            <div class="product-info text-left mt-4">
                <h4><strong>ID:</strong> ${product.productId}</h4>
                <h4><strong>Name:</strong> ${product.productName}</h4>
                <h4><strong>Description:</strong> ${product.productDescription}</h4>
                <h4><strong>Price:</strong> ₹${product.productPrice}</h4>
            </div>
            
            <a href="${pageContext.request.contextPath }/home" 
               class="btn btn-success btn-lg mt-4">
                <i class="fa-solid fa-house"></i> Back to Home
            </a>
        </div>
    </div>

</body>
</html>
