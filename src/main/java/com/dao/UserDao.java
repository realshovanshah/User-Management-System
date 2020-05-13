/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;
//import com.datapirates.ums.User;
import com.model.User;
import com.utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author tenzinsparkss
 */
public class UserDao {
    
    public static void register(User user) throws Exception{
        
        try{
            Connection con = DBConnection.getConnection();

            String sql="INSERT INTO USER (FNAME, LNAME, EMAIL, PASSWORD) VALUES (?,?,?,?);";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getFname());
            ps.setString(2, user.getLname());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());

            ps.executeUpdate();
            return;
            
        }
        catch (Exception e){
            
            throw e;
        }
        
        
    }
    
     public static boolean validateUser(String email, String password) throws Exception{
        try{
            Connection con = DBConnection.getConnection();
            
            String sql = "SELECT * FROM USER WHERE EMAIL=? AND PASSWORD=?;"; 
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                return true;
            }
            
        }
        catch(Exception ex){
            throw ex;
        }
        
        return false;
       
    }
    
     
    
    
}
