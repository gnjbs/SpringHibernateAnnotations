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

  <div style="color: #CC665E; font-size: 30px">CRUD | JAVARUSH SEARCH</div>
  <br>

  <c:if test="${!empty employeeSearchList}">
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
      <c:forEach items="${employeeSearchList}" var="user">
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
          <td><a href="edit?id=${user.id}">Редактировать</a></td>
          <td><a href="delete?id=${user.id}">Удалить</a></td>
        </tr>
      </c:forEach>
    </table>
  </c:if>


  <a href="list">Вернуться назад</a>
</center>
</body>
</html>