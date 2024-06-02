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
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author DUC MINH
 */
public class PostDAO extends DBContext{
    public List<Post> getPopularPosts(int limit) throws SQLException {
        String query = "SELECT * FROM posts ORDER BY views DESC LIMIT ?";
        List<Post> posts = new ArrayList<>();
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, limit);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Post post = new Post(
                        rs.getInt("postID"),
                        rs.getString("title"),
                        rs.getString("image"),
                        new JobType(rs.getInt("jobTypeID")), // Assumes JobType has a constructor that accepts an int
                        new Duration(rs.getInt("durationID")), // Assumes Duration has a constructor that accepts an int
                        rs.getDate("datePost"),
                        rs.getInt("quantity"),
                        rs.getString("description"),
                        rs.getInt("budget"),
                        rs.getString("location"),
                        rs.getString("skill"),
                        new Recruiter(rs.getInt("recruiterID")), // Assumes Recruiter has a constructor that accepts an int
                        new Categories(rs.getInt("caID")) // Assumes Categories has a constructor that accepts an int
                    );
                    posts.add(post);
                }
            }
        }
        return posts;
    }
    
    

}
