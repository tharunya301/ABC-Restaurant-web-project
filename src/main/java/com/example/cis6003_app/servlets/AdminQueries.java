package com.example.cis6003_app.servlets;

public class AdminQueries {
    private int id;
    private String customer_name;
    private String query_details;
    private String status;

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}

    public String getCustomer_name() {return customer_name;}
    public void setCustomer_name(String customer_name) {this.customer_name = customer_name;}

    public String getQuery_details() {return query_details;}
    public void setQuery_details(String query_details) {this.query_details = query_details;}

    public String getStatus() {return status;}
    public void setStatus(String status) {this.status = status;}

    public void add(AdminQueries adminQueries) {
    }
}
