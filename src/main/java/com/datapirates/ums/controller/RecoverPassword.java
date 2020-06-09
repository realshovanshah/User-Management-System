/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datapirates.ums.controller;

import com.datapirates.ums.dao.UserDao;
import com.datapirates.ums.utils.DBConnection;
import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tenzinsparkss
 */
@WebServlet("/recoverPassword")
public class RecoverPassword extends HttpServlet {
    //Gets parameters from user input field and sends to dao

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            Connection conn = DBConnection.getConnection();

            String email = request.getParameter("email");
            String nPass = request.getParameter("nPass");

            PreparedStatement pstmt = conn.prepareStatement("UPDATE USER SET PASSWORD=? WHERE EMAIL=?");
            pstmt.setString(2, email);
            pstmt.setString(1, nPass);

            int i = pstmt.executeUpdate();
            if (i > 0) {
                response.sendRedirect("recoverPassword.jsp?msg=Successfully, Password has been changed");

            } else {
                response.sendRedirect("recoverPassword.jsp");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }

//            if (authe) {
//                HttpSession session = request.getSession();
//                session.setAttribute("email", email);
//                response.sendRedirect("recoverPassword.jsp?msg=email has been verified");
//                out.println(email);
//            } else {
//                response.sendRedirect("verifyEmail.jsp?msg=email does not exist");
//            }
    }
}
