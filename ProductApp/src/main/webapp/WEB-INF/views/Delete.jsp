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
    .success-card {
        margin-top: 100px;
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
</style>
</head>
<body>

    <div class="container d-flex justify-content-center align-items-center">
        <div class="success-card text-center">
            <i class="fa-solid fa-check-circle check-icon"></i>
            <h2 class="text-success">Product Deleted Successfully!</h2>
            <p class="text-muted">The product has been removed from the database.</p>
            
            <a href="${pageContext.request.contextPath }/home" 
               class="btn btn-success btn-lg mt-3">
                <i class="fa-solid fa-house"></i> Back to Home
            </a>
        </div>
    </div>

</body>
</html>
