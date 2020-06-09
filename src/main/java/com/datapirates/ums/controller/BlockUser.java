/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datapirates.ums.controller;

import com.datapirates.ums.dao.HistoryDao;
import com.datapirates.ums.dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet("/block")
public class BlockUser extends HttpServlet {

    //Gets id of the user to be blocked and sends it to dao
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        UserDao dao = new UserDao();

        HttpSession session = request.getSession();
        try {
            dao.blockUser(id);

            session.setAttribute("blocked", "The user has been blocked.");
            
            int uid = (Integer) session.getAttribute("id");
            HistoryDao history = new HistoryDao();
            history.userHistory(uid, "Blocked User "+ fname +" " + lname);
                
            response.sendRedirect("manage-user.jsp");

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
