package com.example.cis6003_app;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JNDI {
    public String getloginData(String username, String password) {
        String returnData = null;
        try {
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/test");
            String data = "";

            Connection conn = ds.getConnection();

            // Prepare SQL query
            String sql = "SELECT * FROM login WHERE name = ? AND id = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);

            ResultSet rs = statement.executeQuery();

            if (rs.next()) {
                // Login successful
                if(rs.getString("role").equals("Admin")){
                    returnData = rs.getString("role");
                }else if(rs.getString("role").equals("Staff")){
                    returnData = rs.getString("role");
                }else if(rs.getString("role").equals("Customer")){
                    returnData = rs.getString("role");
                }else{
                    returnData = "Guest";
                }

            } else {
                // Login failed
                returnData = "<html><body><h1>Login Failed</h1></body></html>";
            }

            rs.close();
            statement.close();
            conn.close();

            return returnData;
        } catch (NamingException | SQLException e) {
            e.printStackTrace();
            return "No data error";
        }
    }
}