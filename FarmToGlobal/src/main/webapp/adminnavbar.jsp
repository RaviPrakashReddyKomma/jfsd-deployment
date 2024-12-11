<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Farm to Global</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        body {
            background-image: url('path/to/your/background-image.jpg');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Combined header and sidebar */
        .header {
            display: flex;
            align-items: center;
            background-color: #34495e;
            padding: 20px;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
        }

        .navbar-logo {
            max-width: 140px;
            height: auto;
            margin-right: 20px;
        }

        .navbar-links {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
        }

        .navbar-links li {
            margin-left: 25px;
        }

        .navbar-links a {
            color: #ecf0f1;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
            padding: 12px 18px;
            border-radius: 4px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .navbar-links a:hover {
            background-color: #2980b9;
            color: white;
        }

        .navbar-links a.active {
            background-color: #3498db;
            color: white;
        }

        /* Sidebar below the header */
        .sidebar {
            width: 200px;
            position: fixed;
            top: 80px; /* Below the header */
            left: 0;
            height: 100%;
            background-color: #34495e;
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            z-index: 999;
        }

        .sidebar-icons a {
            color: #ecf0f1;
            text-decoration: none;
            font-size: 20px;
            margin: 10px 0;
            padding: 10px;
            border-radius: 4px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .sidebar-icons a:hover {
            background-color: #2980b9;
            color: white;
        }

        .content {
            margin-left: 220px;
            padding: 20px;
            margin-top: 80px; /* Space for the header */
        }

        /* Mobile view */
        @media (max-width: 768px) {
            .header {
                padding: 10px;
                flex-direction: column;
                align-items: flex-start;
            }

            .sidebar {
                top: 100px;
                width: 100%;
                height: auto;
                padding: 10px;
                display: flex;
                flex-direction: row;
                justify-content: space-between;
            }

            .sidebar-icons a {
                font-size: 18px;
                padding: 8px;
            }

            .content {
                margin-left: 0;
                padding: 10px;
            }

            .navbar-links {
                flex-direction: column;
                align-items: flex-start;
                width: 100%;
                padding: 10px 0;
            }

            .navbar-links li {
                margin: 10px 0;
            }
        }
    </style>
</head>

<body>

<!-- Combined Header and Sidebar -->
<div class="header">
    <!-- Logo and Navbar links (horizontal layout) -->
    <img src="images/logo.jpg" alt="Farm to Global Logo" class="navbar-logo">
    <ul class="navbar-links">
        <li><a href="/adminhome" class="active">Dashboard</a></li>
        <li><a href="/viewallcustomers">Customers</a></li>
        <li><a href="/viewallfarmers">Farmers</a></li>
        <li><a href="/adminviewproducts">Total Products</a></li>
        <li><a href="/updateadminprofile">Update Profile</a></li>
        <li><a href="/adminlogin">Logout</a></li>
    </ul>
</div>

<!-- Sidebar (Below Header) -->
<div class="sidebar">
    <div class="sidebar-icons">
        <a href="/adminhome">Home</a>
        <a href="/viewallcustomers">Customers</a>
        <a href="/viewallfarmers">Farmers</a>
        <a href="/updateadminprofile">Update Profile</a>
        <a href="/adminlogin">Logout</a>
    </div>
</div>

<!-- Content area -->
<div class="content">
    <!-- Main content goes here -->
    <h1>Welcome to the Admin Dashboard</h1>
</div>

<script>
    function toggleMenu() {
        const navbarLinks = document.querySelector('.navbar-links');
        navbarLinks.classList.toggle('active');
    }
</script>

</body>
</html>
