<%@page import="java.sql.*"%>
<%@page contentType="text/html" language="Java"%>
<%
            session.removeAttribute("susuario");
            session.invalidate();
            response.sendRedirect("index.jsp");
        %>