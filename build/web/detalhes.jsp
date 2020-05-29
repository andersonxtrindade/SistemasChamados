<%-- 
    Document   : detalhes
    Created on : 27/05/2020, 00:47:42
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
        <title>Detalhes de chamados ativos</title>
        <link rel="stylesheet" type="text/css" href="css/detalhes.css" media="screen"/>
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
        ResultSet res = use.consultar("select c.idchamados, c.nome, c.tipo, c.data, c.telefone, c.local, c.descricao, c.cidusuario from chamados as c left join usuario as u on c.cidusuario = u.idusuario  where idchamados="+request.getParameter("idchamados"));
        if(res.next()){    
        %>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Detalhes de chamados ativos</a>
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
                    <p><a class="nav-link" href="DBbloquear.jsp?idchamados=<%=res.getInt("idchamados")%>">Bloquear chamado <img src="imgs/block.jpg" style="width: 30px; height: 30px;" alt="..."></a></p>
                </li>
                <li class="nav-item">
                   <p><a class="nav-link" href="bloquearOutro.jsp?idchamados=<%=res.getInt("idchamados")%>">Bloquear chamado em outro proprietario<img src="imgs/blockfriend.jpg" style="width: 30px; height: 30px;" alt="..."></a></p>
                </li>
                <li class="nav-item">
                   <p><a class="nav-link" href="DBapagar.jsp?idchamados=<%=res.getInt("idchamados")%>">Finalizar chamado<img src="imgs/X.jpg" style="width: 30px; height: 30px;" alt="..."></a></p>
                </li>
            </ul>
        </nav>
                <div class="container">
                    <h3>Descrição do chamado <%=res.getString("c.idchamados")%></h3>
                    <div class="caixatexto">
                        <p><b>Nome do solicitante: </b><%=res.getString("c.nome")%></p>
                        <p><b>Local do solicitante: </b><%=res.getString("c.tipo")%></p>
                        <p><b>Telefone do solicitante: </b><%=res.getString("c.telefone")%></p>
                        <p><b>Data abertura do chamado: </b><%=res.getString("c.data")%></p>
                        <p><b>Tipo do chamado: </b><%=res.getString("c.tipo")%></p>
                        <p><b>Descrição do chamado: </b><%=res.getString("c.descricao")%></p>
                        <p><b>ID do mandante do chamado: </b><%=res.getString("c.cidusuario")%></p>
                    </div>
                </div>
                <%
            }%>
            
        </div>
    </body>
</html>
