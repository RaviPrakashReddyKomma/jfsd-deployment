<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Success</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .message-box {
        background-color: #fff;
        padding: 20px 40px;
        border: 2px solid #4CAF50;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    .message-box c\\:out {
        font-size: 18px;
        color: #4CAF50;
        font-weight: bold;
    }
</style>
</head>
<body>
    <div class="message-box">
        <c:out value="${message}"></c:out>
    </div>
</body>
</html>
