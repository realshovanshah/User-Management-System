/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datapirates.ums;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Shah Jr
 */
public class LoginService {
    
    private static String driver = "com.mysql.cj.jdbc.Driver";
    private static String url = "jdbc:mysql://localhost:3306/ums?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    private static String username = "root";
    private static String pass = "";
    
    public static boolean validateUser(String email, String password){
        try{
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, username, pass);
            
            String sql = "SELECT * FROM USER WHERE EMAIL=? AND PASSWORD=?;"; 
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                return true;
            }
            
        }catch(Exception e){
            e.printStackTrace();
        };
        
        return false;
       
    }
}
