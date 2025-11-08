package com.coderAayush.Project;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.coderAayush.dao.userDao;
import com.coderAayush.dao.userDaoImpl;

@WebServlet("/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static userDao userDao = new userDaoImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        String userPass = request.getParameter("userPass");

        boolean success = userDao.resetPassword(userName, email, userPass);

        if(success) {
            response.sendRedirect("ForgotPassword.jsp?msg=Password changed successfully");
        } else {
            response.sendRedirect("ForgotPassword.jsp?msg=Unable to change password");
        }
    }
}

