/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Blogs;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Models.Categories;
import Models.Company;
import Models.Duration;
import Models.Freelancer;
import Models.JobType;
import Models.Post;
import Models.Recruiter;
import Models.SkillSet;
import Models.Skills;
import Models.TeamNumber;

/**
 *
 * @author Admin
 */
public class HomeDAO extends DBContext {

    public List<Post> TopPost() {
        List<Post> list = new ArrayList<>();
        String query = "    SELECT  top(3)* FROM Post p\n"
                + "    join JobType j on p.job_type_ID =  j.jobID\n"
                + "    join Duration du on p.durationID =  du.durationID\n"
                + "                              join Recruiter re on p.recruiterID =  re.recruiterID\n"
                + "                                join Categories ca on p.caID = ca.caID\n"
                + "                               join Company co on re.recruiterID = co.recruiterID\n"
                + "                                join Team_Number temp on temp.team_numberID= co.team_numberID\n"
                + "                                ORDER BY date_post DESC;";
        try {
            PreparedStatement ps = connection.prepareStatement(query);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"));
                Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                TeamNumber tem = new TeamNumber(rs.getInt("team_numberID"), rs.getString("team_number"));
                Recruiter re = new Recruiter(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getBoolean("gender"), rs.getDate("dob"), rs.getString("image"), rs.getString("email_contact"), rs.getString("phone_contact"), rs.getInt("UserID"));
                Company com = new Company(rs.getInt("companyID"), rs.getString("company_name"), tem, rs.getDate("established_on"), rs.getString("logo"), rs.getString("website"), rs.getString("describe"), rs.getString("location"), re);
                JobType job = new JobType(rs.getInt("jobID"), rs.getString("job_name"));
                list.add(new Post(rs.getInt("postID"), rs.getString("title"), rs.getString("image"), job, du, rs.getDate("date_post"), rs.getInt("quantity"), rs.getString("description"), rs.getInt("budget"), rs.getString("location"), rs.getString("skill"), re, ca));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Freelancer> TopFreelancer() {
        List<Freelancer> list = new ArrayList<>();
        String query = "    SELECT TOP (3) [freelanceID]\n"
                + "      ,[first_name]\n"
                + "      ,[last_name]\n"
                + "      ,[image]\n"
                + "      ,[gender]\n"
                + "      ,[dob]\n"
                + "      ,[describe]\n"
                + "      ,[email]\n"
                + "      ,[phone]      \n"
                + "  FROM [freelancer].[dbo].[Freelancer]";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Freelancer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getBoolean(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getString(9)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Skills> TopSkill() {
        List<Skills> list = new ArrayList<>();
        String query = """
                          SELECT TOP(5) *
                         FROM [freelancer].[dbo].[Skills] s
                         join Freelancer fe on fe.freelanceID = s.freelancerID
                         join Skill_Set ss on s.skill_set_ID = ss.skill_set_ID
                        ORDER BY NEWID()""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Freelancer fre = new Freelancer(rs.getInt("freelanceID"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("image"), rs.getBoolean("gender"), rs.getDate("dob"), rs.getString("describe"), rs.getString("email__contact"), rs.getString("phone_contact"));
                SkillSet ss = new SkillSet(rs.getInt("skill_set_ID"), rs.getString("skill_set_name"));
                list.add(new Skills(rs.getInt("skill_set_ID"), ss, fre));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Company> TopCompany() {
        List<Company> list = new ArrayList<>();
        String query = """
                           SELECT TOP (5) *  FROM [freelancer].[dbo].[Company] com
                                                 join recruiter re on com.recruiterID = re.recruiterID 
                          					   join Team_Number te on te.team_numberID = com.team_numberID
                          					   """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                TeamNumber tem = new TeamNumber(rs.getInt("team_numberID"), rs.getString("team_number"));
                Recruiter re = new Recruiter(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getBoolean("gender"), rs.getDate("dob"), rs.getString("image"), rs.getString("email_contact"), rs.getString("phone_contact"), rs.getInt("UserID"));
                list.add(new Company(rs.getInt("companyID"), rs.getString("company_name"), tem, rs.getDate("established_on"), rs.getString("logo"), rs.getString("website"), rs.getString("describe"), rs.getString("location"), re));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Blogs> TopBlogs() {
        List<Blogs> list = new ArrayList<>();
        String query = "   SELECT TOP(3) blogID, title, image, date_blog, description, tag\n"
                + "FROM Blogs\n"
                + "ORDER BY date_blog DESC;";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Blogs(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5), rs.getString(6)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public int getNumberUsers() {
        String query = """
                        SELECT COUNT(userID) AS total_users
                       FROM [User] where roleID = 3;""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("total_users");
            }
        } catch (SQLException e) {
        }
        return -1;
    }

    public int getNumberPost() {
        String query = """
                        SELECT COUNT(postID) AS total_posts
                       FROM [Post];""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("total_posts");
            }
        } catch (SQLException e) {
        }
        return -1;
    }

    public int getNumberCompany() {
        String query = """
                        SELECT COUNT(companyID) AS total_company
                       FROM [Company];""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("total_company");
            }
        } catch (SQLException e) {
        }
        return -1;
    }

    public static void main(String[] args) {
        HomeDAO p = new HomeDAO();
        List<Company> ps = p.TopCompany();
        for (Company p1 : ps) {
            System.out.println(p1.toString());
        }
    }
}
