package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConlectionMySql {
    public static Connection getConnect() throws SQLException, ClassNotFoundException {
        String jdbcURL = "jdbc:mysql://localhost:3306/casestudymd3";
        String jdbcUsername = "root";
        String jdbcPassword = "hoanglanhl99";
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

        return connection;

    }
}
