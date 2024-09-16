package com.example.cis6003_app.servlets;

public class User {

    private int id;
    private String userName;
    private String email;
    private String role;

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}

    public String getUserName() {return userName;}
    public void setUserName(String userName) {this.userName = userName;}

    public String getEmail() {return email;}
    public void setEmail(String email) {this.email = email;}

    public String getRole() {return role;}
    public void setRole(String role) {this.role = role;}

    public void add(User user) { }

    public void setID(int id) {this.id = id;}

}
