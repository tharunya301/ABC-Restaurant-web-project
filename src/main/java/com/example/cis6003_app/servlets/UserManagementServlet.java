package com.example.cis6003_app.servlets;

import com.example.cis6003_app.JNDI;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "UserManagementServlet", value = "/user-management-servlet")
public class UserManagementServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Connection conn = null;
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//        List<User> users = new ArrayList<User>();
//
//        try {
//            // Database connection
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "tharunya", "1234");
//
//            String query = "SELECT id, user_name, email, role FROM users";
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//
//            while (rs.next()) {
//                User user = new User();
//                user.setID(rs.getInt("id"));
//                user.setUsername(rs.getString("user_name"));
//                user.setEmail(rs.getString("email"));
//                user.setRole(rs.getString("role"));
//                users.add(user);
//
//            }
//
//            request.setAttribute("users", users);
//            RequestDispatcher dispatcher = request.getRequestDispatcher("user-management.jsp");
//            dispatcher.forward(request, response);
//
//        } catch (SQLException | ClassNotFoundException e) {
//            e.printStackTrace();
//        } finally {
//            if (rs != null) try { rs.close(); } catch (SQLException e) { }
//            if (ps != null) try { ps.close(); } catch (SQLException e) { }
//            if (conn != null) try { conn.close(); } catch (SQLException e) { }
//        }
    }
}
