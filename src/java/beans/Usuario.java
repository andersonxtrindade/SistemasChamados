package beans;

import connection.ConnectionFactory;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class Usuario {
    private String nome;
    private String senha;
    private String usuario;
    

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
    
    public static String cripto(String senha){
        String retorno = "";
        MessageDigest md;
        try{
            md = MessageDigest.getInstance("MD5");
            BigInteger hash = new BigInteger(1,md.digest(senha.getBytes()));
            retorno = hash.toString(16);             
        }catch(Exception e){}
        
        return retorno;
    }
    
    public String incluir(){
        
        Connection con = ConnectionFactory.getConnection();
        try{
            Statement stmt = con.createStatement();
            
            String query = "insert into usuario(nome, usuario, senha)values('"+getNome()+"','"+getUsuario()+"','"+cripto(getSenha())+"')";
            stmt.executeUpdate(query);
        }catch(SQLException e){
            return "Erro "+e.getMessage();
        }
        return "ok";
    }
    
    
}
