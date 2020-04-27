package com.datapirates.ums;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Shah Jr
 */
public class JdbcRegisterService {
    
    private static String driver = "com.mysql.cj.jdbc.Driver";
    private static String url = "jdbc:mysql://localhost:3306/user?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    private static String username = "root";
    private static String password = "";
    
    public static void register(User user) throws Exception{
        
        try{
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, username, password);

            String sql="INSERT INTO USER (USERNAME, FNAME, LNAME, EMAIL, PASSWORD) VALUES (?,?,?,?,?);";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getFname());
            ps.setString(3, user.getLname());
            ps.setString(4, user.getEmail());
            ps.setString(5, user.getPassword());

            ps.executeUpdate();
            return;
        }catch (Exception e){
            throw e;
        }
        
    }
}
