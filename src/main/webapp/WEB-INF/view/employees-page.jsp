<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee MNG app</title>
</head>
<body>
<h2>All Employees</h2>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Age</th>
        <th>Salary</th>
        <th>Department</th>
    </tr>
    <c:forEach var="employee" items="${employees}">
        <tr>
            <td>${employee.name}</td>
            <td>${employee.surname}</td>
            <td>${employee.age}</td>
            <td>${employee.salary}</td>
            <td>${employee.department}</td>
            <td>
                <input type="button" value="Update"
                       onclick="window.location.href = '/employees/updateInfo/${employee.id}'">
                <form action="/employees/deleteEmployee/${employee.id}" method="post">
                    <button type="submit">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<input type="button" value="Add"
       onclick="window.location.href = '/employees/new'"/>
</body>
</html>
