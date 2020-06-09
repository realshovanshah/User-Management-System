/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datapirates.ums.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Shah Jr
 */

//class to get database connection 
public class DBConnection {
    private static String driver = "com.mysql.cj.jdbc.Driver";
    private static String url = "jdbc:mysql://localhost:3306/ums?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    private static String username = "root";
    private static String password = "";
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        
        Class.forName(driver);
        
        Connection conn = DriverManager.getConnection(url, username, password);
        
        return conn;
    }
}
