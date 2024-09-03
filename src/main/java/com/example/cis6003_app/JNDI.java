package com.example.cis6003_app;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JNDI {
    public void connectToDB() {
        try {
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/MySQLDB");

            Connection conn = ds.getConnection();
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM test");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                // Process the result set
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (NamingException | SQLException e) {
            e.printStackTrace();
        }
    }
}