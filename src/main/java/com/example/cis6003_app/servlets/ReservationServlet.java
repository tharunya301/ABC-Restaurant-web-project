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

@WebServlet(name = "ReservationServlet", value = "/reservation-servlet")
public class ReservationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Reservation> reservations = new ArrayList<>();
        ReservationDAO reservationDAO = new ReservationDAO();

        reservations = reservationDAO.getRecentReservations();

        if(!reservations.isEmpty()) {
            request.setAttribute("reservations", reservations);
            RequestDispatcher dispatcher = request.getRequestDispatcher("admin_dashboard.jsp");
            dispatcher.forward(request, response);
        }
    }
}