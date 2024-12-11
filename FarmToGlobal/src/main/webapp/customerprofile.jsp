<%@ page import="com.klef.jfsd.farmtoglobal.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Profile</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        /* Reset Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body Styling */
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f5f5f5;
            color: #333;
            line-height: 1.6;
        }

        /* Profile Container */
        .profile-container {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            flex-wrap: wrap;
            max-width: 700px; /* Further reduced max-width */
            margin: 20px auto; /* Reduced margin */
            padding: 15px; /* Further reduced padding */
            background-color: #fff;
            border-radius: 10px; /* Slightly smaller border radius */
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1); /* Slightly smaller shadow */
        }

        /* Profile Details */
        .profile-details {
            flex: 1;
            padding-right: 15px; /* Further reduced padding */
            max-width: 350px; /* Further reduced max-width */
            margin-bottom: 15px; /* Further reduced bottom margin */
        }

        .profile-details h3 {
            font-size: 22px; /* Further reduced font size */
            font-weight: 600;
            text-align: center;
            margin-bottom: 15px; /* Further reduced margin */
            color: #2c3e50;
        }

        /* Profile Input Fields */
        .profile-detail {
            display: flex;
            flex-direction: column;
            margin-bottom: 10px; /* Further reduced space between fields */
        }

        .profile-detail label {
            font-size: 12px; /* Further reduced font size */
            color: #7f8c8d;
            margin-bottom: 4px; /* Further reduced margin */
            font-weight: 600;
        }

        .profile-detail input,
        .profile-detail select {
            padding: 8px; /* Further reduced padding */
            font-size: 12px; /* Further reduced font size */
            border: 2px solid #bdc3c7;
            border-radius: 6px; /* Reduced border radius */
            background-color: #ecf0f1;
            color: #34495e;
            transition: all 0.3s ease;
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
        }

        .profile-detail input[readonly] {
            background-color: #e1e1e1;
            cursor: not-allowed;
        }

        .profile-detail input:focus,
        .profile-detail select:focus {
            border-color: #3498db;
            outline: none;
            box-shadow: 0 0 8px rgba(52, 152, 219, 0.5);
        }

        .profile-detail input:hover,
        .profile-detail select:hover {
            border-color: #2980b9;
            box-shadow: inset 0 1px 3px rgba(41, 128, 185, 0.1);
        }

        /* Profile Image */
       /* Profile Image */
.profile-image {
    flex: 0.3;
    padding-left: 15px; /* Further reduced left padding */
    text-align: center;
    margin-top: 15px; /* Further reduced top margin */
}

.profile-image img {
    width: 100%;
    max-width: 120px; /* Further reduced image size */
    height: 120px; /* Further reduced image size */
    object-fit: cover;
    border: 4px solid #f0f0f0;
    transition: transform 0.3s ease;
}

/* Hover effect */
.profile-image img:hover {
    transform: scale(1.05);
}


        /* Buttons */
        .btn {
            padding: 8px 16px; /* Further reduced padding */
            font-size: 12px; /* Further reduced font size */
            color: #fff;
            background-color: #3498db;
            border: none;
            border-radius: 6px; /* Reduced border radius */
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 10px; /* Further reduced top margin */
            width: 100%;
        }

        .btn:hover {
            background-color: #2980b9;
            transform: translateY(-2px);
        }

        .btn:active {
            background-color: #2471a3;
            transform: translateY(2px);
        }

        /* Form Action Buttons */
        .form-actions {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }

        .form-actions button {
            width: 48%;
            padding: 8px 12px; /* Further reduced padding */
            border-radius: 6px; /* Reduced border radius */
            transition: all 0.3s ease;
        }

        .form-actions button:first-child {
            background-color: #ecf0f1;
            color: #34495e;
        }

        .form-actions button:first-child:hover {
            background-color: #d5dbdb;
        }

        /* Mobile Responsiveness */
        @media (max-width: 768px) {
            .profile-container {
                flex-direction: column;
                align-items: center;
                padding: 15px;
            }

            .profile-details {
                padding-right: 0;
                margin-bottom: 15px;
                width: 100%;
            }

            .profile-image {
                padding-left: 0;
                margin-top: 25px;
            }

            .profile-image img {
                max-width: 100px; /* Further reduced image size for mobile */
                height: 100px; /* Further reduced image size for mobile */
            }
        }
    </style>
        <script>
        // Enable Editing Functionality
        function enableEdit() {
            var inputs = document.querySelectorAll('.profile-detail input');
            inputs.forEach(function(input) {
                input.removeAttribute('readonly');
                input.classList.add('editable');
            });
        }
    </script>
    
</head>
<body>
    <%@ include file="customernavbar.jsp" %>
    <div class="profile-container">
        <!-- Left side: Profile Details -->
        <div class="profile-details">
            <h3>My Profile</h3>
            <form method="post" action="updateCustomer" enctype="multipart/form-data">
                <div class="profile-detail">
                    <label for="cid">ID</label>
                    <input type="number" id="cid" name="cid" value="<%= c.getId() %>" readonly>
                </div>
                <div class="profile-detail">
                    <label for="cname">Name</label>
                    <input type="text" id="cname" name="cname" value="<%= c.getName() %>" readonly>
                </div>
                <div class="profile-detail">
                    <label for="cgender">Gender</label>
                    <input type="text" id="cgender" name="cgender" value="<%= c.getGender() %>" readonly>
                </div>
                <div class="profile-detail">
                    <label for="cdob">Date of Birth</label>
                    <input type="date" id="cdob" name="cdob" value="<%= c.getDateofbirth() %>" readonly>
                </div>
                <div class="profile-detail">
                    <label for="cemail">Email Id</label>
                    <input type="email" id="cemail" name="cemail" value="<%= c.getEmail() %>" readonly>
                </div>
                <div class="profile-detail">
                    <label for="clocation">Location</label>
                    <input type="text" id="clocation" name="clocation" value="<%= c.getLocation() %>" readonly>
                </div>
                <div class="profile-detail">
                    <label for="ccontact">Contact No</label>
                    <input type="number" id="ccontact" name="ccontact" value="<%= c.getContact() %>" readonly>
                </div>
                <div class="profile-detail">
                    <label for="cimage">Profile Picture</label><br>
                    <input type="file" id="cimage" name="cimage">
                </div>
                <div class="form-actions">
                    <button type="button" class="btn" onclick="enableEdit()">Edit</button>
                    <button type="submit" class="btn">Update</button>
                </div>
            </form>
        </div>

        <!-- Right side: Profile Image -->
        <div class="profile-image">
            <img src="<%= request.getContextPath() %>/getCustomerImage?cid=<%= c.getId() %>" alt="Profile Picture">
        </div>
    </div>
</body>
</html>
