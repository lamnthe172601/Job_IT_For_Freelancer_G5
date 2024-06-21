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
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
        String query = """
                       select recruiterID, first_name,last_name,gender,dob,[image],phone_contact,email_contact,userID
                                      from Recruiter 
                       \t\t\t   where recruiterID = ?""";
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

        String query = """
                       UPDATE Recruiter SET first_name = ?, last_name = ?, [image] = ?, gender = ?, dob = ?, phone_contact = ? , email_contact = ? , userID =?
                       where recruiterID = ?""";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, recruiter.getFirstName());
            stmt.setString(2, recruiter.getLastName());
            stmt.setString(3, recruiter.getImage());
            stmt.setBoolean(4, recruiter.isGender());
            stmt.setDate(5, (java.sql.Date) recruiter.getDob());

            stmt.setString(6, recruiter.getEmail());
            stmt.setString(7, recruiter.getPhone());
            stmt.setInt(8, recruiter.getRecruiterID());

            int rowsUpdated = stmt.executeUpdate();
            Company company = null;
            comDAO.updateCompany(company);
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new SQLException("Error while updating recruiter", e);
        }
    }

    public List<Post> ListPostByDateTime(int recruiterID) {
        List<Post> list = new ArrayList<>();
        String query = """
                           SELECT  * FROM Post p
                           JOIN JobType j ON p.job_type_ID = j.jobID
                           JOIN Duration du ON p.durationID = du.durationID
                           JOIN Recruiter re ON p.recruiterID = re.recruiterID
                           JOIN Categories ca ON p.caID = ca.caID                           
                           where p.recruiterID = ?
                           ORDER BY p.date_post DESC;""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, recruiterID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"), rs.getString("description"));
                Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                Recruiter re = new Recruiter(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getBoolean("gender"), rs.getDate("dob"), rs.getString("image"), rs.getString("email_contact"), rs.getString("phone_contact"), rs.getInt("UserID"));
                JobType job = new JobType(rs.getInt("jobID"), rs.getString("job_name"));
                list.add(new Post(rs.getInt("postID"), rs.getString("title"), rs.getString("image"), job, du, rs.getDate("date_post"), rs.getInt("quantity"), rs.getString("description"), rs.getInt("budget"), rs.getString("location"), rs.getString("skill"), re, ca, rs.getBoolean("status"), rs.getInt("checking")));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Post> ListAllPostByRecruiter(int recruiterID) {
        List<Post> list = new ArrayList<>();
        String query = """
                           SELECT * FROM Post p
                           JOIN JobType j ON p.job_type_ID = j.jobID
                           JOIN Duration du ON p.durationID = du.durationID
                           JOIN Recruiter re ON p.recruiterID = re.recruiterID
                           JOIN Categories ca ON p.caID = ca.caID                           
                           where p.recruiterID = ?
                           """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, recruiterID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"), rs.getString("description"));
                Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                Recruiter re = new Recruiter(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getBoolean("gender"), rs.getDate("dob"), rs.getString("image"), rs.getString("email_contact"), rs.getString("phone_contact"), rs.getInt("UserID"));
                JobType job = new JobType(rs.getInt("jobID"), rs.getString("job_name"));
                list.add(new Post(rs.getInt("postID"), rs.getString("title"), rs.getString("image"), job, du, rs.getDate("date_post"), rs.getInt("quantity"), rs.getString("description"), rs.getInt("budget"), rs.getString("location"), rs.getString("skill"), re, ca, rs.getBoolean("status"), rs.getInt("checking")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<JobApply> ListAllApplyForFreelancerByRecruiterID(int recruiterID) {
        List<JobApply> list = new ArrayList<>();
        String query = """
                           SELECT 
                                                              *
                                                          FROM [JobApply] ja
                                                          JOIN [Post] p ON ja.postID = p.postID
                                                          join Categories ca on p.caID = ca.caID
                                                          join JobType jt on jt.jobID = p.job_type_ID
                                                          join Duration du on du.durationID = p.durationID
                                                          
                                                          JOIN [Freelancer] free ON ja.freelanceID = free.freelanceID
                               						   JOIN [Recruiter] r ON p.recruiterID = r.recruiterID
                                                          WHERE 
                                                              p.recruiterID =?;
                           """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, recruiterID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"), rs.getString("description"));
                Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                Recruiter re = new Recruiter(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getBoolean("gender"), rs.getDate("dob"), rs.getString("image"), rs.getString("email_contact"), rs.getString("phone_contact"), rs.getInt("UserID"));
                JobType job = new JobType(rs.getInt("jobID"), rs.getString("job_name"));
                Post post = new Post(
                        rs.getInt("postID"),
                        rs.getString("title"),
                        rs.getString("image"),
                        job, du,
                        rs.getDate("date_post"),
                        rs.getInt("quantity"),
                        rs.getString("description"),
                        rs.getInt("budget"),
                        rs.getString("location"),
                        rs.getString("skill"),
                       re, ca,
                         rs.getBoolean("status"), rs.getInt("checking"));
                
                Freelancer en = new Freelancer(
                        rs.getInt("freelanceID"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("image"),
                        rs.getBoolean("gender"),
                        rs.getDate("dob"),
                        rs.getString("describe"),
                        rs.getString("email__contact"),
                        rs.getString("phone_contact")
                );

                list.add(new JobApply(rs.getInt("applyID"), en, post, rs.getString("status"), rs.getDate("dateApply")));
            }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public int getNumberPostbyRecruiter(int recreuiterID) {
        String query = """
                          SELECT COUNT(postID) AS total_posts
                                              FROM [Post] where recruiterID = ?;""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, recreuiterID);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("total_posts");
            }
        } catch (SQLException e) {
        }
        return -1;
    }

    
    public int getNumberApplyPostbyRecruiter(int recreuiterID) {
        String query = """
                         SELECT COUNT(JA.applyID) AS TotalApplies
                                              FROM Post P
                                              LEFT JOIN JobApply JA ON P.postID = JA.postID
                                              where recruiterID =?""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, recreuiterID);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("TotalApplies");
            }
        } catch (SQLException e) {
        }
        return -1;
    }
    
    public static void main(String[] args) {
        RecruiterDAO r = new RecruiterDAO();
        int m = r.getNumberApplyPostbyRecruiter(1);
        System.out.println(m);
    }
}
