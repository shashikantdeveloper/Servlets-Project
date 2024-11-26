<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<style>
    /* General Body Styling */
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #007bff, #00c6ff);
        color: #fff;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        text-align: center;
    }

    h1 {
        font-size: 48px;
        margin-bottom: 20px;
    }

    /* Button Styling */
    button {
        background-color: #28a745;
        color: #fff;
        font-size: 18px;
        padding: 12px 20px;
        margin: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #218838;
    }

    /* Links styling */
    a {
        text-decoration: none;
    }

    /* Container for all content */
    .container {
        background: rgba(0, 0, 0, 0.6);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
        width: 80%;
        max-width: 500px;
    }
</style>
</head>
<body>
    <%
        response.sendRedirect("login.jsp");
    %>
    <div class="container">
        <h1>Welcome to EMS</h1>
        <a href="reg.jsp"><button>Click Here to Register</button></a>
        <a href="allemp"><button>Click Here to View All Employees</button></a>
    </div>
</body>
</html>
