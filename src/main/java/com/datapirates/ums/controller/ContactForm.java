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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tenzinsparkss
 */
public class ContactForm extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            String first_name = request.getParameter("first_name");
            String last_name = request.getParameter("last_name");
            String email_address = request.getParameter("email_address");
            String subject = request.getParameter("subject");

            User user = new User();
            user.setFname(fName);
            user.setLname(lName);
            user.setEmail(email);
            user.setPassword(password);

            UserDao.register(user);

            response.sendRedirect("login.jsp");

        } catch (Exception e) {
            session.setAttribute("error", "This user already exists.");
            response.sendRedirect("index.jsp");
        }
    }
}
