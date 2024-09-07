package com.example.cis6003_app.servlets;

public class Offer {
    private int id;
    private String offer_title;
    private String description;
    private String start_date;
    private String end_date;

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    
    public String getOffer_title() {return offer_title;}
    public void setOffer_title(String offer_title) {this.offer_title = offer_title;}
    
    public String getDescription() {return description;}
    public void setDescription(String description) {this.description = description;}
    
    public String getStart_date() {return start_date;}
    public void setStart_date(String start_date) {this.start_date = start_date;}
    
    public String getEnd_date() {return end_date;}
    public void setEnd_date(String end_date) {this.end_date = end_date;}

    public void add(Offer offer) {
    }

    public static class Query {
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

        public void add(Query query) {
        }
    }
}
