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
@WebServlet("/updateUser")
public class UpdateUserServlet extends HttpServlet {

        //Gets parameters from user input field and sends to dao
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            String id = request.getParameter("id");
            String fName = request.getParameter("fname");
            String lName = request.getParameter("lname");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String age = request.getParameter("age");
            String gender = request.getParameter("gender");
            int is_admin = Integer.parseInt(request.getParameter("is_admin"));        
            
            User user = new User();    
            
            user.setFname(fName);
            user.setLname(lName);            
            user.setEmail(email);
            user.setPassword(password);
            user.setAge(age);
            user.setGender(gender);
            user.setIs_admin(is_admin);
            user.setId(Integer.parseInt(id));
            
            UserDao.updateUser(user);
            
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
        
            int uid = (Integer) session.getAttribute("id");
            HistoryDao history = new HistoryDao();
            history.userHistory(uid, "Updated User "+ fname +" " + lname);
            
            response.sendRedirect("dashboard.jsp");

        } catch (Exception e) {
            session.setAttribute("error", "This user already exists.");
            response.sendRedirect("add_user.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
