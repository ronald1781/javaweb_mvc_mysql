package conexion;

import java.sql.Connection;
import java.sql.DriverManager;

public class conex_mysql {

    Connection con;

    public conex_mysql() {
        String server = "localhost";
        String user = "root";
        String pass = "";
        String bd = "bd_demo_java";
        String pto = "3306";
        String url = "jdbc:mysql://" + server + ":" + pto + "/" + bd;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
            System.err.println("Error" + e);
        }
    }

    public Connection getConection() {
        return con;
    }
}
