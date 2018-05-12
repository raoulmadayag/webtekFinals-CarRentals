package org.servlet;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class validate {
    
    public static boolean validateLogin(String username, String password) 
    {        
        boolean status = false;
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        String url = "jdbc:mysql://localhost:3306/iyot";
        String driver = "com.mysql.jdbc.Driver";

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, "root", "");

            pst = con.prepareStatement("select * from user where username=? and password=?");
            pst.setString(1, username);
            pst.setString(2, md5(password));

            rs = pst.executeQuery();
            status = rs.next();

        } catch (Exception e) {
            System.out.println(e);
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pst != null) {
                try {
                    pst.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return status;
    }
    public static String md5(String input) 
    {
		String md5 = null;
		if(null == input) 
                    return null;
		try 
                {
		MessageDigest digest = MessageDigest.getInstance("MD5");
		digest.update(input.getBytes(), 0, input.length());
		md5 = new BigInteger(1, digest.digest()).toString(16);
		} 
                catch (NoSuchAlgorithmException e) 
                {
			e.printStackTrace();
		}
		return md5;
    }
}