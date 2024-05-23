/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author admin
 */
public class RecruiterDAO extends DBContext {

    public Recruiter getRecruiterProfile(int uid) {
        CompanyDAO comDAO= new CompanyDAO();
        String query = "select first_name,last_name,recruiterID,gender,dob,[image],phone,email,companyID,userID\n"
                + "from Recruiter \n"
                + "where userID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, uid);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String fname = rs.getString(1);
                String lname = rs.getString(2);
                int reid = rs.getInt(3);
                boolean gd = rs.getBoolean(4);
                Date dob = rs.getDate(5);
                String ig = rs.getString(6);
                String phone = rs.getString(7);
                String em = rs.getString(8);
                
                Company companyID = comDAO.getCompanyByCompanyID(rs.getInt(9));
                int userid = rs.getInt(10);
               return new Recruiter(reid, userid, fname, lname, gd, dob, ig, em, phone, companyID);
                       
            }
        } catch (SQLException e) {
        }
        return null;
    }
    

    
    
    
public String convertDateTimeFormat(String inputDateTime) {
        if (inputDateTime == null) {
            return null;
        } else {
            DateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            DateFormat outputFormat = new SimpleDateFormat("HH:mm:ss dd/MM/yyyy");
            try {
                Date date = inputFormat.parse(inputDateTime);
                System.out.println(date);
                return outputFormat.format(date);
            } catch (ParseException e) {
                e.printStackTrace();
                return null;
            }
        }

    }

}
