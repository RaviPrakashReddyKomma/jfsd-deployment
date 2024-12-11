<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Customers</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
            margin-left: 16%;
        }

        th, td {
            padding: 20px;
            font-size: 18px;
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
            margin-right: 5px;
            font-size: 18px;
        }

        td a:hover i {
            color: red;
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

    <h3><b>View All Customers</b></h3>
    <!-- Display success message when an item is deleted successfully -->
    <c:if test="${not empty successMessage}">
        <div class="success-message">
            ${successMessage}
        </div>
    </c:if>
    <p style="margin-right: 1020px;">Total Customers: <c:out value="${count}"/></p>

    <table id="customerTable">
        <thead>
            <tr>
                <th class="sortable">ID</th>
                <th class="sortable">Name</th>
                <th class="sortable">Gender</th>
                <th class="sortable">Date of Birth</th>
                <th class="sortable">Email</th>
                <th class="sortable">Location</th>
                <th class="sortable">Contact No</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${customerlist}" var="customer">
                <tr>
                    <td><c:out value="${customer.id}"/></td>
                    <td><c:out value="${customer.name}"/></td>
                    <td><c:out value="${customer.gender}"/></td>
                    <td><c:out value="${customer.dateofbirth}"/></td>
                    <td><c:out value="${customer.email}"/></td>
                    <td><c:out value="${customer.location}"/></td>
                    <td><c:out value="${customer.contact}"/></td>
                    <td><a href='<c:url value="delete?id=${customer.id}"/>'>
                        <i class="fas fa-trash-alt"></i> </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
