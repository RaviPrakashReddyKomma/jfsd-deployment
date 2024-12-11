<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<!-- Include Font Awesome CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background: linear-gradient(to right, #e0eafc, #cfdef3);
    }
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-wrap: wrap;
        padding: 20px;
        gap: 20px;
    }
    .heading {
        text-align: center;
        font-size: 36px;
        background: linear-gradient(to right, #4facfe, #00f2fe);
        -webkit-background-clip: text;
        color: transparent;
        margin: 20px 0;
        font-weight: bold;
        text-transform: uppercase;
        letter-spacing: 2px;
    }
    .card {
        background: linear-gradient(145deg, #ffffff, #dfe9f3);
        border-radius: 12px;
        box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.1);
        padding: 40px;
        width: 250px;
        text-align: center;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        opacity: 0;
    }
    .card:nth-child(1) {
        animation: fadeInUp 3s forwards;
    }
    .card:nth-child(2),
    .card:nth-child(3) {
        animation: slideRight 3s forwards;
    }
    .card:hover {   
        transform: scale(1.1);
        box-shadow: 10px 10px 20px rgba(0, 0, 0, 0.2);
    }
    .card h3 { 
        font-size: 20px;
        color: #333;
        margin-bottom: 10px;
    }
    .card p {
        font-size: 28px;
        color: #0078d7;
        margin: 0;
    }
    .card i {
        font-size: 50px;
        color: #0078d7;
        margin-bottom: 20px;
    }

    /* Animation for fading in and moving up */
    @keyframes fadeInUp {
        0% {
            opacity: 0;
            transform: translateY(20px);
        }
        100% {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Animation for sliding right */
    @keyframes slideRight {
        0% {
            opacity: 0;
            transform: translateX(-30px);
        }
        100% {
            opacity: 1;
            transform: translateX(0);
        }
    }

    /* Responsive layout for smaller screens */
    @media (max-width: 768px) {
        .container {
            flex-direction: column;
            align-items: center;
        }
        .card {
            width: 80%;
            margin: 15px;
        }
    }

    @media (max-width: 480px) {
        .card {
            width: 90%;
        }
    }
</style>

</head>
<body>
<%@ include file="adminnavbar.jsp" %>
<h1 class="heading">Admin Dashboard</h1>
<div class="container">
    <div class="card">
        <!-- Font Awesome icon for Total Customers inside the card -->
        <i class="fas fa-users"></i>
        <h3>Total Customers</h3>
        <p><c:out value="${count}"/></p>
    </div>
    <div class="card">
        <!-- Font Awesome icon for Total Farmers inside the card -->
        <i class="fas fa-tractor"></i>
        <h3>Total Farmers</h3>
        <p><c:out value="${counts}"/></p>
    </div>
    <div class="card">
        <!-- Font Awesome icon for Total Product Count inside the card -->
        <i class="fas fa-cogs"></i>
        <h3>Total Products</h3>
        <p><c:out value="${countss}"/></p>
    </div>
</div>

</body>
</html>
