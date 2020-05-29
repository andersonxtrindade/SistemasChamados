<%-- 
    Document   : DBincluirContas
    Created on : 25/05/2020, 13:30:18
    Author     : axtri
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="conexao.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="use" class="beans.Usuario"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir contas</title>
    </head>
    <body>
        <jsp:setProperty name="use" property="nome" value="${param.nome}"/>
        <jsp:setProperty name="use" property="usuario" value="${param.usuario}"/>
        <jsp:setProperty name="use" property="senha" value="${param.senha}"/>
        <%
            String resp = use.incluir();
            if(resp.equals("ok")){
                response.sendRedirect("index.jsp");
            }else{
                out.println("Erro ao gravar conta!!!");
            }
        %>
    </body>
</html>
