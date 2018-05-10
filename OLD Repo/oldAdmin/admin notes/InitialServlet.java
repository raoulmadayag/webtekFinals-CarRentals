package demo.servlets;

import demo.beans.Product;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "GetProducts", urlPatterns = {"/GetProducts"})
public class GetProducts extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String category = request.getParameter("cat");
        String view = request.getParameter("view");
        if (view == null) view = "";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection dbconn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/products", "root", ""); //db location
            
            PreparedStatement ps = dbconn.prepareStatement(
                "SELECT prodid, description, price, CONCAT('data:image;base64,', TO_BASE64(image)) AS image " +
                "FROM products " +
                "WHERE category = ? " +
                "ORDER BY description");
            
            ps.setString(1, category);
            
            ResultSet rs = ps.executeQuery();
            
            ArrayList<Product> products = new ArrayList<>();
            
            if (rs.first()) {
                do {
                    String prodid = rs.getString("prodid");
                    String description = rs.getString("description");
                    BigDecimal price = rs.getBigDecimal("price");
                    String image = rs.getString("image");
                    
                    Product product = new Product(prodid, description, price, image);
                    products.add(product);
                } while (rs.next());
            }
            
            rs.close();
            ps.close();
            dbconn.close();
            
            request.setAttribute("products", products);
            
            switch (view) {
                case "html":
                    request.getRequestDispatcher("ShowHTML.jsp").forward(request, response);
                    break;
                    
                case "json":
                    request.getRequestDispatcher("ShowJSON.jsp").forward(request, response);
                    break;
                    
                default:
                    response.sendError(400);
                    break;
            }
        } catch (Exception ex) {
            Logger.getLogger(GetProducts.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
