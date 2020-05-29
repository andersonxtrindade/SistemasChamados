<%-- 
    Document   : DBincluirChamados
    Created on : 26/05/2020, 02:20:54
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
        <title>Incluir chamados</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <style>
             #caixa{
                width: 400px;
                height: 120px;
                text-align: center;
                margin: 0 auto;
                position: absolute;
                left: 50%;
                top: 50%;
                margin-left:-200px;
                margin-top:-60px;
                border-radius: 8px;
                padding-top: 20px;
            }           
        </style>
    </head>
    <body>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        
        <jsp:setProperty name="use" property="nome" value="${param.nome}"/>
        <jsp:setProperty name="use" property="telefone" value="${param.telefone}"/>
        <jsp:setProperty name="use" property="local" value="${param.local}"/>
        <jsp:setProperty name="use" property="tipo" value="${param.tipo}"/>
        <jsp:setProperty name="use" property="descricao" value="${param.descricao}"/>
        <%
            String resp = use.incluir();
            if(resp.equals("ok")){
                %>
                <div id="caixa">
                    <h3 class="text"><p>Chamado aberto com sucesso, espere retorno, SaC para você agradece!!!</p>
                        <p><a href="index.jsp"> Voltar</a></p></h3>
                </div>
                <%              
            }else{
                out.println("Erro ao abrir chamado, tente novamente!!!");
                %>
                <a href="incluirChamados.jsp">aqui</a>
                <%  
            }
        %>
    </body>
</html>
