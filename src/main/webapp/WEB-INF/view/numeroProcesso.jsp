<%--
  Created by IntelliJ IDEA.
  User: Isadora
  Date: 25/01/2021
  Time: 06:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="C" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Processo</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container">
<div class="alert alert-primary" role="alert">
    <h4>Numero Processo</h4>
 <c:out value="${command.numeroProcesso}"/><br>
</div>
    <div class="alert alert-secondary" role="alert">
        <h4>Tipo processo</h4>
 <c:out value="${command.tipoProcesso}"/><br>
    </div>
        <div class="alert alert-success" role="alert">
            <h4>Data Processo</h4>
 <c:out value="${command.dataEntrada}"/><br>
        </div>

            <div class="alert alert-danger" role="alert">
                <h4>Objetivo Processo</h4>
 <c:out value="${command.objetivo}"/><br>
            </div>
<div class="form-group col-md-8">

    <a class="btn btn-info" role="button" href="index.jsp">Inicio</a>
</div>



</div>

</body>
</html>
