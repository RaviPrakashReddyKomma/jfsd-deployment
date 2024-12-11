<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* Style for the success message */
    #successMessage {
        display: none;
        background-color: #4CAF50;
        color: white;
        padding: 15px;
        position: fixed;
        top: 10px;
        left: 50%;
        transform: translateX(-50%);
        border-radius: 5px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        z-index: 1000;
        font-size: 16px;
        animation: slideDown 0.5s ease-in-out;
    }

    /* Slide-down animation */
    @keyframes slideDown {
        0% {
            top: -50px;
            opacity: 0;
        }
        100% {
            top: 10px;
            opacity: 1;
        }
    }

    /* Fade out animation */
    @keyframes fadeOut {
        0% {
            opacity: 1;
        }
        100% {
            opacity: 0;
        }
    }

    /* Timeout to fade out the message */
    .fadeOut {
        animation: fadeOut 2s forwards;
    }
</style>
</head>
<body>

<!-- Success message -->
<div id="successMessage">Deleted successfully</div>

<script>
    // Function to show the success message
    function showSuccessMessage() {
        var successMessage = document.getElementById('successMessage');
        successMessage.style.display = 'block';

        // Fade out the message after 3 seconds
        setTimeout(function() {
            successMessage.classList.add('fadeOut');
        }, 3000);
    }

    // Trigger the success message for demo
    showSuccessMessage();
</script>

</body>
</html>
