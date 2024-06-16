/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Categories;
import Models.Company;
import Models.Duration;
import Models.JobType;
import Models.Post;
import Models.Recruiter;
import Models.SkillSet;
import Models.TeamNumber;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PostDAO extends DBContext {

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
                            new Categories(rs.getInt("caID")), // Assumes Categories has a constructor that accepts an int
                            rs.getBoolean("status"), rs.getInt("checking")
                    );
                    posts.add(post);
                }
            }
        }
        return posts;
    }

    public List<Post> getSearch(String title) {
        List<Post> list = new ArrayList<>();
        DAO teDao = new DAO();
        RecruiterDAO reDao = new RecruiterDAO();
        DurationDAO duDAO = new DurationDAO();
        JobTypeDAO joDAO = new JobTypeDAO();
        CategoriesDAO catDAO = new CategoriesDAO();

        String query = """
                       select postID,title,[image], job_type_ID, durationID,date_post,quantity,[description],budget, [location] ,skill, recruiterID,caID
                                      from Post
                                   where title like ?'""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, "%" + title + "%");
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String tt = rs.getString(3);
                String Im = rs.getString(2);
                int pid = rs.getInt(1);
                int qtt = rs.getInt(4);
                int bg = rs.getInt(6);
                Date dp = rs.getDate(5);
                String loc = rs.getString(7);
                String des = rs.getString(8);
                String sk = rs.getString(9);

                Recruiter recruiterID = reDao.getRecruiterProfileByRecruiterID(rs.getInt(10));
                Duration durationID = duDAO.getDurationByDRid(rs.getInt(11));
                JobType job_type_ID = joDAO.getJobTypeByJTID(rs.getInt(12));
                Categories caID = catDAO.getCategoryByID(rs.getInt(13));
                list.add(new Post(pid, tt, Im, job_type_ID, durationID, dp, qtt, des, bg, loc, sk, recruiterID, caID, rs.getBoolean("status"), rs.getInt("checking")));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public List<Post> getPostByRecruiterID(int pid) {
        List<Post> list = new ArrayList<>();
        String query = """
                   SELECT * 
                                          FROM Post p
                                          JOIN JobType j ON p.job_type_ID = j.jobID
                                          JOIN Duration du ON p.durationID = du.durationID
                                          JOIN Recruiter re ON p.recruiterID = re.recruiterID
                                          JOIN Categories ca ON p.caID = ca.caID
                                          JOIN Company co ON re.recruiterID = co.recruiterID
                   
                     where p.recruiterID = ? and p.status = 1 and p.checking = 1""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, pid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"));
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

    public List<Post> getAllPosts() {
        List<Post> posts = new ArrayList<>();
        String query = "SELECT * FROM Post";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                // Create Post object from the result set and add to the list
                Post post = new Post(
                        rs.getInt("postID"),
                        rs.getString("title"),
                        rs.getString("image"),
                        new JobType(rs.getInt("job_type_ID"), rs.getString("job_type_name")),
                        new Duration(rs.getInt("durationID"), rs.getString("duration_name")),
                        rs.getDate("date_post"),
                        rs.getInt("quantity"),
                        rs.getString("description"),
                        rs.getInt("budget"),
                        rs.getString("location"),
                        rs.getString("skill"),
                        new Recruiter(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getBoolean("gender"), rs.getDate("dob"), rs.getString("image"), rs.getString("email_contact"), rs.getString("phone_contact"), rs.getInt("UserID")),
                        new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img")),
                        rs.getBoolean("status"), rs.getInt("checking")
                );
                posts.add(post);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }

    // Method to get the maximum postID
    public int getMaxPostID() throws SQLException {
        int maxPostID = 0;
        String sql = "SELECT MAX(postID) AS max_postID FROM Post";

        try (PreparedStatement statement = connection.prepareStatement(sql); ResultSet resultSet = statement.executeQuery()) {
            if (resultSet.next()) {
                maxPostID = resultSet.getInt("max_postID");
            }
        }

        return maxPostID;
    }

    public boolean createPost(String title, String image, int jobTypeId, int durationId,
            int quantity, String description, int budget, String location, String skill,
            int recruiterId, int status, int caId, int checking) throws SQLException {
        String sql = "INSERT INTO [dbo].[Post] ([title], [image], [job_type_ID], [durationID], [date_post], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) "
                + "VALUES (?, ?, ?, ?, GETDATE(), ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try {

            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, title);
            statement.setString(2, image);
            statement.setInt(3, jobTypeId);
            statement.setInt(4, durationId);
            statement.setInt(5, quantity);
            statement.setString(6, description);
            statement.setInt(7, budget);
            statement.setString(8, location);
            statement.setString(9, skill);
            statement.setInt(10, recruiterId);
            statement.setInt(11, status);
            statement.setInt(12, caId);
            statement.setInt(13, checking);

            int rowsInserted = statement.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            return false;
        }

    }

    public List<SkillSet> getAllSkillSet() {
        List<SkillSet> list = new ArrayList<>();
        String query = """
                         SELECT [skill_set_ID]
                         ,[skill_set_name]
                         FROM [freelancer].[dbo].[Skill_Set]""";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    list.add(new SkillSet(rs.getInt("skill_set_ID"), rs.getString("skill_set_name")));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // In chi tiết lỗi ra console

        }
        return list;
    }

    public void updatePost(String title, String image, String job_type_ID, String durationID, String quantity, String description, String budget, String location, String skill, String caID, int postID) {
        String query = """
                       UPDATE [dbo].[Post]
                                SET [title] = ?
                                   ,[image] = ?
                                   ,[job_type_ID] = ?
                                   ,[durationID] = ?
                                   ,[quantity] = ?
                                   ,[description] = ?
                                   ,[budget] = ?
                                   ,[location] = ?
                                   ,[skill] = ?
                                   ,[caID] = ?
                              WHERE postID = ?""";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, title);
            stmt.setString(2, image);
            stmt.setString(3, job_type_ID);
            stmt.setString(4, durationID);
            stmt.setString(5, quantity);
            stmt.setString(6, description);
            stmt.setString(7, budget);
            stmt.setString(8, location);
            stmt.setString(9, skill);
            stmt.setString(10, caID);
            stmt.setInt(11, postID);
            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();

        }
    }

//    public static void main(String[] args) {
//        PostDAO dao = new PostDAO();
//        dao.updatePost("Khuong", "abc", 2, 2, 100, "mota", "30", "HCM", "C++", 10, 21);
//    }
}
