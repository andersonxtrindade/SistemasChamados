package beans;

import connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Chamados {
    private String nome;
    private String local;
    private String telefone;
    private String tipo;
    private String descricao;
    private int idusuario;
    private int idchamados;

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public int getIdchamados() {
        return idchamados;
    }

    public void setIdchamados(int idchamados) {
        this.idchamados = idchamados;
    }


    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    
    public String incluir(){
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();

        Connection con = ConnectionFactory.getConnection();
        try{
            Statement stmt = con.createStatement();
            
            String query = "insert into chamados(nome, telefone, local, tipo, descricao, data)values('"+getNome()+"', '"+getTelefone()+"', '"+getLocal()+"', '"+getTipo()+"', '"+getDescricao()+"', '"+dateFormat.format(date)+"')";
            stmt.executeUpdate(query);
        }catch(SQLException e){
            return "Erro "+e.getMessage();
        }
        return "ok";
    }
    public ResultSet consultar(String query){
        Connection con = ConnectionFactory.getConnection();
        ResultSet resultado;
        try{
            Statement statement = con.createStatement();                  
            resultado = statement.executeQuery(query);
            return resultado;
        }
        catch(SQLException e){
            return null;
        }
    }
    public boolean excluir(int id){
        Connection con = ConnectionFactory.getConnection();
        try{
            Statement statement = con.createStatement();
            String query = "delete from chamados where idchamados="+id;
            statement.executeUpdate(query);
        }catch(SQLException e){
            return (false);
        }
        return (true);
    }
    public boolean bloquear(int id, int uid){
        Connection con = ConnectionFactory.getConnection();
        try{
            
            Statement statement = con.createStatement();
            String query = "update chamados set cidusuario='"+uid+"' where idchamados="+id;
            statement.executeUpdate(query);
        }catch(SQLException e){
            return (false);
        }
        return (true);
    }
    public boolean obloquear(int id, int uid){
        Connection con = ConnectionFactory.getConnection();
        try{           
            Statement statement = con.createStatement();
            String query = "update chamados set cidusuario="+uid+" where idchamados="+id;
            statement.executeUpdate(query);
        }catch(SQLException e){
            return (false);
        }
        return (true);
    }

    public boolean desbloquear(int id){
        Connection con = ConnectionFactory.getConnection();
        try{
            
            Statement statement = con.createStatement();
            String query = "update chamados set cidusuario = null where idchamados="+id;
            statement.executeUpdate(query);
        }catch(SQLException e){
            return (false);
        }
        return (true);
    }
}
