package com.example.cis6003_app.servlets;

import com.example.cis6003_app.JNDI;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/login-servlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    JNDI jndi;
    public void init() {
        jndi = new JNDI();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login.jsp");
        dispatcher.forward(request,response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String loginResult = jndi.getloginData(username, password);

        PrintWriter out = response.getWriter();

        if(loginResult != null) {
            if (loginResult.equals("Admin")) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("/admin?action=overview");
                dispatcher.forward(request, response);
            }
            else if (loginResult.equals("Staff")) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("/staff_dashboard.jsp");
                dispatcher.forward(request, response);
            }
            else if (loginResult.equals("Customer")) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("/customer_dashboard.jsp");
                dispatcher.forward(request, response);
            }
            else {
                RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
                dispatcher.forward(request, response);
            }
        }
    }
}