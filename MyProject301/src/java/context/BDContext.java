/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author hp
 */
public class BDContext {

    public Connection getConnection() throws Exception {
        String url = "jdbc:sqlserver://" + serverName + ":" + portName
                + ";databaseName = " + dbName;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//                             com.microsoft.sqlserver.jdbc.SQLServerDriver
        return DriverManager.getConnection(url, userName, password);
    }

    private final String serverName = "localhost";
    private final String portName = "1111";
    private final String dbName = "PRJ301_SP22";
    private final String userName = "sa";
    private final String password = "123456";
    
    public static void main(String[] args) {
        try {
            System.out.println(new BDContext().getConnection());
        } catch (Exception e) {
        }
    }
}
