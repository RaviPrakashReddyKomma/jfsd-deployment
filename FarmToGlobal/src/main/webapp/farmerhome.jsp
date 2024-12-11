<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.klef.jfsd.farmtoglobal.model.Farmer" %>
<%
    // Retrieve the Customer object from the session
    Farmer c = (Farmer) session.getAttribute("farmer");
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
<body>
<%@ include file="farmernavbar.jsp" %>
    <div class="welcome">
        <% if (c != null) { %>
            Welcome, <%= c.getName() %>! <!-- Adjust this to match the actual getter method -->
        <% } else { %>
            Welcome, Guest! Please log in to access more features.
        <% } %>
    </div>
    <div><h3 align="center">Steps for Adding Products</h3></div>
        <div class="category-container">
  <div class="category-box">
    <img src="images/addproductimg.png" alt="Farm-to-table">
    <h3>1st Click on add Product in NavBar</h3>
  </div>
  <div class="category-box">
    <img src="images/addproductpage .jpg" alt="Beverages">
    <h3>Add Product details like  Name Cost And Description</h3>
  </div>
  <div class="category-box">
    <img src="images/addbutton.jpg" alt="Processed foods">
    <h3>Click on AddProduct the data will be submitted</h3>
  </div>
</div>

<div class="category-container">
  <div class="category-box">
    <img src="images/success.jpg" alt="Handmade goods">
    <h3>You will see a success message as image</h3>
  </div>
  <div class="category-box">
    <img src="images/view products.png" alt="Craft products">
    <h3>View Projects in View all products link in navbarh3>
  </div>
</div>
</body>
</html>

