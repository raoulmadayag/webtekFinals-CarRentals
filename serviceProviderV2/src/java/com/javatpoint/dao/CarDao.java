package com.javatpoint.dao;  
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import com.javatpoint.bean.car;  
public class CarDao {  
  
public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webtech","root","");  
    }catch(ClassNotFoundException | SQLException e){System.out.println(e);}  
    return con;  
}  
public static int save(car u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement( "insert into vehicle(vehicle_Id,brand,model,"
                + "year,capacity,rent_Price,car_Type,color,license_Plate,vehicle_No,current_Mileage,"
                + "vehicle_status) values(?,?,?,?,?,?,?,?,?,?,?,?)");  
        ps.setInt(1,u.getVehicleId());  
        ps.setString(5,u.getCapacity());  
        ps.setString(2,u.getBrand());  
        ps.setString(3,u.getModel());  
        ps.setString(4,u.getYear());  
        ps.setString(6,u.getRentPrice());
        ps.setString(7,u.getCarType()); 
        ps.setString(8,u.getColor()); 
        ps.setString(9,u.getLicensePlate()); 
        ps.setString(10,u.getVehicleNo()); 
        ps.setString(11,u.getCurrentMileage());
        ps.setString(12,u.getVehicleStatus()); 
        status=ps.executeUpdate();  
    }catch(SQLException e){System.out.println(e);}  
    return status;  
}  
public static int update(car u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update vehicle set brand=?,model=?,year=?,capacity=?,rent_Price=?, car_Type=?, color=?, license_Plate=?,  vehicle_No=?, current_Mileage=?, vehicle_status=? where vehicle_Id=?");  
        ps.setString(1,u.getBrand());  
        ps.setString(2,u.getModel());  
        ps.setString(3,u.getYear());  
        ps.setString(4,u.getCapacity());  
        ps.setString(5,u.getRentPrice());  
        ps.setString(6,u.getCarType());
        ps.setString(7,u.getColor()); 
        ps.setString(8,u.getLicensePlate());
        ps.setString(9,u.getVehicleNo()); 
        ps.setString(10,u.getCurrentMileage());
        ps.setString(11,u.getVehicleStatus());
        ps.setInt(12,u.getVehicleId()); 
        status=ps.executeUpdate();  
    }catch(SQLException e){System.out.println(e);}  
    return status;  
}  
public static int delete(car u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from vehicle where vehicle_Id=?");  
        ps.setInt(1,u.getVehicleId());  
        status=ps.executeUpdate();  
    }catch(SQLException e){System.out.println(e);}  
  
    return status;  
}  
public static List<car> getAllRecords(){  
    List<car> list=new ArrayList<>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select vehicle_Id,brand,model,year,capacity,rent_Price,car_Type,vehicle_No,color,license_Plate,current_Mileage,vehicle_status from vehicle");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            car u=new car();  
            u.setVehicleId(rs.getInt("vehicle_Id"));  
            u.setBrand(rs.getString("brand"));  
            u.setModel(rs.getString("model"));  
            u.setYear(rs.getString("year"));  
            u.setCapacity(rs.getString("capacity"));  
            u.setRentPrice(rs.getString("rent_Price"));  
            u.setCarType(rs.getString("car_Type"));
            u.setVehicleNo(rs.getString("vehicle_No"));
            u.setColor(rs.getString("color"));
            u.setLicensePlate(rs.getString("license_Plate"));
            u.setCurrentMileage(rs.getString("current_Mileage"));
            u.setVehicleStatus(rs.getString("vehicle_status"));
            list.add(u);  
        }  
    }catch(SQLException e){System.out.println(e);}  
    return list;  
}  
public static car getRecordById(int id){  
    car u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from vehicle where vehicle_Id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new car();  
            u.setVehicleId(rs.getInt("vehicle_Id"));  
            u.setBrand(rs.getString("brand"));  
            u.setModel(rs.getString("model"));  
            u.setYear(rs.getString("year"));  
            u.setCapacity(rs.getString("capacity"));  
            u.setRentPrice(rs.getString("rent_Price"));  
            u.setCarType(rs.getString("car_Type"));
            u.setVehicleNo(rs.getString("vehicle_No"));
            u.setColor(rs.getString("color"));
            u.setLicensePlate(rs.getString("license_Plate"));
            u.setCurrentMileage(rs.getString("current_Mileage"));
            u.setVehicleStatus(rs.getString("vehicle_status")); 
        }  
    }catch(SQLException e){System.out.println(e);}  
    return u;  
}  
}  
