<%-- 
    Document   : bloquearOutro
    Created on : 28/05/2020, 23:05:57
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
        <title>Bloquear em outro proprietario</title>
        <link rel="stylesheet" type="text/css" href="css/bloquear.css" media="screen"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <%
        int id = (Integer) request.getSession().getAttribute("sid");
        String us = (String) (session.getAttribute("susuario"));
        if(session.getAttribute("susuario")==null){
            response.sendRedirect("index.jsp");
        }
        ResultSet re = use.consultar("select * from chamados where idchamados="+request.getParameter("idchamados"));
        if(re.next()){
        %>

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <div class="caixa">
            <h3>Bloquear chamado <%=request.getParameter("idchamados")%> em outro proprietario</h3>
            <form method="post" action="DBbloquearoutro.jsp?idchamados=<%=re.getInt("idchamados")%>">
                <a>Nome do proprietario: </a>   
                <select name="idusuario">
            <%
                ResultSet res = use.consultar("select * from usuario");
                    while(res.next()){%>                   
                        <option value="<%=res.getString("idusuario")%>">
                            <%=res.getString("nome")%>
                        </option>
                    <%}
                    %> 
                </select>
                <p><input style="margin-top:5px;" type="submit" value="enviar"></input></p>
            </form>
                <%}
                    %> 
        </div>
    </body>
</html>
