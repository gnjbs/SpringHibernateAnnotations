<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page errorPage="error.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>CRUD | JAVARUSH </title>
</head>
<body>



<center>

	<div style="color: #CC665E; font-size: 30px">CRUD | JAVARUSH</div>
	<br>

	<form action="search" method="get">
		<table  bordercolor="#006699" style="border-collapse: collapse; width: 600px;" border="0">
			<tbody><tr>
				<td>Введите имя контакта:</td>
				<td><input name="search" type="text">
					<input type="submit" value="Поиск">

				</td></tr>
			</tbody></table>
	</form>
	<br>

	<a href="form">Нажмите сюда для добавления нового пользователя</a>
	<br>
	<br>
	<c:if test="${!empty employeeList}">
		<table border="1" bgcolor="black" width="600px">
			<tr style="background-color: #CC665E; color: white; text-align: center;" height="40px">

				<td>ID</td>
				<td>Имя</td>
				<td>Возраст</td>
				<td>IsAdmin</td>
				<td>Дата создания</td>
				<td>Редактировать</td>
				<td>Удалить</td>
			</tr>
			<c:forEach items="${employeeList}" var="user">
				<tr style="background-color: white; color: black; text-align: center;"height="30px">
					<td><c:out value="${user.id}" />
					<td><c:out value="${user.name}" />
					</td>
					<td><c:out value="${user.age}" />
					</td>
					<td><c:out value="${user.isAdmin}" />
					</td>
					<td><c:out value="${user.createdDate}" />
					</td>
					<td><a href="edit?id=${user.id}" method="get" >Редактировать</a></td>
					<td><a href="delete?id=${user.id}">Удалить</a></td>
				</tr>
			</c:forEach>

		</table>
		<br>
		<div id="pagination">

			<c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
				<c:choose>
					<c:when test="${page == i.index}">
						<span>${i.index}</span>
					</c:when>
					<c:otherwise>
						<c:url value="list" var="url">
							<c:param name="page" value="${i.index}"/>
						</c:url>
						<a href='<c:out value="${url}" />'>${i.index}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:url value="list" var="next">
				<c:param name="page" value="${page + 1}"/>
			</c:url>
			<c:if test="${page + 1 < maxPages}">
				<a href='<c:out value="${next}" />' class="pn next">Дальше</a>
			</c:if>
		</div>
	</c:if>



</center>
</body>
</html>
