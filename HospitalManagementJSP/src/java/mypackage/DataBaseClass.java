
package mypackage;

import java.sql.*;

public class DataBaseClass {
    private Connection conn;
    
    public DataBaseClass() throws ClassNotFoundException, SQLException
    {
        establishConnection();
    }
    
    private void establishConnection() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaljsp?useSSL=false", "root", "spymali1021");
    }
    
    public boolean loginValidateAdmin(String adminname, String password) throws SQLException
    {
        boolean status = false;
        String sql = "Select * from admin where adminname=? and password=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1,adminname);
        pstm.setString(2,password);
        
        ResultSet rs = pstm.executeQuery();
        int i = 0;
        while(rs.next())
        {
           i++; 
        }
        if(i==1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    
    public void addDoctor(String doctorname,String specialization,String contact)
    {
        try
        {
            String sql = "insert into doctor(doctorname,specialization,contact) values(?,?,?)";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1,doctorname);
            pstm.setString(2,specialization);
            pstm.setString(3,contact);
            pstm.executeUpdate();
            
        }
        catch(SQLException ex)
        {
           ex.getMessage(); 
        }
        
    }
    
    public void addPatient(String patientname,String patientaddress,String gender,String contact)
    {
        try
        {
            String sql = "insert into patient(patientname,patientaddress,gender,contact) values(?,?,?,?)";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1,patientname);
            pstm.setString(2,patientaddress);
            pstm.setString(3,gender);
            pstm.setString(4,contact);
            pstm.executeUpdate();
            
        }
        catch(SQLException ex)
        {
           ex.getMessage(); 
        }
        
    }
    
    public void addAppointment(String doctorname,String patientname,String adate,String atime)
   {
       try
       {
          String sql = "insert into appointment(doctor,patient,date,time) values(?,?,?,?)";
          PreparedStatement pstm = conn.prepareStatement(sql);
          pstm.setString(1,doctorname);
          pstm.setString(2,patientname);
          pstm.setString(3,adate);
          pstm.setString(4,atime);
          pstm.executeUpdate();
       }
       catch(SQLException ex)
       {
        ex.getMessage();
       }
   }
    
        
    
    public void deleteDoctor(String id)
    {
        try
        {
            String sql = "delete from doctor where doctorid=?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1,id);
            pstm.executeUpdate();
        }
        catch(SQLException ex)
        {
            ex.getMessage();
        }
    
    }
    
     public void deletePatient(String id)
    {
        try
        {
            String sql = "delete from patient where patientid=?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1,id);
            pstm.executeUpdate();
        }
        catch(SQLException ex)
        {
            ex.getMessage();
        }
    
    }
     
     public void deleteAppointment(String id)
    {
        try {
            String sql="delete from appointment where appointid=?";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
           
            pstm.setString(1,id);
  
         pstm.executeUpdate();
         
        } catch (SQLException ex) {
             ex.getMessage();
        }
    }
    
    
    public ResultSet viewDoctor()
    {
        ResultSet rs = null;
        try
        {
            PreparedStatement pstm = conn.prepareStatement("select * from doctor");
            rs = pstm.executeQuery();
            
        }
        catch(SQLException ex)
        {
           ex.getMessage(); 
        }
        
        return rs;
    }
    
    public ResultSet viewPatient()
    {
        ResultSet rs = null;
        try
        {
            PreparedStatement pstm = conn.prepareStatement("select * from patient");
            rs = pstm.executeQuery();
            
        }
        catch(SQLException ex)
        {
           ex.getMessage(); 
        }
        
        return rs;
    }
    
    public ResultSet viewAppointment()
   {
        ResultSet rs = null;
        try
        {
          
         PreparedStatement pstm = conn.prepareStatement("select * from appointment");
          
        rs =   pstm.executeQuery();
        }
       catch(SQLException ex)
       {
        ex.getMessage();
       }
      return rs; 
     }
    
    
    public int totaldoctors(){
       ResultSet rs = null;
       PreparedStatement pstm1;
      int n = 0;
       try {
            pstm1 = conn.prepareStatement("Select * from doctor");
           
           
            rs=pstm1.executeQuery();
            while(rs.next())
            {
            n++;
            }
            
        
        } catch (SQLException ex) {
             ex.getMessage();
           
        }
       return n;
    }
    
    
    
    public int totalpatient(){
       ResultSet rs = null;
       PreparedStatement pstm1;
      int n = 0;
       try {
            pstm1 = conn.prepareStatement("Select * from patient");
           
           
            rs=pstm1.executeQuery();
            while(rs.next())
            {
            n++;
            }
            
        
        } catch (SQLException ex) {
             ex.getMessage();
           
        }
       return n;
    }
    
    
    public int totalappointment(){
       ResultSet rs = null;
       PreparedStatement pstm1;
      int n = 0;
       try {
            pstm1 = conn.prepareStatement("Select * from appointment");
           
           
            rs=pstm1.executeQuery();
            while(rs.next())
            {
            n++;
            }
            
        
        } catch (SQLException ex) {
             ex.getMessage();
           
        }
       return n;
    }
    
    

}



