<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Products</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/style.css' />">
    <style>
    /* Card Layout Styling */
    .product-container {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 20px;
        margin: 20px;
    }

    .product-card {
        background-color: #fff;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 15px;
        text-align: center;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s;
    }

    .product-card:hover {
        transform: scale(1.05);
    }

    .product-card img {
    width: 100%;
    height: 200px; /* Set a fixed height for all images */
    object-fit: cover; /* Ensures images fill the container while preserving aspect ratio */
    border-radius: 8px;
}


    .product-card h3 {
        color: #4169e1;
        font-size: 18px;
        margin-top: 10px;
    }

    .product-card p {
        color: #555;
        font-size: 14px;
        margin-top: 5px;
    }

    .product-card .price {
        font-size: 16px;
        font-weight: bold;
        margin: 10px 0;
        color: #333;
    }

    .product-card .add-to-cart {
        background-color: #4169e1;
        color: white;
        border: none;
        padding: 10px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px;
        transition: background-color 0.3s;
    }

    .product-card .add-to-cart:hover {
        background-color: #0056b3;
    }

    /* Navbar */
    nav {
        background-color: #4169e1;
        padding: 15px;
        text-align: center;
    }

    nav a {
        color: white;
        text-decoration: none;
        padding: 10px 20px;
        margin: 0 10px;
        border-radius: 5px;
    }

    nav a:hover {
        background-color: #0056b3;
    }

    /* Responsive Grid */
    @media (max-width: 768px) {
        .product-container {
            grid-template-columns: repeat(2, 1fr);
        }
    }

    @media (max-width: 480px) {
        .product-container {
            grid-template-columns: 1fr;
        }
    }
    
</style>
</head>
<body>
<%@ include file="customernavbar.jsp" %>
    <h2 align="center">Customer View All Products</h2>

    <div class="product-container">
        <c:forEach var="product" items="${products}">
            <div class="product-card">
                <img src="<c:url value='/displayproductimage?id=${product.id}' />" alt="Product Image"/>
                <h3>${product.name}</h3>
                <p>${product.description}</p>
                <div class="price">&#8377;${product.cost}</div>
                <form action="/addToCart" method="post">
                    <input type="hidden" name="productId" value="${product.id}" />
                    <button type="submit" class="add-to-cart">Add to Cart</button>
                </form>
            </div>
        </c:forEach>
    </div>
</body>
</html>
