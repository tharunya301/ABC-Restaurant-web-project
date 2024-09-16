package com.example.cis6003_app.servlets;

import org.jetbrains.annotations.NotNull;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    public List<User> getAllUsers() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<User> users = new ArrayList<>();

        try {
            // Database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "tharunya", "1234");

            // Query recent reservations
            String query = "SELECT id, user_name, email, role FROM users";
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setUserName(rs.getString("user_name"));
                user.setEmail(rs.getString("email"));
                user.setRole(rs.getString("role"));
                users.add(user);

            }

            return users;

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) try {rs.close();} catch (Exception e) {}
            if (ps != null) try {ps.close();} catch (Exception e) {}
            if (conn != null) try {conn.close();} catch (Exception e) {}
        }
        return List.of();
    }
}
