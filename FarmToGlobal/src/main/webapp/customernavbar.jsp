<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Farm to Global</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body {
            background-image: url('path/to/your/background-image.jpg'); /* Add your background image here */
            background-size: cover; /* Cover the entire page */
            background-position: center; /* Center the background image */
        }
        .navbar {
            background-color: transparent; /* Fully transparent background */
            border-radius: 0;
            margin-bottom: 20px;
            display: flex;
            align-items: center; /* Align content vertically in the center */
            justify-content: center; /* Horizontally center the content within the navbar */
        }
        .navbar-logo {
            max-width: 100px; /* Adjust the maximum width as needed */
            height: auto; /* Maintain aspect ratio */
            margin-right: 20px;
        }
        .navbar a {
            color: black;
            padding: 14px 20px;
            text-decoration: none;
            text-align: center;
        }
        .navbar a:hover {
            background-color: rgba(90, 155, 212, 0.5);
            color: white;
        }
        .dropdown-menu {
            background-color: #f9f9f9; /* Light background for dropdown */
            border: 1px solid #ccc; /* Border around dropdown */
            border-radius: 4px; /* Rounded corners for dropdown */
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* Shadow for dropdown */
            min-width: 160px; /* Minimum width for dropdown */
        }
        .dropdown-menu li a {
            padding: 12px 16px; /* Padding for dropdown items */
            color: black; /* Text color for dropdown items */
            text-decoration: none; /* Remove underline */
        }
        .dropdown-menu li a:hover {
            background-color: rgba(90, 155, 212, 0.5); /* Hover effect for dropdown items */
            color: white; /* Text color on hover */
        }
        .navbar .dropdown:hover .dropdown-menu {
            display: block; /* Show dropdown on hover */
        }
    </style>
</head>
<body>

<nav class="navbar">
    <a href="/">
        <img src="images/logo.jpg" alt="Farm to Global Logo" class="navbar-logo">
    </a>
    <ul class="navbar-links" style="list-style: none; padding: 0; margin: 0; display: flex;">
        <li><a href="/customerhome">Home</a></li>
        <li><a href="/customerprofile">Customer profile</a></li>
        <li><a href="/customerviewproducts">Customer Products</a></li>
        <li><a href="/customerlogout">Logout</a></li>
        
       
    </ul>
</nav>

</body>
</html>
