/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

//import com.datapirates.ums.JdbcRegisterService;
import com.dao.UserDao;
//import com.datapirates.ums.User;
import com.model.User;
import java.io.IOException;
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
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        try {
            String fName = request.getParameter("fname");
            String lName = request.getParameter("lname");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            User user = new User();
            user.setFname(fName);
            user.setLname(lName);
            user.setEmail(email);
            user.setPassword(password);

            UserDao.register(user);

            response.sendRedirect("login.jsp");

        } 
        catch (Exception e) {
            session.setAttribute("error", "This user already exists.");
            response.sendRedirect("index.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
