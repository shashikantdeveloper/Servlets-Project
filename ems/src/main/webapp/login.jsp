<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Login Page</title>
<style>
    /* General Body Styling */
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #6a11cb, #2575fc);
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        color: #fff;
    }

    /* Container Styling */
    .container {
        background: rgba(0, 0, 0, 0.6);
        padding: 30px;
        border-radius: 10px;
        width: 90%;
        max-width: 400px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
        text-align: center;
    }

    /* Heading Styling */
    h1 {
        margin-bottom: 20px;
        font-size: 32px;
        font-weight: bold;
    }

    h2 {
        margin-bottom: 10px;
        font-size: 18px;
        font-weight: normal;
    }

    /* Form Styling */
    form {
        display: flex;
        flex-direction: column;
        gap: 15px;
    }

    input {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
    }

    input:focus {
        outline: none;
        box-shadow: 0 0 5px #2575fc;
    }

    /* Button Styling */
    button {
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        padding: 12px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #45a049;
    }
</style>
</head>

<body>
    <div class="container">
        <center><h2> <%= session.getAttribute("name") %> </h2></center>
        <h1>Login Here</h1>
        <form action="login" method="post">
            <input type="email" name="email" placeholder="Enter Email" required>
            <input type="password" name="password" placeholder="Enter Password" required>
            <button type="submit">Login Here</button>
        </form>
    </div>
</body>
</html>
