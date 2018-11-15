package conn33;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Alt+shift+F
 *
 * @author shravan
 */
import java.sql.*;

public class BaseDao {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/project";
            String name = "root";
            String password = "";

            con = DriverManager.getConnection(url, name, password);
            System.out.println(con);
            return con;
        } catch (Exception e) {
        }
        return con;
    }
}
