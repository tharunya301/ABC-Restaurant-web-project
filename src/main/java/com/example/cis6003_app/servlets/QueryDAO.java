package com.example.cis6003_app.servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class QueryDAO {
    public List<AdminQueries> getAllQueries() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<AdminQueries> adminQueries = new ArrayList<>();

        try {
            // Database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "tharunya", "1234");

            // Query recent reservations
            String sql = "SELECT id, customer_name, query_details, status FROM queries";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                AdminQueries adminQuery = new AdminQueries();
                adminQuery.setId(rs.getInt("id"));
                adminQuery.setCustomer_name(rs.getString("customer_name"));
                adminQuery.setQuery_details(rs.getString("query_details"));
                adminQuery.setStatus(rs.getString("status"));
                adminQuery.add(adminQuery);

            }
            return adminQueries;

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
