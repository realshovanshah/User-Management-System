/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datapirates.ums.controller;

import com.datapirates.ums.dao.UserDao;
import java.io.IOException;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tenzinsparkss
 */
public class RecoverPassword extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String nPass= request.getParameter("nPass");
            String cPass = request.getParameter("cPass");
            boolean authe = UserDao.verifyEmail(email);

            if (authe) {
                HttpSession session = request.getSession();
                session.setAttribute("email", email);
                response.sendRedirect("recoverPassword.jsp?msg=email has been verified");
                out.println(email);
            } else {
                response.sendRedirect("verifyEmail.jsp?msg=email does not exist");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    
}
