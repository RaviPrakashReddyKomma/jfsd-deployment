<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Nav Bar</title>
<style>
    /* Resetting margins and padding */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    /* Body styling */
    body {
        font-family: Arial, sans-serif;
    }

    /* Header with scrolling message */
    .header {
        background-color: #f4f4f4;
        padding: 10px;
        text-align: center;
        position: relative;
        overflow: hidden;
        height: 40px;
    }

    /* Scrolling text container */
    .scrolling-text {
        position: absolute;
        top: 0;
        left: 0;
        white-space: nowrap;
        display: inline-block;
        animation: scrollLeft 25s linear infinite;
        font-size: 16px;
        font-weight: bold;
        color: #333;
    }

    /* Scrolling animation */
    @keyframes scrollLeft {
        0% {
            transform: translateX(100%);
        }
        100% {
            transform: translateX(-100%);
        }
    }

    /* Phone icon container */
    .phone-container {
        position: absolute;
        top: 0;
        right: 10px;
        display: flex;
        align-items: center;
        font-size: 16px;
        color: #333;
    }

    .phone-container i {
        margin-right: 5px;
    }

    /* Navbar styling */
    .navbar {
        display: flex;
        align-items: center;
        justify-content: space-between;
        background-color: #8B4511; 
        padding: 10px 20px;
    }

    .navbar .logo {
        display: flex;
        align-items: center;
    }

    .navbar .logo img {
        height: 50px;  /* Adjust logo height */
        margin-right: 10px; /* Space between logo and text */
    }

    .navbar .logo .logo-text {
        font-size: 20px; /* Adjust font size of "Farm to Global" */
        color: white;
        font-weight: bold; /* Make the text bold */
    }

    .navbar ul {
        display: flex;
        list-style-type: none;
    }

    .navbar ul li {
        margin: 0 15px;
        position: relative;
    }

    .navbar ul li a {
        text-decoration: none;
        color: white;
        font-size: 16px;
    }

    /* Navbar link hover effect */
    .navbar ul li a:hover {
        
        text-decoration: none; /* Remove the underline */
    }

    /* Dropdown menu styling */
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #8B4511;
        min-width: 160px;
        z-index: 1;
    }

    .dropdown-content a {
        color: white;
        padding: 10px 20px;
        text-decoration: none;
        display: block;
    }

    /* Show dropdown on hover */
    .navbar ul li:hover .dropdown-content {
        display: block;
    }

    /* Dropdown item hover effect */
    .dropdown-content a:hover {
        background-color: #ffcc00; /* Golden hover effect */
    }
</style>
<!-- Add FontAwesome CDN for phone icon -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
</head>
<body>
    <!-- Header with scrolling text and phone icon -->
    <div class="header">
        <div class="scrolling-text">
            Free shipping starts from 599 Don't miss our special offers!
        </div>
        <div class="phone-container">
            Need Help? &nbsp;&nbsp; <i class="fas fa-phone-alt"></i> Call Us: +919059578555
        </div>
    </div>

    <!-- Navbar -->
    <nav class="navbar">
        <a href="/" class="logo">
            <img src="images/logo.jpg" alt="Logo">
            <span class="logo-text">Farm to Global</span>
        </a>
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/aboutus">About Us</a></li>
            <li><a href="/products">Products</a></li>
            <li class="dropdown">
                <a href="/registration">Registration</a>
                <div class="dropdown-content">
                    <a href="/farmerreg">Farmer Registration</a>
                    <a href="/customerreg">Customer Registration</a>
                </div>
            </li>
            <li><a href="/login">Login</a>
            <div class="dropdown-content">
                    <a href="/adminlogin">Admin</a>
                    <a href="/farmerlogin">Farmer</a>
                    <a href="/customerlogin">Customer</a>
                </div>
            </li>
        </ul>
    </nav>
</body>
</html>
