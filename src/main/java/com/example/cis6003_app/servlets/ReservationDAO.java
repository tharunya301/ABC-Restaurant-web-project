package com.example.cis6003_app.servlets;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ReservationDAO {

    public  List<Reservation> getRecentReservations() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Reservation> reservations = new ArrayList<>();

        try {
            // Database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "tharunya", "1234");

            // Query recent reservations
            String query = "SELECT id, customer_name, date, time, status FROM reservations";
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                Reservation reservation = new Reservation();
                reservation.setId(rs.getInt("id"));
                reservation.setCustomerName(rs.getString("customer_name"));
                reservation.setDate(rs.getDate("date"));
                reservation.setTime(rs.getTime("time"));
                reservation.setStatus(rs.getString("status"));
                reservations.add(reservation);

            }

            return reservations;

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
