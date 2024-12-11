<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        /* Reset margin and padding */
        * {
            margin: 0;
            padding: 0;
        }

        /* Container to center the elements */
        .container {
            background: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100vw;
            height: 100vh;
            position: relative;
            flex-direction: column;
            box-sizing: border-box;
        }

        /* Dustbin icon style */
        .dustbin {
            font-size: 50px;
            color: #343a40;
            transition: all 0.3s ease-in-out;
            position: absolute;
            top: 50%;  /* Position it in the center */
            animation: dustbinMove 3s ease-in-out infinite alternate;  /* Animation for dustbin */
        }

        /* Dustbin icon hover effect */
        .dustbin:hover {
            transform: scale(1.1);
            color: #28a745;  /* Green color on hover */
        }

        /* Animation for the dustbin */
        @keyframes dustbinMove {
            0% {
                transform: translateY(-20px);
            }
            100% {
                transform: translateY(20px);
            }
        }

        /* Style for the success message */
        h3 {
            font-size: 24px;
            color: #dc3545;  /* Red color to signify "deleted" */
            margin-bottom: 50px; /* Space between text and dustbin */
            animation: goToBin 3s ease-in-out forwards;
            position: relative;
            z-index: 2; /* Ensures text is above the dustbin */
        }

        /* Animation to simulate going into the dustbin */
        @keyframes goToBin {
            0% {
                opacity: 1;
                transform: translateY(0);  /* Start at original position */
            }
            50% {
                opacity: 0.7;  /* Fade out slightly */
                transform: translateY(20px);  /* Move down slightly */
            }
            100% {
                opacity: 0;  /* Fully fade out */
                transform: translateY(120px);  /* Move further down to simulate disappearing into the bin */
            }
        }
    </style>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <!-- Dustbin icon (using Font Awesome) -->
        <div class="dustbin">
            <i class="fas fa-trash-alt"></i>
        </div>
        <!-- Success message -->
        
    </div>
</body>
</html>
