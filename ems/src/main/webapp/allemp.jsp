<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Employee</title>
<style>
    /* General Body Styling */
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to bottom, #007bff, #6ec1e4);
        margin: 0;
        padding: 0;
    }

    h1 {
        color: #fff;
        text-align: center;
        margin-top: 20px;
        font-size: 36px;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    }

    h2 {
        color: #ffd700;
        text-align: center;
        margin: 10px 0;
        font-size: 22px;
        font-weight: bold;
        text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.4);
    }

    /* Table Styling */
    table {
        margin: 30px auto;
        width: 90%;
        border-collapse: collapse;
        background: #fff;
        box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
        border-radius: 10px;
        overflow: hidden;
    }

    table thead {
        background: #007bff;
        color: #fff;
    }

    table th, table td {
        padding: 15px;
        text-align: center;
        font-size: 16px;
        border: 1px solid #ddd;
    }

    table th {
        font-size: 18px;
        font-weight: bold;
        text-transform: uppercase;
    }

    table tr:nth-child(even) {
        background-color: #f8f9fa;
    }

    table tr:hover {
        background-color: #f1f1f1;
    }

    /* Buttons Styling */
    button {
        padding: 10px 15px;
        font-size: 16px;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: transform 0.2s, box-shadow 0.2s;
    }

    button:hover {
        transform: scale(1.1);
        box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
    }

    /* Action Buttons */
    .action-delete {
        background: #dc3545;
    }

    .action-delete:hover {
        background: #c82333;
    }

    .action-update {
        background: #ffc107;
        color: #333;
    }

    .action-update:hover {
        background: #e0a800;
    }

    /* Create Button */
    #createbut {
        display: block;
        margin: 20px auto;
        text-align: center;
    }

    #createbut button {
        background-color: #28a745;
    }

    #createbut button:hover {
        background-color: #218838;
    }

    /* Logout Button */
    center a button {
        background: #ff4757;
    }

    center a button:hover {
        background: #e63946;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        table {
            width: 95%;
        }

        h1 {
            font-size: 28px;
        }

        h2 {
            font-size: 18px;
        }

        button {
            font-size: 14px;
            padding: 8px 10px;
        }
    }
</style>
</head>
<body>

    <h1>All Employee Page</h1>

    <div id="createbut">
        <a href="reg.jsp"><button>Create Employee</button></a>
    </div>

    <center><h2>Welcome, <%= session.getAttribute("name") %></h2></center>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Salary</th>
                <th>Department No</th>
                <th>Password</th>
                <th colspan="2">Actions</th>
            </tr>
        </thead>
        <tbody>
        <%
            ResultSet rs = (ResultSet) request.getAttribute("rs");
            while (rs.next()) {
        %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td>
                    <a href="delete?id=<%=rs.getString(1)%>">
                        <button class="action-delete">Delete</button>
                    </a>
                </td>
                <td>
                    <a href="update.jsp?id=<%=rs.getString(1)%>">
                        <button class="action-update">Update</button>
                    </a>
                </td>
            </tr>
        <%
            }
        %>
        </tbody>
    </table>

    <center>
        <a href="login.jsp"><button>Logout</button></a>
    </center>

    <script>
        let msgEle = document.getElementById("msg");
        setTimeout(() => {
            if (msgEle) {
                msgEle.style.display = "none";
            }
        }, 2000);
    </script>

</body>
</html>
