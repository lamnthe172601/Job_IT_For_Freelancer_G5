/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MutiDAO;

import Models.Company;
import Models.Recruiter;
import Models.Role;
import Models.TeamNumber;
import Models.User;
import MutiModels.RecruiterInformation;
import dal.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kudol
 */
public class RecruiterInformationDAO extends DBContext {

    public List<RecruiterInformation> getRecruiters() {
        List<RecruiterInformation> list = new ArrayList<>();
        String query = """
                            SELECT  *  FROM recruiter re  
                            join [freelancer].[dbo].[Company] com on com.recruiterID = re.recruiterID 
                           join Team_Number te on te.team_numberID = com.team_numberID
                            join[User] u on u.userID= re.userID
                             join [Role] r on r.roleID=u.roleID
                          					   """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                TeamNumber tem = new TeamNumber(rs.getInt("team_numberID"), rs.getString("team_number"));
                Recruiter re = new Recruiter(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getBoolean("gender"), rs.getDate("dob"), rs.getString("image"), rs.getString("email_contact"), rs.getString("phone_contact"), rs.getInt("UserID"));
                User u = new User(rs.getInt("userID"), rs.getString("username"), rs.getString("password"), rs.getString("email"), rs.getString("status"), new Role(rs.getInt("roleID"), rs.getString("role_name")), rs.getBoolean("LevelPass"));
                list.add(new RecruiterInformation(new Company(rs.getInt("companyID"), rs.getString("company_name"), tem, rs.getDate("established_on"), rs.getString("logo"), rs.getString("website"), rs.getString("describe"), rs.getString("location"), re), getTotalPostByRecruiterID(rs.getInt("recruiterID")), u));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public int getTotalPostByRecruiterID(int recruiterID) {
        List<RecruiterInformation> list = new ArrayList<>();
        String query = """
                          select count(postID) as 'totalPost'  from Post where recruiterID = ?
                          					   """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, recruiterID);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("totalPost");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    public String getStatusByRecruiterID(int recruiterID) {
        List<RecruiterInformation> list = new ArrayList<>();
        String query = """
                         select [status]  from [User] where userID = ?
                          					   """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, recruiterID);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getString("status");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        System.out.println(new RecruiterInformationDAO().getTotalPostByRecruiterID(1));
        System.out.println(new RecruiterInformationDAO().getRecruiters());
    }
}
