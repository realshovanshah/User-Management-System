/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datapirates.ums.controller;

import com.datapirates.ums.dao.UserDao;
import com.datapirates.ums.model.User;
import com.datapirates.ums.utils.DBConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Shah Jr
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession(true);
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            User auth = UserDao.validateUser(email, password);
            
            if (auth != null) {
                session.setAttribute("isLoggedIn", "true");
                session.setAttribute("user", auth);
                session.setAttribute("id", auth.getId());
                session.setAttribute("fname", auth.getFname());
                session.setAttribute("lname", auth.getLname());
                session.setAttribute("email", auth.getEmail());
                session.setAttribute("gender", auth.getGender());
                session.setAttribute("password", auth.getPassword());
                session.setAttribute("age", auth.getAge());
                session.setAttribute("is_admin", auth.getIs_admin());
                Connection con = DBConnection.getConnection();

                String sql = "INSERT INTO history_log (id, login_time, login_date) values(?, ?, ?);";

                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, auth.getId());
                ps.setObject(2, java.sql.Time.valueOf(LocalTime.now()));
                ps.setObject(3, LocalDate.now());
                ps.execute();
                con.close();

                ps.close();

                response.sendRedirect("dashboard.jsp");
//                File counterFile = new File("counter.txt");
//                BufferedReader reader= new BufferedReader(new FileReader(counterFile));;
//                int totalVisits = Integer.parseInt(reader.readLine());

            } else {
                response.sendRedirect("login.jsp?msg=You have entered invalid email or password.");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
