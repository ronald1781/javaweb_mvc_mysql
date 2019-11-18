package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class conex_mssql {

    static Connection con = null;

    public static Connection getConnection() {
        String server = "192.168.1.107";
        String prto = "1433";
        String bd = "MYM_BD_SCIRERH";
        String user = "sa";
        String pass = "s@pcore2828";
        String url = "jdbc:sqlserver://" + server + ":" + prto + ";databaseName=" + bd;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null, "Error en la conexion Revisar Driver " + e.getMessage(), "Error de Conexion", JOptionPane.ERROR_MESSAGE);
        }
        try {
            con = DriverManager.getConnection(url, user, pass);
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error " + e.getMessage(), "Error de Conexion", JOptionPane.ERROR_MESSAGE);
        }
        return con;
    }

    public static ResultSet getConsulta(String consulta) {
        Connection conex = getConnection();
        Statement declara;
        try {
            declara = conex.createStatement();
            ResultSet respuesta = declara.executeQuery(consulta);
            return respuesta;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error " + e.getMessage(), "Error de Conexion", JOptionPane.ERROR_MESSAGE);
        }
        return null;
    }
}
