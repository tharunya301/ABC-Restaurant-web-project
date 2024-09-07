package com.example.cis6003_app.servlets;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedHashMap;
import java.util.Map;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "ReservationStatsServlet", value = "/reservation-stats-servlet")
public class ReservationStatsServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Map<String, Integer> reservationsOverTime = new LinkedHashMap<>();

        try {
            // Database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "tharunya", "1234");

            // Query to get reservation counts grouped by date
            String query = "SELECT DATE(date) AS reservation_date, COUNT(*) AS count FROM reservations GROUP BY DATE(date)";
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                reservationsOverTime.put(rs.getString("reservation_date"), rs.getInt("count"));
            }

            // Debugging: Print the map content
            System.out.println("Reservations Over Time: " + reservationsOverTime);

            request.setAttribute("reservationsOverTime", reservationsOverTime);
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("admin_dashboard.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch (Exception e) {}
            if (ps != null) try { ps.close(); } catch (Exception e) {}
            if (conn != null) try { conn.close(); } catch (Exception e) {}
        }
    }
}