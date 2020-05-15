/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datapirates.ums.controller;

import com.datapirates.ums.dao.UserDao;
import com.datapirates.ums.model.User;
import java.io.IOException;
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
        try{
            HttpSession session = request.getSession();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            User auth = UserDao.validateUser(email,password);
            
            if(auth != null){
              session.setAttribute("isLoggedIn", "true");
              session.setAttribute("user", auth);
              response.sendRedirect("dashboard.jsp");
            }
            else{
                response.sendRedirect("login.jsp");
            }
            
            
        }catch(Exception e){
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
