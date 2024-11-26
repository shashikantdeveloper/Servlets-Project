<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>

<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }

    h1, h2 {
        color: #333;
        text-align: center;
    }

    form {
        display: flex;
        flex-direction: column;
        margin: 50px auto;
        width: 40%;
        padding: 20px;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    form input {
        margin-bottom: 15px;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    form input:focus {
        outline: none;
        border-color: #007bff;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }

    form button {
        padding: 10px 20px;
        font-size: 18px;
        color: #fff;
        background-color: #007bff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    form button:hover {
        background-color: #0056b3;
    }

    center h2 {
        margin-top: 20px;
        color: #007bff;
        font-size: 24px;
    }
</style>

</head>
<body>

<center><h2>Welcome, <%= session.getAttribute("name")  %></h2></center>
<h1>Register Here</h1>
<form action="reg" method="post">
    <input type="number" name="id" placeholder="Enter Id" required> 
    <input type="text" name="name" placeholder="Enter Name" required> 
    <input type="email" name="email" placeholder="Enter Email" required> 
    <input type="text" name="salary" placeholder="Enter Salary" required> 
    <input type="number" name="dno" placeholder="Enter Department number" required>
    <input type="password" name="password" placeholder="Enter Password" required>
    <button type="submit">Register Here</button>
</form>
</body>
</html>
