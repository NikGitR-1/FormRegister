<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>
<h2>Add new employee</h2>
<form:form action="/employees/create" modelAttribute="employee">
    <form:hidden path="id"/>
    Name: <form:input path="name"/>
    <br><br>
    Surname: <form:input path="surname"/>
    <br><br>
    Department: <form:input path="department"/>
    <br><br>
    Salary: <form:input path="salary"/>
    <br><br>
    Age: <form:input path="age"/>
    <br><br>
    <input type="submit" value="Submit"/>
</form:form>
</body>
</html>
