package utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {

    public Connection getDBConnection() {
        String connectUrl = "jdbc:mysql://localhost:3306/bookstore";
        String username = "root";
        String password = "";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connect = DriverManager.getConnection(connectUrl, username, password);
            return connect;
        } catch (Exception e) {
            System.err.println("connect fail!");
            e.printStackTrace();
        }
        return null;
    }

}
