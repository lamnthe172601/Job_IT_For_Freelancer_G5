/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Categories;
import Models.Duration;
import Models.JobType;
import Models.Post;
import Models.Recruiter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tanng
 */
public class SearchDAO extends DBContext {

    public List<Post> getAllSearchPosts(String txtSearch, int index) {
        List<Post> posts = new ArrayList<>();
        String query = """
                        SELECT *    FROM Post p
                                                          JOIN JobType j ON p.job_type_ID = j.jobID
                                                          JOIN Duration du ON p.durationID = du.durationID
                                                           JOIN Recruiter re ON p.recruiterID = re.recruiterID
                                                           JOIN Categories ca ON p.caID = ca.caID
                                JOIN Company co ON re.recruiterID = co.recruiterID
                        	where p.skill like ? or p.title like ? or ca.categories_name like ?
                                ORDER BY p.postID desc
                                OFFSET ? rows fetch next 6 rows only;
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            ps.setString(2, "%" + txtSearch + "%");
            ps.setString(3, "%" + txtSearch + "%");
            ps.setInt(4, (index - 1) * 6);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"), rs.getString("description"), rs.getInt("statusCate"));
                Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                Recruiter re = new Recruiter(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getBoolean("gender"), rs.getDate("dob"), rs.getString("image"), rs.getString("email_contact"), rs.getString("phone_contact"), rs.getInt("UserID"));
                JobType job = new JobType(rs.getInt("jobID"), rs.getString("job_name"));
                posts.add(new Post(rs.getInt("postID"), rs.getString("title"), rs.getString("image"), job, du, rs.getDate("date_post"), rs.getDate("expired"), rs.getInt("quantity"), rs.getString("description"), rs.getInt("budget"), rs.getString("location"), rs.getString("skill"), re, ca, rs.getInt("status"), rs.getInt("checking")));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }
    
        public int getTotalPostSearch(String txtSearch) {
        
        String sql = """
                     SELECT count(*)    FROM Post p
                                 JOIN JobType j ON p.job_type_ID = j.jobID
                                  JOIN Duration du ON p.durationID = du.durationID
                                  JOIN Recruiter re ON p.recruiterID = re.recruiterID
                                   JOIN Categories ca ON p.caID = ca.caID
                                    JOIN Company co ON re.recruiterID = co.recruiterID
                                    where p.skill like ? or p.title like ? or ca.categories_name like ?;
                     """;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + txtSearch + "%");
            ps.setString(2, "%" + txtSearch + "%");
            ps.setString(3, "%" + txtSearch + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }
        
        
        
}
