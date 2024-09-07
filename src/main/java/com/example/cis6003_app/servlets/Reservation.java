package com.example.cis6003_app.servlets;

import java.sql.Time;
import java.util.Date;
import java.util.List;

public class Reservation {
    private int id;
    private String customerName;
    private Date date;
    private Time time;
    private String status;

    public static List<Reservation> getRecentReservations() {
        return List.of();
    }

    // Getters and setters
    public int getId() {return id;}
    public void setId(int id) {this.id = id;}

    public String getCustomerName() { return customerName; }
    public void setCustomerName(String customerName) { this.customerName = customerName; }

    public Date getDate() { return date; }
    public void setDate(Date date) { this.date = date; }

    public Time getTime() { return time; }
    public void setTime(Time time) { this.time = time; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public void add(Reservation reservation) { }
}
