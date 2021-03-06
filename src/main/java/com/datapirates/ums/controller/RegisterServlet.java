package com.datapirates.ums.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.datapirates.ums.dao.HistoryDao;
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
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    //Gets parameters from user input field and sends to dao

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            String fName = request.getParameter("fname");
            String lName = request.getParameter("lname");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            if(password.length()>5){
                User user = new User();            
                user.setFname(fName);
                user.setLname(lName);            
                user.setEmail(email.toLowerCase());
                user.setPassword(password);
            
                UserDao.register(user);
            response.sendRedirect("login.jsp");
            }else{
                response.sendRedirect("register.jsp?msg=Password must be atleast 6 characters long.");
            }
            
            

        } catch (Exception e) {
            session.setAttribute("error", "This user already exists.");
            response.sendRedirect("index.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
