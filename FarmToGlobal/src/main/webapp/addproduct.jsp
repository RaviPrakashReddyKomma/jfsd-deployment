<%@ page import="com.klef.jfsd.farmtoglobal.model.Farmer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Farmer f = (Farmer) session.getAttribute("farmer");
%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f9;
    margin: 0;
    padding: 0;
  }

  .container {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  }

  h3 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
  }

  label {
    font-weight: bold;
    display: block;
    margin-top: 10px;
    color: #333;
  }

  input[type="text"],
  input[type="number"],
  textarea,
  input[type="file"] {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }

  textarea {
    resize: vertical;
    height: 100px;
  }

  input[type="submit"],
  input[type="reset"] {
    width: 48%;
    padding: 10px;
    background-color: #28a745;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    margin-top: 10px;
  }

  input[type="submit"]:hover,
  input[type="reset"]:hover {
    background-color: #218838;
  }

  .form-control {
    padding: 10px;
    margin-bottom: 15px;
  }

  .btn {
    display: inline-block;
    text-align: center;
  }

  .btn-success {
    background-color: #28a745;
    color: white;
    border-radius: 4px;
    padding: 10px;
  }

  .btn-success:hover {
    background-color: #218838;
  }

  /* Ensure responsiveness */
  @media (max-width: 768px) {
    .container {
      margin: 20px;
      padding: 15px;
    }

    input[type="submit"], 
    input[type="reset"] {
      width: 100%;
    }
  }
</style>
</head>
<body>
<%@ include file="farmernavbar.jsp" %>
<div class="container">
  <h3>Add Product</h3>
  <form method="post" action="insertproduct" enctype="multipart/form-data">
      <label>Company Name</label>
      <input type="text" class="form-control" name="brandname" value="${farmer.company}" readonly />
    <label>Product Name</label>
    <input type="text" class="form-control" name="pname" required/>
    <label>Product Cost</label>
    <input type="number" class="form-control" name="pcost" required/>
    <label>Product Description</label>
    <textarea name="pdescription" required></textarea>
    <label>Product Image</label>
    <input type="file" class="form-control" name="pimage" required/>
    <div class="btn-group" style="display: flex; gap: 10px;">
      <input type="submit" class="btn btn-success" value="Add"/>
      <input type="reset" class="btn btn-success" value="Clear"/>
    </div>
  </form>
</div>

</body>
</html>
