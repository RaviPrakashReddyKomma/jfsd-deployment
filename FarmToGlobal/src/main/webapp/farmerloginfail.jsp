<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Farmer Login Failed</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #ffe6e6; /* Light red background */
            overflow: hidden;
        }

        .error-animation {
            margin: 150px auto;
        }

        .cross {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            display: block;
            stroke-width: 2;
            stroke: #d9534f;
            stroke-miterlimit: 10;
            box-shadow: inset 0px 0px 0px #d9534f;
            animation: fill 0.4s ease-in-out 0.4s forwards, scale 0.3s ease-in-out 0.9s both;
            position: relative;
            top: 5px;
            right: 5px;
            margin: 0 auto;
        }

        .cross__circle {
            stroke-dasharray: 166;
            stroke-dashoffset: 166;
            stroke-width: 2;
            stroke-miterlimit: 10;
            stroke: #d9534f;
            fill: #fff;
            animation: stroke 0.6s cubic-bezier(0.65, 0, 0.45, 1) forwards;
        }

        .cross__line {
            transform-origin: 50% 50%;
            stroke-dasharray: 48;
            stroke-dashoffset: 48;
            animation: stroke 0.3s cubic-bezier(0.65, 0, 0.45, 1) 0.8s forwards;
        }

        @keyframes stroke {
            100% {
                stroke-dashoffset: 0;
            }
        }

        @keyframes scale {
            0%, 100% {
                transform: none;
            }

            50% {
                transform: scale3d(1.1, 1.1, 1);
            }
        }

        @keyframes fill {
            100% {
                box-shadow: inset 0px 0px 0px 30px #d9534f;
            }
        }

        .message {
            font-size: 24px;
            margin-top: 20px;
            color: #333; /* Dark text color */
        }

        a {
            margin-top: 20px;
            text-decoration: none;
            color: #d9534f; /* Red color for the link */
            font-size: 18px;
        }

        a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>
    <div class="error-animation">
        <svg class="cross" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52">
            <circle class="cross__circle" cx="26" cy="26" r="25" fill="none" />
            <path class="cross__line" fill="none" d="M16 16 36 36 M36 16 16 36" />
        </svg>
    </div>
    <div class="message"><c:out value="${message}" /></div>
    <a href="farmerlogin">Try Again</a>
</body>
</html>
