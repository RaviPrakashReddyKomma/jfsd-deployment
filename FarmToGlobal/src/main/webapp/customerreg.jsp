<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Registration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        body {
            background-color: lightgrey; /* Background color for the page */
        }

        .container {
            max-width: 800px; /* Maximum width for the form container */
            margin: 50px auto; /* Center the container */
            padding: 20px; /* Padding around the container */
            background-color: white; /* Background color for the form */
            border-radius: 5px; /* Rounded corners */
            border: 2px solid lightgrey; /* Light grey border for the container */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            display: flex; /* Use flexbox for layout */
            flex-direction: row-reverse; /* Position content to the right */
        }

        .form-content {
            flex: 1; /* Allow form to take remaining space */
            padding: 20px; /* Padding for form content */
        }

        h3 {
            text-align: center; /* Center align the heading */
            margin-bottom: 20px; /* Space below the heading */
        }

        .form-title {
            text-align: center; /* Center align the form title */
            margin-bottom: 20px; /* Space below the form title */
            font-weight: bold; /* Bold text for form title */
            font-size: 24px; /* Increase font size for form title */
            color: #333; /* Darker color for better visibility */
        }

        label {
            font-weight: bold; /* Bold text for labels */
            margin-top: 10px; /* Space above the labels */
        }

        input[type="text"],
        input[type="date"],
        input[type="number"],
        input[type="radio"] {
            width: 100%; /* Full width inputs */
            padding: 10px; /* Padding inside inputs */
            margin-bottom: 15px; /* Space below inputs */
            border: 1px solid lightgrey; /* Light grey border for inputs */
            border-radius: 5px; /* Rounded corners for inputs */
            box-sizing: border-box; /* Include padding in width calculation */
        }

        input[type="radio"] {
            width: auto; /* Auto width for radio buttons */
            margin-right: 10px; /* Space to the right of radio buttons */
        }

        .btn {
            width: 48%; /* Set width for buttons */
            padding: 10px; /* Padding inside buttons */
            border-radius: 5px; /* Rounded corners for buttons */
            cursor: pointer; /* Pointer cursor on hover */
        }

        .btn-success {
            background-color: #4169e1; /* Royal Blue for success buttons */
            color: white; /* Text color for buttons */
        }

        .btn-success:hover {
            background-color: #5a9bd4; /* Lighter blue on hover */
        }

        .form-image {
            width: 300px; /* Set a specific width for the image */
            padding-top: 150px; /* Apply top padding */
            height: 620px; /* Set a specific height for the image */
            margin-left: 20px; /* Space between form and image */
            border-radius: 10px; /* Rounded corners for all sides */
        }
    </style>
</head>
<body>
<%@ include file="mainnavbar.jsp" %>
<div class="container">
    <div class="form-content">
        <div class="form-title" align="center">Register as a Customer</div> <form method="post" action="insertcustomer">
            <label>Enter Name</label>
            <input type="text" class="form-control" name="cname" required/>
            
            <label>Select Gender</label><br/>
            <input type="radio" name="cgender" class="form-check-input" value="Male" required/>Male
            <input type="radio" name="cgender" class="form-check-input" value="Female" required/>Female 
            <input type="radio" name="cgender" class="form-check-input" value="Others" required/>Others
            <br/>
            
            <label>Select Date Of Birth</label>
            <input type="date" name="cdob" required/>
            
            <label>Enter Email Id</label>
            <input type="text" class="form-control" name="cemail" required/>
            
            <label>Enter Password</label>
            <input type="text" class="form-control" name="cpwd" required/>
            
            <label>Enter Location</label>
            <input type="text" class="form-control" name="clocation" required/>
            
            <label>Enter Contact</label>
            <input type="number" class="form-control" name="ccontact" required/>
            
            <input type="submit" class="btn btn-success" value="Register"/>
            <input type="reset" class="btn btn-success" value="Clear"/>
        </form>
    </div>
    <img src="images/sideimage.jpg" alt="Registration Image" class="form-image"> </div>
</body>
</html>