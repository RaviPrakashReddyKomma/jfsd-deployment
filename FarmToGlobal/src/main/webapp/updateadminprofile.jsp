<%@ page import="com.klef.jfsd.farmtoglobal.model.Admin" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    // Retrieve the Admin object from the session
    Admin c = (Admin) session.getAttribute("admin");

    // Check if the Admin object is null
    if (c == null) {
        out.println("Error: Admin not logged in.");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Update Profile</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <style>
    /* Custom CSS for the card */
    .card {
        border-radius: 15px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        margin-top: 60px;  /* Increased margin-top to move the card down */
        max-width: 600px;  /* Reduced card width */
        margin-left: auto; /* Center the card horizontally */
        margin-right: auto; /* Center the card horizontally */
        animation: cardAnimation 1s ease-out;
    }

    /* Animation for the card */
    @keyframes cardAnimation {
        0% {
            transform: translateY(-30px);
            opacity: 0;
        }
        100% {
            transform: translateY(0);
            opacity: 1;
        }
    }

    .card-body {
        padding: 30px;
    }

    .card-title {
        font-size: 24px;
        font-weight: bold;
        color: #007bff;
        animation: fadeInTitle 1.5s ease-out;
    }

    /* Animation for card title */
    @keyframes fadeInTitle {
        0% {
            opacity: 0;
        }
        100% {
            opacity: 1;
        }
    }

    .btn-primary {
        background-color: #007bff;
        border: none;
        transition: background-color 0.3s ease;
    }

    .btn-primary:hover {
        background-color: #0056b3;
    }

    .btn-secondary {
        background-color: #6c757d;
        border: none;
        transition: background-color 0.3s ease;
    }

    .btn-secondary:hover {
        background-color: #5a6268;
    }

    h3 {
        margin-top: 30px;
        font-size: 28px;
        color: #333;
        animation: fadeInHeading 1.2s ease-out;
    }

    /* Animation for heading */
    @keyframes fadeInHeading {
        0% {
            opacity: 0;
        }
        100% {
            opacity: 1;
        }
    }

    .form-label {
        animation: slideInLabel 1s ease-out;
    }

    /* Animation for form labels */
    @keyframes slideInLabel {
        0% {
            transform: translateX(-20px);
            opacity: 0;
        }
        100% {
            transform: translateX(0);
            opacity: 1;
        }
    }

    .form-control {
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
    }

    .form-control:focus {
        border-color: #007bff;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }

</style>


</head>
<body>

<%@ include file="adminnavbar.jsp" %>

<h3 align="center"> Update Profile </h3>

<div class="container">
    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            <form method="post" action="update">
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" id="username" name="auname" value="<%=c.getUsername()%>" readonly required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="text" class="form-control" id="password" name="apwd" value="<%=c.getPassword() %>" required>
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
                <button type="reset" class="btn btn-secondary">Clear</button>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
