package cl.negocio;

import cl.accesodato.Conexion;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Usuario {
    private String id;
    private String name;
    private String apepat;
    private String apemat;
    private String state;
    private String username;
    private String password;
    private String created_at;
    Conexion con;
    public Usuario(){
        con=new Conexion();
    }
    
    public void save(){
        String sql="insert into users(name,apepat,apemat,username,password,created_at,state) values('"+this.getName()+"','"+this.getApepat()+"','"+this.getApemat()+"','"+this.getUsername()+"','"+this.getPassword()+"',now(),'activo')";
        con.runSql(sql);
    }
    
    
    public int validar(){
        String sql="select * from users where username='"+this.getUsername()+"'";
        con.setSQL(sql);
        try {
            while(con.getRs().next()){
                if(con.getRs().getString("password").equals(this.getPassword())){
                    return 1;
                }else{
                    return 0;
                }
            }
        } catch (SQLException ex) {
           System.out.println("ERROR");
        }
        return 0;
       
    }
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getApepat() {
        return apepat;
    }

    public void setApepat(String apepat) {
        this.apepat = apepat;
    }

    public String getApemat() {
        return apemat;
    }

    public void setApemat(String apemat) {
        this.apemat = apemat;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }
    
    
}
