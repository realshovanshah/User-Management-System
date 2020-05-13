/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datapirates.ums.dao;

import com.datapirates.ums.model.User;
import com.datapirates.ums.utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Shah Jr
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
        }catch (ClassNotFoundException | SQLException e){
            throw e;
        }
        
    }
    
    public static boolean validateUser(String email, String password){
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
            
        }catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        };
        
        return false;
       
    }
    
    public static void addUser(User user) throws Exception{
        
        try{
            Connection con = DBConnection.getConnection();

            String sql="INSERT INTO USER (FNAME, LNAME, EMAIL, PASSWORD, AGE, GENDER, IS_ADMIN) VALUES (?,?,?,?,?,?,?);";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getFname());
            ps.setString(2, user.getLname());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getAge());
            ps.setString(6, user.getGender());
            ps.setInt(7, user.getIs_admin());

            ps.executeUpdate();
            return;
        }catch (ClassNotFoundException | SQLException e){
            throw e;
        }
        
    }
}
