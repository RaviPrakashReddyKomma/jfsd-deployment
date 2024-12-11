<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Admin Profile</title>
</head>
<body>
    <h1>Admin Profile</h1>
    
    <form action="@{/updatepassword}" method="post">
        <input type="hidden" name="username" th:value="${admin.username}"/>
        
        <label for="password">Current Password:</label>
        <input type="password" id="password" name="currentPassword" required/>
        
        <label for="newPassword">New Password:</label>
        <input type="password" id="newPassword" name="newPassword" required/>

        <button type="submit">Update Password</button>
    </form>

    <p th:text="${message}"></p>
</body>
</html>
