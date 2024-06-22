/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Bruno
 */
public class Conexao {

    private static final String url = "jdbc:mysql://localhost:3306/projetofinal?useSSL=false";
    private static final String user = "root";
    private static final String password = "root";
    public static final String driver = "com.mysql.cj.jdbc.Driver";

    public static Connection conectar() throws SQLException {
        Connection conn = null;
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            System.out.println(e);
        }
        return conn;
    }
}
