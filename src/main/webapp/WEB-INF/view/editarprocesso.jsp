<%--
  Created by IntelliJ IDEA.
  User: Isadora
  Date: 20/01/2021
  Time: 08:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Editar Processo</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>

<div class="container">
    <form:form method="post" action="/cad_processo_war_exploded/editsaveprocesso">
        <div class="form-group row">
            <div class="form-group col-md-8">
                <form:hidden  path="id" />
                <label for="inputTipoProcesso" class="col-sm-3 col-form-label">Nome Tipo Processo</label>
                <div class="col-sm-5">
                    <form:select  path="tipoProcesso" class="form-control" id="inputTipoProcesso">
                        <form:option value="-" label="Selecionar Tipo Processo"/>
                        <form:options items="${listaT}" />
                    </form:select>
                </div>
            </div>

            <div class="form-group col-md-8">
                <label for="numeroProcesso" class="col-sm-3 col-form-label">Numero Processo</label>
                <div class="col-sm-5">

                    <form:input   path="numeroProcesso" class="form-control" id="numeroProcesso"
                                  placeholder="Numero Processo"/>
                </div>
            </div>

            <div class="form-group col-md-8">
                <label for="inputdataEntrada" class="col-sm-3 col-form-label">Data Entrada</label>
                <div class="col-sm-5">
                    <form:input  path="dataEntrada" class="form-control" id="inputdataEntrada" type="date"   />
                </div>
            </div>
            <div class="form-group col-md-8">
                <label for="valorProcesso" class="col-sm-3 col-form-label">Valor Recurso</label>
                <div class="col-sm-5">
                    <form:input   path="valorProcesso" class="form-control" id="valorProcesso"
                                  placeholder="Valor Recurso"/>
                </div>
            </div>

            <div class="form-group col-md-8">
                <label for="objetivo" class="col-sm-3 col-form-label">Objetivo</label>
                <div class="col-sm-5">
                    <form:textarea   path="objetivo" class="form-control" id="objetivo"
                                     placeholder="Objetivo"/>
                </div>
            </div>

            <div class="form-group col-md-8">
                <input class="btn btn-primary" type="submit" value="Editar"/>
                <a class="btn btn-info" role="button" href="cad_processo_war_exploded/index.jsp">Inicio</a>
            </div>
        </div>

    </form:form>
</div>
</body>
</html>
