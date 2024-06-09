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
        
        String query = """
                       select * from Recruiter 
                                       where userID = ?""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, uid);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return new Recruiter(
                            rs.getInt("recruiterID"),
                            rs.getString("first_name"),
                            rs.getString("last_name"),
                            rs.getBoolean("gender"),
                            rs.getDate("dob"),
                            rs.getString("image"),
                            rs.getString("email_contact"),
                            rs.getString("phone_contact"),
                            rs.getInt("userID")
                    );
            }
        } catch (SQLException e) {
        }
        return null;
    }
    
    public static void main(String[] args) {
        RecruiterDAO d = new RecruiterDAO();
        Recruiter m = d.getRecruiterProfile(4);
        System.out.println(m);
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

    public Recruiter getRecruiterProfileByRecruiterID(int reid) {
        CompanyDAO comDAO = new CompanyDAO();
        String query = "select recruiterID, first_name,last_name,gender,dob,[image],phone_contact,email_contact,userID\n"
                + "               from Recruiter \n"
                + "			   where recruiterID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, reid);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                String fname = rs.getString(1);
                String lname = rs.getString(2);
                int rid = rs.getInt(3);
                boolean gd = rs.getBoolean(4);
                Date dob = rs.getDate(5);
                String ig = rs.getString(6);
                String phone = rs.getString(7);
                String em = rs.getString(8);
                int userid = rs.getInt(9);
                return new Recruiter(userid, fname, lname, gd, dob, ig, em, phone, userid);

            }
        } catch (SQLException e) {
        }
        return null;
    }

    public boolean updateRecruiter(Recruiter recruiter) throws SQLException {
           CompanyDAO comDAO = new CompanyDAO();
           
        String query = "UPDATE Recruiter SET first_name = ?, last_name = ?, [image] = ?, gender = ?, dob = ?, phone_contact = ? , email_contact = ? , userID =?\n"
                + "where recruiterID = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, recruiter.getFirstName());
            stmt.setString(2, recruiter.getLastName());
            stmt.setString(3, recruiter.getImage());
            stmt.setBoolean(4, recruiter.isGender());
            stmt.setDate(5, (java.sql.Date) recruiter.getDob());
            
            stmt.setString(6,recruiter.getEmail());
            stmt.setString(7,recruiter.getPhone());
            stmt.setInt(8,recruiter.getRecruiterID());
           
            int rowsUpdated = stmt.executeUpdate();
            Company company = null;
            comDAO.updateCompany(company);
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new SQLException("Error while updating recruiter", e);
        }
    }
}
