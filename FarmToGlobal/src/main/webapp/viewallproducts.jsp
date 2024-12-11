<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Products</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/style.css' />">
    <style>
    /* Table Styling */
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 10px;
        text-align: center; /* Center the text in all cells */
    }

    th {
        background-color: #4169e1;
        color: white;
        text-align: center; /* Center the table header text */
    }

    td {
        background-color: #fff;
        border-bottom: 1px solid #ddd;
    }

    tr:nth-child(even) td {
        background-color: #f9f9f9;
    }

    /* Image Styling */
    img {
        max-width: 100%;
        height: auto;
        border-radius: 8px;
        object-fit: cover;
    }

    /* Navbar (assuming it's part of the farmernavbar.jsp) */
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
    
</style>
</head>
<body>
<%@ include file="farmernavbar.jsp" %>
    <h2 align="center">All Products</h2>

    <table border="1">
        <thead>
            <tr>
                <th >Product Name</th>
                <th >Cost</th>
                <th >Description</th>
                <th>Image</th>
                
            </tr>
        </thead>
        <tbody>
            <c:forEach var="product" items="${products}">
                <tr>
                    <td>${product.name}</td>
                    <td>${product.cost}</td>
                    <td>${product.description}</td>
                    <td>
                        <img src="<c:url value='/displayproductimage?id=${product.id}' />" alt="Product Image" width="100" height="100"/>
                    </td>
                    <td>
                    
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
