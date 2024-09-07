package com.example.cis6003_app.servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ReportDAO {
    public List<Report> getAllReports() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Report> reportList = new ArrayList<>();

        try {
            // Database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "tharunya", "1234");

            // Query recent reservations
            String sql = "SELECT id, report_type, date_range FROM reports";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Report report = new Report();
                report.setId(rs.getInt("id"));
                report.setName(rs.getString("name"));
                report.setDescription(rs.getString("description"));
                report.add(report);

            }
            return reportList;

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
