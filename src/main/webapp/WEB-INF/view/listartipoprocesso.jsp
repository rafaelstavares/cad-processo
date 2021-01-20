<%--
  Created by IntelliJ IDEA.
  User: Isadora
  Date: 19/01/2021
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Lista Tipos de Processos</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<div class="container">
    <h1>Lista de Tipos de Processo</h1>
    <table class="table table-striped">
        <thead class="thead-dark">
        <th scope="col">Id</th>
        <th scope="col">Nome</th>
        </thead>
        <c:forEach var="emp" items="${list}">
            <tr>
                <td>${emp.id}</td>
                <td>${emp.nomeTipoProcesso}</td>
            </tr>
        </c:forEach>
    </table>
    <br/>
    <a class="btn btn-info" role="button" href="index.jsp">Inicio</a>
</div>
</body>
</html>
