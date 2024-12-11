<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Products</title>
    <style>
        /* Container for all product cards */
        .products-container {
            display: grid;
            grid-template-columns: repeat(3, 1fr); /* 3 columns */
            gap: 20px;
            padding: 20px;
            justify-items: center; /* Center the cards in each grid cell */
        }

        /* Styling for each product card */
        .product-card {
            width: 250px; /* Fixed width to maintain square aspect */
            height: 300px; /* Fixed height to maintain square aspect */
            text-align: center;
            padding: 10px;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            justify-content: space-between; /* Space between image, text, and button */
            position: relative;
        }

        /* Image styling to make it fit within the square card */
        .product-card img {
            width: 100%;
            height: 150px;
            object-fit: cover; /* Ensure the image covers the area without stretching */
            border-radius: 10px;
        }

        /* Text styling (product name and description) */
        .product-card h3 {
            font-size: 1.2em;
            margin-top: 10px;
        }

        .product-card p {
            font-size: 1em;
            color: #555;
            margin: 10px 0;
        }

        /* Button styling */
        .product-card button {
            padding: 10px;
            font-size: 1em;
            background-color: #8B4513; /* Dark brown background */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        /* Change button color on hover */
        .product-card button:hover {
            background-color: #276c4c;
        }

        /* Overlay and modal styling */
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Transparent black overlay */
            display: none;
            justify-content: center;
            align-items: center;
        }

        .modal {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            width: 50%;
            max-width: 400px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        .modal p {
            font-size: 1.5em;
            color: #ff6347; /* Tomato red color for the message */
            margin-bottom: 20px;
        }

        .modal button {
            padding: 10px 20px;
            background-color: #8B4513; /* Brown background for close button */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        /* Change button color on hover */
        .modal button:hover {
            background-color: #276c4c;
        }

        /* Additional styling for the page */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9; /* Light background color for the whole page */
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin-top: 40px;
            color: #333;
        }

    </style>
    <script>
        function showLoginMessage() {
            // Display the overlay and modal message
            document.getElementById("overlay").style.display = "flex";
        }

        function closeMessage() {
            // Close the overlay and modal message
            document.getElementById("overlay").style.display = "none";
        }
    </script>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>

    <h2>Our Products</h2>

    <div class="products-container">
        <!-- Product Card 1 -->
        <div class="product-card">
            <img src="images/farm-to-table.png" alt="Product 1">
            <h3>Product 1</h3>
            <p>Short description of Product 1</p>
            <button onclick="showLoginMessage()">View Products</button>
        </div>

        <!-- Product Card 2 -->
        <div class="product-card">
            <img src="images/processed-foods.png" alt="Product 2">
            <h3>Product 2</h3>
            <p>Short description of Product 2</p>
            <button onclick="showLoginMessage()">View Products</button>
        </div>

        <!-- Product Card 3 -->
        <div class="product-card">
            <img src="images/handmade-goods.png" alt="Product 3">
            <h3>Product 3</h3>
            <p>Short description of Product 3</p>
            <button onclick="showLoginMessage()">View Products</button>
        </div>

        <!-- Product Card 4 -->
        <div class="product-card">
            <img src="images/beverages.png" alt="Product 4">
            <h3>Product 4</h3>
            <p>Short description of Product 4</p>
            <button onclick="showLoginMessage()">View Products</button>
        </div>

        <!-- Product Card 5 -->
        <div class="product-card">
            <img src="images/speciality-items.png" alt="Product 5">
            <h3>Product 5</h3>
            <p>Short description of Product 5</p>
            <button onclick="showLoginMessage()">View Products</button>
        </div>

        <!-- Product Card 6 -->
        <div class="product-card">
            <img src="images/craft-products.png" alt="Product 6">
            <h3>Product 6</h3>
            <p>Short description of Product 6</p>
            <button onclick="showLoginMessage()">View Products</button>
        </div>
    </div>

    <!-- Overlay and Modal -->
    <div id="overlay" class="overlay">
        <div class="modal">
            <p>Please login to view the products.</p>
            <button onclick="closeMessage()">Close</button>
        </div>
    </div>

</body>
</html>
