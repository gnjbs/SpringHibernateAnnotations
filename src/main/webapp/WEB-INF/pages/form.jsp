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

	<div style="color: #CC665E font-size: 30px">CRUD | JAVARUSH</div>



	<c:url var="userRegistration" value="saveUser.html" />
	<form:form id="registerForm" modelAttribute="employee" method="post"
			   action="register">

		<table width="400px" height="150px">
			<tr>
				<td><form:label path="id">ID</form:label></td>
				<td><form:input disabled="true" path="id" value="${employeeObject.id}" /></td>
			</tr>
			<tr>
				<td><form:label path="name">Имя</form:label></td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td><form:label path="age">Возраст</form:label></td>
				<td><form:input path="age" /></td>
			</tr>
			<tr>
				<td><form:label path="isAdmin">Admin</form:label></td>
				<td><form:checkbox path="isAdmin"
								   label="Admin?" /></td>

			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Добавить" />
				</td>
			</tr>
		</table>
	</form:form>


	<a href="list">Нажмите сюда, чтобы увидеть список пользователей</a>
</center>
</body>
</html>
