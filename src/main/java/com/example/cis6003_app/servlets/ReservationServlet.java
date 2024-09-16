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
import java.net.URLEncoder;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ReservationServlet", value = "/reservation-1")
public class ReservationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String isAddNew = request.getParameter("isAddNew");

        if (isAddNew !=null && isAddNew.equals("true")) {
            // Get form parameters
            String customerName = request.getParameter("customerName");
            String reservationDate = request.getParameter("reservationDate");
            String reservationTime = request.getParameter("reservationTime");
            String reservationType = request.getParameter("reservationType");
            String status = request.getParameter("status");

            Connection conn = null;
            PreparedStatement ps = null;

            // Handle Add New Reservation
            try {
                // Database connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "tharunya", "1234");

                // Insert reservation data into the database
                String sql = "INSERT INTO reservations (customer_name, date, time, type, status) VALUES ( ?, ?, ?, ?, ?)";
                ps = conn.prepareStatement(sql);
                ps.setString(1, customerName);
                ps.setString(2, reservationDate);
                ps.setString(3, reservationTime);
                ps.setString(4, reservationType);
                ps.setString(5, status);

                // Execute the query
                ps.executeUpdate();

                String message = "Reservation added successfully.";
                String url = "admin?message=" + URLEncoder.encode(message, "UTF-8");
                // Redirect to the target servlet with the message
                response.sendRedirect(url);

            } catch (Exception e) {
                e.printStackTrace();
                String message = "There was an error processing your reservation."+e.getMessage();
                String url = "admin?message=" + URLEncoder.encode(message, "UTF-8");
                // Redirect to the target servlet with the message
                response.sendRedirect(url);
            }

        } else {
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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if(action != null || action.equals("reservations")) {
            showReservations(request, response);
        } else if (action.equals("overview")) {
            showOverview(request, response);
        } else if (action.equals("userManagement")) {
            showUserManagement(request, response);
        } else if (action.equals("queries")) {
            showQueries(request, response);
        } else if (action.equals("offersPromotions")) {
            showOffersPromotions(request, response);
        } else if (action.equals("facilitiesServices")) {
            showFacilitiesServices(request, response);
        } else if (action.equals("reports")) {
            showReports(request, response);
        }
    }

    private void showReservations(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Reservation> reservations = new ArrayList<>();
        request.setAttribute("reservations", reservations);
        RequestDispatcher dispatcher = request.getRequestDispatcher("reservation.jsp");
        dispatcher.forward(request, response);
    }

    private void showOverview(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        List<User> users = userDAO.getAllUsers();
        request.setAttribute("users", users);
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin_dashboard.jsp");
        dispatcher.forward(request, response);
    }

    private void showUserManagement(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        List<User> users = userDAO.getAllUsers();
        request.setAttribute("users", users);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user_management.jsp");
        dispatcher.forward(request, response);
    }

    private void showQueries(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QueryDAO queryDAO = new QueryDAO();
        List<AdminQueries> queries = queryDAO.getAllQueries();
        request.setAttribute("queries", queries);
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin_queries.jsp");
        dispatcher.forward(request, response);
    }

    private void showOffersPromotions(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OfferDAO offerDAO = new OfferDAO();
        List<Offer> offers = offerDAO.getAllOffers();
        request.setAttribute("offers", offers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin_offers_promotions.jsp");
        dispatcher.forward(request, response);
    }

    private void showFacilitiesServices(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FacilityDAO facilityDAO = new FacilityDAO();
        List<Facility> facilities = facilityDAO.getAllFacilities();
        request.setAttribute("facilities", facilities);
        RequestDispatcher dispatcher = request.getRequestDispatcher("facilities_&_services.jsp");
        dispatcher.forward(request,response);
    }

    private void showReports(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ReportDAO reportDAO = new ReportDAO();
        List<Report> reports = reportDAO.getAllReports();
        request.setAttribute("reports", reports);
        RequestDispatcher dispatcher = request.getRequestDispatcher("reports.jsp");
        dispatcher.forward(request, response);
    }
}