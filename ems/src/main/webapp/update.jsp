<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>

<style>
    /* General Body Styling */
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #ff7e5f, #feb47b);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #333;
    }

    /* Form Container Styling */
    .form-container {
        background: rgba(255, 255, 255, 0.9);
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
        width: 100%;
        max-width: 400px;
    }

    h1 {
        text-align: center;
        margin-bottom: 20px;
        color: #444;
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 15px;
    }

    input {
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 16px;
    }

    input:focus {
        outline: none;
        border-color: #ff7e5f;
        box-shadow: 0 0 5px rgba(255, 126, 95, 0.5);
    }

    button {
        background-color: #ff7e5f;
        color: white;
        border: none;
        padding: 12px;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #feb47b;
    }
</style>
</head>
<body>

<%
Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;
 try {
     Class.forName("com.mysql.cj.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems", "root", "root");
     ps = con.prepareStatement("select * from emp where id = ?");
     String sid = request.getParameter("id");
     int id = Integer.parseInt(sid);
     ps.setInt(1, id);
     rs = ps.executeQuery();
     rs.next();
 } catch (Exception e) {
     e.printStackTrace();
 }
%>

<div class="form-container">
    <h1>Update Employee</h1>
    <form action="update" method="post">
        <input type="text" value="<%=rs.getInt(1)%>" name="id" placeholder="Enter New ID">
        <input type="text" value="<%=rs.getString(2)%>" name="name" placeholder="Enter New Name">
        <input type="text" value="<%=rs.getString(3)%>" name="email" placeholder="Enter New Email">
        <input type="text" value="<%=rs.getDouble(4)%>" name="salary" placeholder="Enter New Salary">
        <input type="number" value="<%=rs.getInt(5)%>" name="dno" placeholder="Enter New Department Number">
        <input type="text" value="<%=rs.getString(6)%>" name="password" placeholder="Enter New Password">
        <button type="submit">Update</button>
    </form>
</div>

</body>
</html>
