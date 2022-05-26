package connect;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

 
public class DBContext {
    private final String url = "jdbc:mysql://localhost:3306/webbanhang";
    private final String USERNAME = "root";
    private final String PASSWORD = "";
    public Connection getConnection()throws SQLException {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
           
            conn =  DriverManager.getConnection(url, USERNAME, PASSWORD);
        } catch (Exception ex) {
            System.out.println("connect failure!");
            ex.printStackTrace();
        }
        return conn;    
    }
}
