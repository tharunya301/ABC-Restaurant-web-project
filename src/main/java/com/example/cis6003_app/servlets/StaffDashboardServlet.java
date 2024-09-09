package com.example.cis6003_app.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StaffDashboardServlet", value = "/staff-dashboard-servlet")
public class StaffDashboardServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        List<Reservation> reservations = new ArrayList<>();
        ReservationDAO reservationDAO = new ReservationDAO();

        reservations = reservationDAO.getRecentReservations();

        if(!reservations.isEmpty()) {
            request.setAttribute("reservations", reservations);
            RequestDispatcher dispatcher = request.getRequestDispatcher("staff_dashboard.jsp");
            dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if(action == null || action.equals("staffReservations")) {
            showStaffReservations(req, resp);
        } else if (action.equals("staffQueries")) {
            showStaffQueries(req, resp);
        } else if (action.equals("payments")) {
            showPayments(req, resp);
        } else if (action.equals("dailyTasks")) {
            showDailyTasks(req, resp);
        } else if (action.equals("serviceManagement")) {
            showServiceManagement(req, resp);
        }
    }

    private void showServiceManagement(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServiceManagementDAO serviceManagementDAO = new ServiceManagementDAO();
        List<ServiceManagement> serviceManagements = serviceManagementDAO.getAllServices();
        req.setAttribute("serviceManagements", serviceManagements);
        RequestDispatcher dispatcher = req.getRequestDispatcher("service_management.jsp");
        dispatcher.forward(req, resp);
    }
    private void showDailyTasks(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DailyTasksDAO dailyTasksDAO = new DailyTasksDAO();
        List<DailyTasks> dailyTasks = dailyTasksDAO.getAllTasks();
        req.setAttribute("dailyTasks", dailyTasks);
        RequestDispatcher dispatcher = req.getRequestDispatcher("daily_tasks.jsp");
        dispatcher.forward(req, resp);
    }
    private void showPayments(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PaymentsDAO paymentsDAO = new PaymentsDAO();
        List<Payments> payments = paymentsDAO.getAllPayments();
        req.setAttribute("payments", payments);
        RequestDispatcher dispatcher = req.getRequestDispatcher("payments.jsp");
        dispatcher.forward(req, resp);
    }
    private void showStaffQueries(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        QueryDAO queryDAO = new QueryDAO();
        List<AdminQueries> queries  = queryDAO.getAllQueries();
        req.setAttribute("queries", queries);
        RequestDispatcher dispatcher = req.getRequestDispatcher("staff_queries.jsp");
        dispatcher.forward(req, resp);
    }
    private void showStaffReservations(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Reservation> reservations = new ArrayList<>();
        req.setAttribute("reservations", reservations);
        RequestDispatcher dispatcher = req.getRequestDispatcher("staff_dashboard.jsp");
        dispatcher.forward(req, resp);
    }
}