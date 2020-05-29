<%-- 
    Document   : DBlogin
    Created on : 25/05/2020, 13:13:11
    Author     : axtri
--%>
<%@include file="conexao.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" language="Java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="use" class="beans.Usuario"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user = request.getParameter("usuario");
            session.putValue("usuario", user);
            String senha = use.cripto(request.getParameter("senha"));
            
            String query = "select * from usuario where usuario ='"+user+"'";
            ResultSet res = stmt.executeQuery(query);
            if(res.next()){
                if(res.getString(4).equals(senha)){
                    session.setAttribute("susuario", request.getParameter("usuario"));
                    session.setAttribute("sid", res.getInt(1));
                    response.sendRedirect("tecoIndex.jsp");
                }else{
                    out.println("Usuario ou senha incorreta!");
                    %><a href="index.jsp">Tente novamente:</a><%
                }
            }else{
                out.println("Usuario ou senha incorreta!");
                %><a href="index.jsp">Tente novamente:</a><%
            }
        %>
    </body>
</html>
