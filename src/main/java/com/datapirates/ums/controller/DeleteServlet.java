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
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {

        //Gets id of the user to be deleted and sends it to dao

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idTemp = request.getParameter("id");
        int id = Integer.parseInt(idTemp);
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        UserDao dao = new UserDao();
        HttpSession session = request.getSession();        
        try {
            dao.delete(id);
            session.setAttribute("deleted", "The user has been deleted.");
            
            int uid = (Integer) session.getAttribute("id");
            HistoryDao history = new HistoryDao();
            history.userHistory(uid, "Deleted User "+ fname +" " + lname);
            response.sendRedirect("manage-user.jsp");
        } catch (Exception ex) {
            Logger.getLogger(DeleteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

  