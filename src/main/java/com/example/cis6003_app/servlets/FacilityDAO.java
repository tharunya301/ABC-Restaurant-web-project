package com.example.cis6003_app.servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FacilityDAO {
    public List<Facility> getAllFacilities() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Facility> facilities = new ArrayList<>();

        try {
            // Database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "tharunya", "1234");

            // Query recent reservations
            String sql = "SELECT id, name, description FROM facilities";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Facility facility = new Facility();
                facility.setId(rs.getInt("id"));
                facility.setName(rs.getString("name"));
                facility.setDescription(rs.getString("description"));
                facility.add(facility);

            }
            return facilities;

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
