<%@page import="java.sql.*"%>
        <%
            Connection con = null;
            Statement stmt = null;
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_abertura?useTimezone=True&serverTimezone=UTC&useSSL=false","root","solefrio13");
                stmt = con.createStatement();
                
            }catch(ClassNotFoundException e){
                out.println("Erro "+e.getMessage());
            }
            catch(SQLException e){
                out.println("Erro "+e.getMessage());
            }
        %>
