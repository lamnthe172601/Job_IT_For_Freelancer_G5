/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Company;
import Models.Recruiter;
import Models.Role;
import Models.TeamNumber;
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

        String query = """
                       SELECT  *  FROM [freelancer].[dbo].[Company] com
                       
                                                                        join recruiter re on com.recruiterID = re.recruiterID 
                                                 \t\t\t\t\t   join Team_Number te on te.team_numberID = com.team_numberID
                       \t\t\t\t\t\t\t\t\t\t\t   where companyID = ?""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, companyid);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                
                TeamNumber tem = new TeamNumber(rs.getInt("team_numberID"), rs.getString("team_number"));
                Recruiter re = new Recruiter(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getBoolean("gender"), rs.getDate("dob"), rs.getString("image"), rs.getString("email_contact"), rs.getString("phone_contact"), rs.getInt("UserID"));
                
                return new Company(rs.getInt("companyID"), rs.getString("company_name"), tem, rs.getDate("established_on"), rs.getString("logo"), rs.getString("website"), rs.getString("describe"), rs.getString("location"), re);
            }
        } catch (SQLException e) {
        }
        return null;
    }

//    public Company getCompanyByRecruiterID(int reid) {
//        RecruiterDAO reDao = new RecruiterDAO();
//        String query = "SELECT [companyID]\n"
//                + "                      ,[company_name]\n"
//                + "                     ,[team_numberID]\n"
//                + "                     ,[established_on]\n"
//                + "                    ,[logo]\n"
//                + "                      ,[website]\n"
//                + "                  ,[describe]\n"
//                + "                    ,[location]\n"
//                + "                   ,[recruiterID]\n"
//                + "                  FROM [dbo].[Company]\n"
//                + "               	WHERE [recruiterID] = ?";
//        try {
//            PreparedStatement ps = connection.prepareStatement(query);
//            ps.setInt(1, reid);
//
//            ResultSet rs = ps.executeQuery();
//
//            if (rs.next()) {
//                int cid = rs.getInt(1);
//                String cname = rs.getString(2);
//                int tnumber = rs.getInt(3);
//                Date eon = rs.getDate(4);
//                String logo = rs.getString(5);
//                String website = rs.getString(6);
//                String describe = rs.getString(7);
//                String location = rs.getString(8);
//
//                Recruiter recruiterID = reDao.getRecruiterProfileByRecruiterID(rs.getInt(9));
//                return new Company(cid, tnumber, eon, logo, cname, website, describe, location, recruiterID);
//            }
//        } catch (SQLException e) {
//        }
//        return null;
//    }
public static void main(String[] args) {
        CompanyDAO t = new CompanyDAO();
        Company n = t.getCompanyByCompanyID(4);
        System.out.println(n.toString());
    }
}