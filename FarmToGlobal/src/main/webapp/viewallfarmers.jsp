<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Farmers</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> <!-- Font Awesome -->
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
            font-size: 18px; /* Adjusts icon size */
        }

        td a:hover i {
            color: red; /* Changes icon color on hover */
        }
    </style>
</head>

<body>
    <%@ include file="adminnavbar.jsp" %>
    <h3><b>View All Farmers</b></h3>

    <!-- Display success message -->
    <c:if test="${not empty successMessage}">
        <div style="color: green; font-weight: bold; margin-bottom: 20px;">
            ${successMessage}
        </div>
    </c:if>

    <p style="margin-right: 1020px;">Total Farmers: <c:out value="${count}"/></p>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Date of Birth</th>
            <th>Email</th>
            <th>Location</th>
            <th>Contact No</th>
            <th>ACTION</th>
        </tr>

        <c:forEach items="${farmerlist}" var="farmer">
            <tr>
                <td><c:out value="${farmer.id}"/></td>
                <td><c:out value="${farmer.name}"/></td>
                <td><c:out value="${farmer.gender}"/></td>
                <td><c:out value="${farmer.dateofbirth}"/></td>
                <td><c:out value="${farmer.email}"/></td>
                <td><c:out value="${farmer.location}"/></td>
                <td><c:out value="${farmer.contact}"/></td>
                <td>
                    <a href='<c:url value="/deletes?id=${farmer.id}"/>'>
                        <i class="fas fa-trash-alt"></i> 
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>

</html>
