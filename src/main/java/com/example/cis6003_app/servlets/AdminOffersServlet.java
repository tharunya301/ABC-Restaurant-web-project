package com.example.cis6003_app.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.management.Query;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AdminOffersServlet", value = "/admin-offers-servlet")
public class AdminOffersServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Offer> offers = new ArrayList<>();
        OfferDAO offerDAO = new OfferDAO();

        offers = offerDAO.getAllOffers();

        if(!offers.isEmpty()) {
            request.setAttribute("offers", offers);
            RequestDispatcher dispatcher = request.getRequestDispatcher("admin-offers.jsp");
            dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if(action != null || action.equals("offersPromotions")) {
            showOffersPromotions(request, response);
        } else if (action.equals("overview")) {
            showOverview(request, response);
        } else if (action.equals("userManagement")) {
            showUserManagement(request, response);
        } else if (action.equals("reservations")) {
            showReservations(request, response);
        }else if (action.equals("queries")) {
            showQueries(request, response);
        } else if (action.equals("facilitiesServices")) {
            showFacilitiesServices(request, response);
        } else if (action.equals("reports")) {
            showReports(request, response);
        }
    }

    private void showReservations(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ReservationDAO reservationDAO = new ReservationDAO();
        List<Reservation> reservations = reservationDAO.getRecentReservations();
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
        List<Offer> offers = new ArrayList<>();
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