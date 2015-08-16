<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>CRUD | JAVARUSH</title>
</head>
<body>
<center>

	<div style="color: #CC665E; font-size: 30px">CRUD | JAVARUSH | EDIT USER</div>


	<c:url var="userRegistration" value="editUser.html" />
	<form:form id="registerForm" commandName="employeeObject" method="post" action="update">
		<table width="400px" height="150px" pagesize="10">
			<tr>
				<td>ИД</td>
				<td><form:input  path="id" /></td>
			</tr>
			<tr>
				<td>Имя</td>
				<td><form:input path="name"/></td>
			</tr>
			<tr>
				<td>Возраст</td>
				<td><form:input path="age" /></td>
			</tr>

			<tr>
				<td>Админ?</td>
				<td><form:checkbox path="isAdmin" label="Admin?" /></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" value="Обновить" />
				</td>
			</tr>
		</table>
	</form:form>

</center>
</body>
</html>
