<%-- 
    Document   : tecoIndex
    Created on : 25/05/2020, 16:46:37
    Author     : axtri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controle chamados</title>
        <link rel="stylesheet" type="text/css" href="css/tecoIndex.css" media="screen"/>
        
        <script src="javascript/scripttecoIndex.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <%
        int id = (Integer) request.getSession().getAttribute("sid");
        String us = (String) (session.getAttribute("susuario"));
        if(session.getAttribute("susuario")==null){
            response.sendRedirect("index.jsp");
        }
        %>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">SaC para você</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="tecoIndex.jsp">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="filaChamados.jsp">Chamados ativos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="filaAntChamados.jsp">Chamados antigos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="filaBloqChamados.jsp">Chamados bloqueados</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="listaUsuarios.jsp">Lista de usuarios</a>
                    </li>
                </ul>
                <span class="navbar-text">
                    Bem vindo, <%=us%>  <a href="logout.jsp">LOGOUT</a>
                </span>
              </div>
        </nav>
                <div>
                    <img src="imgs/atendimento.jpg" class="img-fluid" style="width: 100%; height: 100%; background-size: 100%; background-attachment: fixed; background-color: #000" alt="Responsive image">
                </div>
        
    </body>
</html>
