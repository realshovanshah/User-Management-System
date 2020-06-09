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

    //registers the given data into the database
    public static void register(User user) throws Exception {

        try {
            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO USER (FNAME, LNAME, EMAIL, PASSWORD) VALUES (?,?,?,?);";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getFname());
            ps.setString(2, user.getLname());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());

            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        }

    }
    //registers the given data from the database and returns them`

    public static User validateUser(String email, String password) {
        User user = null;
        try {
            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM USER WHERE EMAIL=? AND PASSWORD=?;";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                user = new User();
                user.setFname(rs.getString("fname"));
                user.setLname(rs.getString("lname"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setAge(rs.getString("age"));
                user.setGender(rs.getString("gender"));
                user.setId(rs.getInt("id"));
                user.setIs_admin(rs.getInt("is_admin"));
                user.setIs_blocked(rs.getInt("is_blocked"));

            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        };

        return user;

    }
    
    //adds the given data into the database

    public static void addUser(User user) throws Exception {

        try {
            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO USER (FNAME, LNAME, EMAIL, PASSWORD, AGE, GENDER, IS_ADMIN) VALUES (?,?,?,?,?,?,?);";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getFname());
            ps.setString(2, user.getLname());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getAge());
            ps.setString(6, user.getGender());
            ps.setInt(7, user.getIs_admin());

            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        }

    }

        //updates users' given data from the database

    public static void updateUser(User user) throws Exception {

        try {
            Connection con = DBConnection.getConnection();
            String sql = "UPDATE USER SET FNAME=?, LNAME=?, EMAIL=?, PASSWORD=?, AGE=?, GENDER=?, IS_ADMIN=? WHERE ID=?;";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getFname());
            ps.setString(2, user.getLname());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getAge());
            ps.setString(6, user.getGender());
            ps.setInt(7, user.getIs_admin());
            ps.setInt(8, user.getId());

            ps.executeUpdate();

        } catch (Exception e) {
            throw e;
        }

    }

    //returns user details of the given user
    public User userDetails(int id) throws ClassNotFoundException {
        User user = null;
        try {
            String sql = "SELECT * FROM USER where id=?;";
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setFname(rs.getString("fname"));
                user.setLname(rs.getString("lname"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setAge(rs.getString("age"));
                user.setGender(rs.getString("gender"));
                user.setId(rs.getInt("id"));
                user.setIs_admin(rs.getInt("is_admin"));
                user.setIs_blocked(rs.getInt("is_blocked"));
            }
            con.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    //deletes user with given id from the database
    public void delete(int id) throws ClassNotFoundException {
        try {
            String sql = "DELETE FROM USER WHERE ID = ?";
            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();

        } catch (SQLException e) {
        }
    }
    
    //blocks user with given id from the database
    public void blockUser(int id) throws Exception {

        try {

            String sql = "UPDATE USER SET is_blocked=1 where id=?;";

            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

        //unblocks user with given id from the database
    public void unblockUser(int id) throws Exception {

        try {

            String sql = "UPDATE USER SET is_blocked=0 where id=?;";

            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    //checks if the given emails exists in the database
    public static boolean verifyEmail(String email) {

        try {
            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM USER WHERE EMAIL=?;";

            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, email);

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                return true;
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();

        };

        return false;

    }
}
