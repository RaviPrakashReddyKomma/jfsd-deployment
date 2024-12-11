<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        body {
            background-color: lightgrey;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            border: 2px solid lightgrey;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            display: flex;
        }
        .form-container, .image-container {
            flex: 1;
            padding: 20px;
        }
        .form-container {
            width: 40%;
            min-height: 400px;
            display: flex;
            flex-direction: column;
            align-items: center;
            flex-grow: 1;
        }
        .form-title {
            text-align: center;
            margin-bottom: 20px;
            font-weight: bold;
            font-size: 24px;
            color: #333;
        }
        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
        }
        input[type="text"] {
            width: 80%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid black;
            border-radius: 50px;
            box-sizing: border-box;
        }
        input[type="submit"],
        input[type="reset"] {
            width: 40%;
            padding: 8px;
            border: none;
            border-radius: 50px;
            color: white;
            cursor: pointer;
            margin-top: 10px;
        }
        input[type="submit"] {
            background-color: #4169e1;
        }
        input[type="reset"] {
            background-color: #f44336;
        }
        input[type="submit"]:hover {
            background-color: #5a9bd4;
        }
        input[type="reset"]:hover {
            background-color: #e57373;
        }
        .image-container {
            text-align: center;
        }
        .image-container img {
            width: 100%;
            height: 320px;
            border-radius: 10px;
        }
    </style>
</head>
<body>
<%@ include file="mainnavbar.jsp" %>
<div class="container">
    <div class="form-container">
     <div class="form-title">Farmer Login</div>
<form method="post" action="checkfarmerlogin">
<label>Enter Email</label>
<input type="text" class="form-control" name="femail" required/>

<label>Enter Password</label>
<input type="text" class="form-control" name="fpwd" required/>

<input type="submit"  class="btn btn-success" value="login"/>
<input type="reset"  class="btn btn-success" value="clear"/>
</form>
</div>
<div class="image-container">
        <img src="images/sideimage.jpg" alt="Admin Image">
    </div>
    </div>
</body>
</html>