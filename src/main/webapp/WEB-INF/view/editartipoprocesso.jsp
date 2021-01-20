<%--
  Created by IntelliJ IDEA.
  User: Isadora
  Date: 19/01/2021
  Time: 23:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Editar Tipo Cadastro</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<div class="container-fluid">
    <form:form method="post" action="/cad_processo_war_exploded/editsave">
        <div class="form-group row">
            <div class="form-group col-md-8">
                <label for="inputTipoProcesso" class="col-sm-3 col-form-label">Nome Tipo Processo</label>
                <form:hidden  path="id" />
                <div class="col-sm-5">
                    <form:input  path="nomeTipoProcesso" class="form-control" id="inputTipoProcesso" placeholder="Nome Processo"/>
                </div>
            </div>
            <div class="form-group col-md-8">
                <input class="btn btn-primary" type="submit" value="Editar"/>
            </div>
        </div>

    </form:form>
</div>
</body>
</html>
