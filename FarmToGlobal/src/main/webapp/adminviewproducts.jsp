<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Products</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
            text-align: center;
        }

        h3 {
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        table {
            width: 80%;
            margin: 0 auto 20px;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-left: 16%; /* Moves the table to the right */
        }

        th, td {
            padding: 20px; /* Increased padding */
            font-size: 18px; /* Increased font size */
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            cursor: pointer;
            background-color: #34495e;
            color: white;
            text-transform: uppercase;
        }

        th.sortable:hover {
            background-color: #354aa2;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        td a {
            color: #ff4c4c;
            text-decoration: none;
            font-weight: bold;
        }

        td a:hover {
            color: red;
        }

        td a i {
            margin-right: 5px; /* Adds space between the icon and text */
            font-size: 16px; /* Adjusts icon size */
        }

        td a:hover i {
            color: red; /* Changes icon color on hover */
        }

        .success-message {
            color: #4CAF50; /* Green text color */
            font-size: 18px;
            margin: 10px auto;
            text-align: center;
        }
        

    </style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>

    <h2 align="center">Admin View Products</h2>
    <!-- Display success message when a product is deleted successfully -->
    <c:if test="${not empty successMessage}">
        <div class="success-message">
            ${successMessage}
        </div>
    </c:if>

    <p style="margin-right: 1020px;"> Total Products: <c:out value="${countss}"/></p>

    <table border="1">
        <thead>
            <tr>
                <th>Product Name</th>
                <th>Cost</th>
                <th>Description</th>
                <th>Image</th>
                <th>ACTION</th>
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
                        <a href='<c:url value="/deletess?id=${product.id}"/>'>
                            <i class="fas fa-trash-alt"></i>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
