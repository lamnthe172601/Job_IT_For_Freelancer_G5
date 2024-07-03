/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Company;
import Models.Recruiter;
import Models.TeamNumber;
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
  public Company getCompanyByReID(int reid) {
        DAO teDao = new DAO();
        RecruiterDAO reDao = new RecruiterDAO();
        String query = "SELECT * FROM [freelancer].[dbo].[Company] com\n" +
"                       JOIN recruiter re ON com.recruiterID = re.recruiterID\n" +
"                       JOIN Team_Number te ON te.team_numberID = com.team_numberID\n" +
"                       WHERE com.recruiterID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, reid);

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
   

    public static void main(String[] args) {
        CompanyDAO t = new CompanyDAO();
        Company n = t.getCompanyByCompanyID(4);
        System.out.println(n.toString());
    }

    public boolean updateCompany(Company company) throws SQLException {
        String query = "UPDATE Company SET companyID = ?,company_name = ?,team_numberID = ?,established_on =?,logo = ? ,website = ?,describe = ?,[location] = ?,recruiterID = ?\n"
                + "WHERE companyID ? ";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, company.getCompanyName());
             TeamNumber teamnumber = company.getTeamNumber(); // Lấy thông tin Recruiter từ Company
            stmt.setInt(9, teamnumber.getId());
            stmt.setString(3, company.getLocation());
            stmt.setString(4, company.getLogo());
            stmt.setDate(5, (java.sql.Date) company.getEstablishedOn());

            stmt.setString(6, company.getWebsite());
            stmt.setString(7, company.getDescribe());
            stmt.setInt(8, company.getCompanyID());
            Recruiter recruiter = company.getRecruiID(); // Lấy thông tin Recruiter từ Company
            stmt.setInt(9, recruiter.getRecruiterID());
            stmt.setInt(10,company.getCompanyID() );
            int rowsUpdated = stmt.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new SQLException("Error while updating company", e);
        }
    }
}
