<%-- 
    Document   : detalhesAnt
    Created on : 28/05/2020, 20:45:39
    Author     : axtri
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="conexao.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="use" class="beans.Chamados"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fila de chamados</title>
        <link rel="stylesheet" type="text/css" href="css/detalhesAnt.css" media="screen"/>
        <script src=""></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <%   
        int id = (Integer) request.getSession().getAttribute("sid");
        String us = (String) (session.getAttribute("susuario"));
        if(session.getAttribute("susuario")==null){
            response.sendRedirect("index.jsp");
        }
        ResultSet res = use.consultar("select idchamado, nome, tipo, data, datafecha, telefone, local, idusuario, descricao from chamadosant where idchamado="+request.getParameter("idchamado"));
        if(res.next()){    
        %>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Detalhes de chamados antigos</a>
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
            </ul>
        </div>
        </nav>
                <div class="container">
                    <h3>Descrição do chamado <%=res.getString("idchamado")%></h3>
                    <div class="caixatexto">
                        <p><b>Nome do solicitante: </b><%=res.getString("nome")%></p>
                        <p><b>Local do solicitante: </b><%=res.getString("tipo")%></p>
                        <p><b>Telefone do solicitante: </b><%=res.getString("telefone")%></p>
                        <p><b>Data abertura do chamado: </b><%=res.getString("data")%></p>
                        <p><b>Data fechamento do chamado: </b><%=res.getString("datafecha")%></p>
                        <p><b>ID do funcionario do chamado: </b><%=res.getString("idusuario")%></p>
                        <p><b>Data do chamado: </b><%=res.getString("data")%></p>
                        <p><b>Tipo do chamado: </b><%=res.getString("tipo")%></p>
                        <p><b>Descrição do chamado: </b><%=res.getString("descricao")%></p>
                    </div>
                </div>
                <%
            }%>
    </body>
</html>
