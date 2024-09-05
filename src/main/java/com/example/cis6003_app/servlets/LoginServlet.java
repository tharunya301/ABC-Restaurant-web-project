package com.example.cis6003_app.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        // Get form parameters
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//        String role = request.getParameter("role");
//
//        // Basic validation
//        if (username == null || username.isEmpty() ||
//                password == null || password.isEmpty() ||
//                role == null || role.isEmpty()) {
//
//            response.getWriter().println("Please fill out all fields.");
//            return;
//        }
//
//        // Validate user (replace this with real validation logic)
//        if (validateUser(username, password, role)) {
//            // Create a session
//            HttpSession session = request.getSession();
//            session.setAttribute("username", username);
//            session.setAttribute("password", password);
//            session.setAttribute("role", role);
//
//            // Redirect based on role
//            switch (role) {
//                case "admin":
//                    response.sendRedirect("admin_dashboard.jsp");
//                    break;
//                case "staff":
//                    response.sendRedirect("staff_dashboard.jsp");
//                    break;
//                case "customer":
//                    response.sendRedirect("customer_dashboard.jsp");
//                    break;
//                default:
//                    response.getWriter().println("Invalid role selected.");
//            }
//        } else {
//            response.getWriter().println("Invalid username or password.");
//        }
//    }
//
//    // A mock validation method (replace with your actual logic)
//    private boolean validateUser(String username, String password, String role) {
//        // In a real application, validate against a database.
//        // This is a simple mock logic:
//        if ("admin".equals(role)) {
//            return "admin".equals(username) && "adminpass".equals(password);
//        } else if ("staff".equals(role)) {
//            return "staff".equals(username) && "staffpass".equals(password);
//        } else if ("customer".equals(role)) {
//            return "customer".equals(username) && "customerpass".equals(password);
//        }
//        return false;
    }
}