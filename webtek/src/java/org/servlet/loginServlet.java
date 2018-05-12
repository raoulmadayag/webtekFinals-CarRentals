package org.servlet;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class loginServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException 
    {  
        
        try{
        class.forName
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter(); 
        
        query qj = new query();
        HttpSession session = request.getSession();
        
        request.getRequestDispatcher("index.jsp").include(request, response);  
       
        String username=request.getParameter("user");  
        String password=request.getParameter("password");
        
        
        if(validate.validateLogin(username, password) == true)
        { 
        qj.setName(username);
        String name = qj.getName();
          
        session.setAttribute("user",username);  
        session.setAttribute("pass", password);
        }
        else
        {  
        out.print("<p style=\"color:red\">Sorry username or password Incorrect</p>");   
        }  

        out.close();  
    }  
}
