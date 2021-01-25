<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home Processo</title>
</head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<body>
<br>
<br>
<br>

<div class="container">
    <header>

        <ul class="nav p-2 justify-content-center">
            <li class="nav-item p-2">
                <div class="btn-group">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                        Tipos de Processo
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="cadtipoprocesso">Cadastrar Tipos Processos</a>
                        <a class="dropdown-item" href="viewtipoprocesso">Editar Processos</a>
                        <a class="dropdown-item" href="listartipoprocesso">Listar Processos</a>

                    </div>
                </div>
            </li>

            <li class="nav-item p-2">
                <div class="btn-group">
                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                        Processos
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="cadprocesso">Cadastrar Processos</a>
                        <a class="dropdown-item" href="viewprocesso">Editar Processo</a>
                        <div class="dropdown-divider"></div>
                        <h6 class="dropdown-header">Procurar Processo</h6>
                        <form method="get" action="buscarNumProcesso">
                        <div class="input-group mb-3">

                            <input name="numeroProcesso" type="text" class="form-control" placeholder="Nº Processo" aria-label="Nº Processo" aria-describedby="basic-addon2"/>
                            <div class="input-group-append">

                                <button class="btn btn-outline-primary" type="submit" type="button">Consultar</button>

                            </div>

                        </div>
                        </form>
                    </div>
                </div>
            </li>
        </ul>
    </header>


</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>