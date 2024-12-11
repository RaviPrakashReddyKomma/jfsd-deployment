<%@ page import="com.klef.jfsd.farmtoglobal.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Retrieve the Customer object from the session
    Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <style>
        .welcome {
    margin-top: 50px;
    font-size: 24px;
    font-weight: bold;
    color: #333;
}

.category-container {
    display: flex;
    justify-content: center;
    gap: 20px;
    margin-top: 50px;
}

.category-box {
    width: 280px;
    height: 280px;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease;
    text-align: center;
}

.category-box img {
    width: 100%;
    height: 70%;
    object-fit: cover;
}

.category-box:hover {
    transform: scale(1.05);
}

.category-box h3 {
    margin-top: 10px;
    font-size: 20px;
    font-weight: bold;
}

@media (max-width: 768px) {
    .category-container {
        flex-direction: column;
        align-items: center;
    }
    .category-box {
        width: 90%;
    }
}

    </style>
</head>
<body style="background-color: #ffe5b4;">
<%@ include file="customernavbar.jsp" %>
    <div class="welcome" align="center">
        <% if (c != null) { %>
            Welcome, <%= c.getName() %>! <!-- Adjust this to match the actual getter method -->
        <% } else { %>
            Welcome, Guest! Please log in to access more features.
        <% } %>
    </div>
    <div>
    
    </div>
    <div class="category-container">
  <div class="category-box">
    <img src="images/farm-to-table.png" alt="Farm-to-table">
    <h3>Farm-to-table products</h3>
  </div>
  <div class="category-box">
    <img src="images/beverages.png" alt="Beverages">
    <h3>Beverages</h3>
  </div>
  <div class="category-box">
    <img src="images/processed-foods.png" alt="Processed foods">
    <h3>Processed foods</h3>
  </div>
</div>

<div class="category-container">
  <div class="category-box">
    <img src="images/handmade-goods.png" alt="Handmade goods">
    <h3>Hand made goods</h3>
  </div>
  <div class="category-box">
    <img src="images/craft-products.png" alt="Craft products">
    <h3>Craft products</h3>
  </div>
  <div class="category-box">
    <img src="images/speciality-items.png" alt="Speciality items">
    <h3>Speciality items</h3>
  </div>
</div>
</body>
</html>
