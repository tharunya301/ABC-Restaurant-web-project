package com.example.cis6003_app.servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class OfferDAO {
    public List<Offer> getAllOffers() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Reservation> reservations = new ArrayList<>();

        try {
            // Database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "tharunya", "1234");

            // Query recent reservations
            String query = "SELECT id, offer_title, description, start_date, end_date FROM offers";
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                Offer offer = new Offer();
                offer.setId(rs.getInt("id"));
                offer.setOffer_title(rs.getString("offer_title"));
                offer.setDescription(rs.getString("description"));
                offer.setStart_date(rs.getString("start_date"));
                offer.setEnd_date(rs.getString("end_date"));
                offer.add(offer);

            }

            return getAllOffers();

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
