<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>
    Information for all employees
</h3>
<br><br>
<security:authorize access="hasRole('HR')">
    <input type = "button" value="Salary"
           onclick="window.location.href = 'hr_info'">
    <br><br>
    only for HR staff
</security:authorize>

<br><br>

<security:authorize access="hasRole('MANAGER')">
    <input type = "button" value="Performance"
           onclick="window.location.href = 'manager_info'">
    <br><br>
    Only for managers
</security:authorize>



</body>
</html>
