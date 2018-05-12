package org.servlet;


import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class query {
        
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        String url = "jdbc:mysql://localhost:3306/wtl_accounts";
        String driver = "com.mysql.jdbc.Driver";
        
        private int id;
        private String email;
        private String firstName;
        private String lastName;

        
    public void setId(String email){
    this.email=email;
    
    try{
      Class.forName(driver);
      Connection con = DriverManager.getConnection(url, "root", "");
      String query = "SELECT user_id FROM useraccounts WHERE email=? ";
      statement = con.prepareStatement(query); 
      statement.setString(1, email);
      rs = statement.executeQuery();
     
      while (rs.next()){     
        id = rs.getInt("user_id");
      }
      statement.close();
    }
    catch (Exception e)
    {
      System.err.println("Got an exception! ");
      System.err.println(e.getMessage());
    }
            
}
    public int getId(){
        return id;
    }
    
    public void setName(String email){
        
      try{
      Class.forName(driver);
      Connection con = DriverManager.getConnection(url, "root", "");
      String query = "SELECT firstName FROM useraccounts WHERE email=? ";
      statement = con.prepareStatement(query); 
      statement.setString(1, email);
      rs = statement.executeQuery();
     
      while (rs.next()){     
        firstName = rs.getString("firstName");
      }
      statement.close();
    }
    catch (Exception e)
    {
      System.err.println("Got an exception! ");
      System.err.println(e.getMessage());
    }
   
    }
    
}
