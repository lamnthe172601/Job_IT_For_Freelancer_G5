/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Company;
import Models.Recruiter;
import Models.Role;
import Models.User;
import com.sun.jdi.connect.spi.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 *
 * @author admin
 */
public class CompanyDAO extends DBContext {
    
    public Company getCompanyByCompanyID(int companyid) {
        RecruiterDAO reDao = new RecruiterDAO();
        String query = "SELECT [companyID]\n"
                + "      ,[company_name]\n"
                + "      ,[team_number]\n"
                + "      ,[established_on]\n"
                + "      ,[logo]\n"
                + "      ,[website]\n"
                + "      ,[describe]\n"
                + "      ,[location]\n"
                + "      ,[recruiterID]\n"
                + "  FROM [dbo].[Company]\n"
                + "	WHERE [companyID] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, companyid);
            
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                int cid = rs.getInt(1);
                String cname = rs.getString(2);
                int tnumber = rs.getInt(3);
                Date eon = rs.getDate(4);
                String logo = rs.getString(5);
                String website = rs.getString(6);
                String describe = rs.getString(7);
                String location = rs.getString(8);
              
                Recruiter recruiterID = reDao.getRecruiterProfileByRecruiterID(rs.getInt(9));
                return new Company(companyid, tnumber, eon, logo, cname, website, describe, location, recruiterID);
            }
        } catch (SQLException e) {
        }
        return null;
    }
    public Company getCompanyByRecruiterID(int reid) {
        RecruiterDAO reDao = new RecruiterDAO();
        String query = "SELECT [companyID]\n" +
"                      ,[company_name]\n" +
"                     ,[team_numberID]\n" +
"                     ,[established_on]\n" +
"                    ,[logo]\n" +
"                      ,[website]\n" +
"                  ,[describe]\n" +
"                    ,[location]\n" +
"                   ,[recruiterID]\n" +
"                  FROM [dbo].[Company]\n" +
"               	WHERE [recruiterID] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, reid);
            
            ResultSet rs = ps.executeQuery();
            
               if (rs.next()) {
                int cid = rs.getInt(1);
                String cname = rs.getString(2);
                int tnumber = rs.getInt(3);
                Date eon = rs.getDate(4);
                String logo = rs.getString(5);
                String website = rs.getString(6);
                String describe = rs.getString(7);
                String location = rs.getString(8);
              
                Recruiter recruiterID = reDao.getRecruiterProfileByRecruiterID(rs.getInt(9));
                return new Company(cid, tnumber, eon, logo, cname, website, describe, location, recruiterID);
            }
        } catch (SQLException e) {
        }
        return null;
    }

}
