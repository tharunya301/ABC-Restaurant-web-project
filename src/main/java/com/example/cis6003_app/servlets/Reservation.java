package com.example.cis6003_app.servlets;

import java.sql.Time;
import java.util.Date;
import java.util.List;

public class Reservation {
    private int id;
    private String customerName;
    private String date;
    private String time;
    private String status;
    private String type;

    public static List<Reservation> getRecentReservations() {
        return List.of();
    }

    // Getters and setters
    public int getId() {return id;}
    public void setId(int id) {this.id = id;}

    public String getCustomerName() { return customerName; }
    public void setCustomerName(String customerName) { this.customerName = customerName; }

    public String getDate() { return date; }
    public void setDate(String date) { this.date = date; }

    public String getTime() { return time; }
    public void setTime(String time) { this.time = time; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public  String getType(){ return type; }
    public void setType(String type){ this.type = type; }

    public void add(Reservation reservation) { }
}
