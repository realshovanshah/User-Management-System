/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datapirates.ums.dao;

import com.datapirates.ums.utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalTime;

/**
 *
 * @author Shah Jr
 */
public class HistoryDao {
    //displays history of given user id

   public void userHistory(int id, String activity) throws Exception {
             
            String sql = "INSERT INTO history_log (id, activity, login_time, login_date) values(?, ?, ?, ?);";
             
            try {
             
                Connection con = DBConnection.getConnection(); 
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, id);
                ps.setObject(2, activity);
                ps.setObject(3, java.sql.Time.valueOf(LocalTime.now()));
                ps.setObject(4, LocalDate.now());
                ps.execute();
                con.close();
            
        } catch (SQLException e) {
            throw e;
        }
    }
}
