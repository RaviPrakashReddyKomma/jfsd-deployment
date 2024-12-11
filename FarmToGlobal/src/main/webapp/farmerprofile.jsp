<%@ page import="com.klef.jfsd.farmtoglobal.model.Farmer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Farmer f = (Farmer) session.getAttribute("farmer");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Farmer Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        .profile-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h3 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .profile-detail {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .form-control[readonly] {
            background-color: #e9ecef;
            cursor: not-allowed;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        .btn-container {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }

        .btn {
            flex: 1;
            padding: 10px;
            background-color: #4169e1;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #365acb;
        }

        p {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }
    </style>
    <script>
        // Enable editing of form fields
        function enableEdit() {
            const inputs = document.querySelectorAll('.form-control');
            inputs.forEach(input => input.removeAttribute('readonly'));
        }
    </script>
</head>
<body>
    <%@ include file="farmernavbar.jsp" %>
    <div class="profile-container">
        <h3>My Profile</h3>
        <form method="post" action="updateFarmer">
            <div class="profile-detail">
                <label>ID</label>
                <input type="number" class="form-control" name="fid" value="<%= f.getId() %>" readonly required>
            </div>
            <div class="profile-detail">
                <label>Name</label>
                <input type="text" class="form-control" name="fname" value="<%= f.getName() %>" readonly required>
            </div>
            <div class="profile-detail">
                <label>Gender</label>
                <input type="radio" name="fgender" value="Male" <%= "Male".equals(f.getGender()) ? "checked" : "" %>> Male
                <input type="radio" name="fgender" value="Female" <%= "Female".equals(f.getGender()) ? "checked" : "" %>> Female
                <input type="radio" name="fgender" value="Others" <%= "Others".equals(f.getGender()) ? "checked" : "" %>> Others
            </div>
            <div class="profile-detail">
                <label>Date of Birth</label>
                <input type="date" class="form-control" name="fdob" value="<%= f.getDateofbirth() %>" readonly required>
            </div>
            <div class="profile-detail">
                <label>Email</label>
                <input type="email" class="form-control" name="femail" value="<%= f.getEmail() %>" readonly required>
            </div>
            <div class="profile-detail">
                <label>Location</label>
                <input type="text" class="form-control" name="flocation" value="<%= f.getLocation() %>" readonly required>
            </div>
            <div class="profile-detail">
                <label>Contact No</label>
                <input type="text" class="form-control" name="fcontact" value="<%= f.getContact() %>" readonly required>
            </div>
            <div class="profile-detail">
                <label>Company Name</label>
                <input type="text" class="form-control" name="fcname" value="<%= f.getCompany() %>" readonly required>
            </div>
            <div class="profile-detail">
                <label>Password</label>
                <input type="text" class="form-control" name="fpwd" value="<%= f.getPassword() %>" readonly required>
            </div>
            <div class="btn-container">
                <button type="button" class="btn" onclick="enableEdit()">Edit</button>
                <button type="submit" class="btn">Update</button>
            </div>
        </form>
    </div>
</body>
</html>
