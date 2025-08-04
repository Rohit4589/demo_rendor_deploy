<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            padding: 40px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-collapse: separate;
            border-spacing: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 10px;
        }

        td {
            padding: 8px;
            font-size: 16px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }

        .btn {
            text-align: center;
            padding-top: 20px;
        }

        .submit-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 25px;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        .submit-btn:hover {
            background-color: #45a049;
        }

        .error {
            color: red;
            font-size: 13px;
            margin-top: 5px;
            display: block;
        }
    </style>
</head>
<body>

    <h1>Registration Form</h1>

    <form:form action="sucess" modelAttribute="modelobj" method="post">
        <table>
            <tr>
                <td>First Name</td>
                <td>
                    <form:input path="FirstName" />
                    <form:errors path="FirstName" cssClass="error" />
                </td>
            </tr>

            <tr>
                <td>Last Name</td>
                <td>
                    <form:input path="LastName" />
                    <form:errors path="LastName" cssClass="error" />
                </td>
            </tr>

            <tr>
                <td>Mobile Number</td>
                <td>
                    <form:input path="Mobilenumber" />
                    <form:errors path="Mobilenumber" cssClass="error" />
                </td>
            </tr>

            <tr>
                <td>Email</td>
                <td>
                    <form:input path="Email" />
                    <form:errors path="Email" cssClass="error" />
                </td>
            </tr>

            <tr>
                <td>Password</td>
                <td>
                    <form:input path="Password" />
                    <form:errors path="Password" cssClass="error" />
                </td>
            </tr>

            <tr>
                <td>Address</td>
                <td>
                    <form:input path="Address" />
                    <form:errors path="Address" cssClass="error" />
                </td>
            </tr>

            <tr>
                <td colspan="2" class="btn">
                    <input type="submit" value="Register" class="submit-btn" />
                </td>
            </tr>
        </table>
    </form:form>

</body>
</html>
