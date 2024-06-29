/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Categories;
import Models.Duration;
import Models.ExpertiseSkill;
import Models.JobType;
import Models.Post;

import Models.Recruiter;
import MutiModels.JobApply;
import Models.SkillSet;
import MutiModels.ExpiredSkillSet;
import MutiModels.PostApplicationCount;
import MutiModels.PostBasic;
import MutiModels.RecruiterBasic;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

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
                            rs.getDate("expired"),
                            rs.getInt("quantity"),
                            rs.getString("description"),
                            rs.getInt("budget"),
                            rs.getString("location"),
                            rs.getString("skill"),
                            new Recruiter(rs.getInt("recruiterID")), // Assumes Recruiter has a constructor that accepts an int
                            new Categories(rs.getInt("caID")), // Assumes Categories has a constructor that accepts an int
                            rs.getInt("status"), rs.getInt("checking")
                    );
                    posts.add(post);
                }
            }
        }
        return posts;
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
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"), rs.getString("description"), rs.getInt("statusCate"));
                Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                Recruiter re = new Recruiter(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getBoolean("gender"), rs.getDate("dob"), rs.getString("image"), rs.getString("email_contact"), rs.getString("phone_contact"), rs.getInt("UserID"));
                JobType job = new JobType(rs.getInt("jobID"), rs.getString("job_name"));
                
                list.add(new Post(rs.getInt("postID"), rs.getString("title"), rs.getString("image"), job, du, rs.getDate("date_post"), rs.getDate("expired"), rs.getInt("quantity"), rs.getString("description"), rs.getInt("budget"), rs.getString("location"), rs.getString("skill"), re, ca, rs.getInt("status"), rs.getInt("checking")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public List<Post> getAllPosts() {
        List<Post> posts = new ArrayList<>();
        String query = """
                        SELECT *    FROM Post p
                                  JOIN JobType j ON p.job_type_ID = j.jobID
                                  JOIN Duration du ON p.durationID = du.durationID
                                   JOIN Recruiter re ON p.recruiterID = re.recruiterID
                                   JOIN Categories ca ON p.caID = ca.caID
                                   JOIN Company co ON re.recruiterID = co.recruiterID""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
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
    
    public List<ExpiredSkillSet> getAllExpertiseSkillSet(int id) {
        List<ExpiredSkillSet> posts = new ArrayList<>();
        String query = """
                      SELECT s.skill_set_ID, s.skill_set_name, ex.ExpertiseID, ex.ExpertiseName
                           FROM Skill_Set s
                           join Expertise ex on s.ExpertiID = ex.ExpertiseID
                           where ExpertiID =?""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ExpertiseSkill es = new ExpertiseSkill(rs.getInt("ExpertiseID"), rs.getString("ExpertiseName"));
                SkillSet ss = new SkillSet(rs.getInt("skill_set_ID"), rs.getString("skill_set_name"));
                posts.add(new ExpiredSkillSet(ss, es));
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }
    
    public List<ExpertiseSkill> getAllExpertiseSkill() {
        List<ExpertiseSkill> posts = new ArrayList<>();
        String query = """
                       SELECT *
                         FROM Expertise""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                
                posts.add(new ExpertiseSkill(rs.getInt("ExpertiseID"), rs.getString("ExpertiseName")));
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }
    
    public boolean createPost(String title, String image, int jobTypeId, int durationId, String expired,
            int quantity, String description, int budget, String location, String skill,
            int recruiterId, int status, int caId, int checking) throws SQLException {
        String sql = """
                     INSERT INTO [dbo].[Post]
                                ([title]
                                ,[image]
                                ,[job_type_ID]
                                ,[durationID]
                                ,[date_post]
                                ,[expired]
                                ,[quantity]
                                ,[description]
                                ,[budget]
                                ,[location]
                                ,[skill]
                                ,[recruiterID]
                                ,[status]
                                ,[caID]
                                ,[checking])
                          VALUES
                                (?
                                ,?
                                ,?
                                ,?
                                ,GETDATE()
                                ,?
                                ,?
                                ,?
                                ,?
                                ,?
                                ,?
                                ,?
                                ,?
                                ,?
                                ,?)""";
        
        try {
            
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, title);
            statement.setString(2, image);
            statement.setInt(3, jobTypeId);
            statement.setInt(4, durationId);
            statement.setString(5, expired);
            statement.setInt(6, quantity);
            statement.setString(7, description);
            statement.setInt(8, budget);
            statement.setString(9, location);
            statement.setString(10, skill);
            statement.setInt(11, recruiterId);
            statement.setInt(12, status);
            statement.setInt(13, caId);
            statement.setInt(14, checking);
            
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
    
    public void updateStatusPost(int postID, boolean status) {
        String query = """
                       UPDATE post SET status = ? WHERE postID = ?""";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(2, postID);
            stmt.setBoolean(1, status);
            
            stmt.executeUpdate();
            
        } catch (SQLException e) {
            e.printStackTrace();
            
        }
    }

    //Tan task
    public List<PostBasic> getAllFavPosts(int id) {
        List<PostBasic> posts = new ArrayList<>();
        String query = """
                       select p.postID,p.title,p.image,p.job_type_ID,p.durationID,p.date_post,p.quantity,p.description,p.budget,p.location,p.skill,p.recruiterID,p.status,p.caID,p.checking,
                       	j.job_name,
                       	d.duration_name,
                       	c.categories_img,c.categories_name,c.description,c.statusCate,
                       	r.first_name,r.last_name,r.email_contact,r.image,
                       	co.company_name
                       	from Post p 
                       	inner join FreelancerFavorites f on p.postID=f.postID 
                       	inner join JobType j on j.jobID=p.job_type_ID
                       	inner join Duration d on d.durationID=p.durationID
                       	inner join Categories c on c.caID=p.caID
                       	inner join Recruiter r on r.recruiterID=p.recruiterID
                       	inner join Company co on co.recruiterID=p.recruiterID
                       	where f.freelanceID=?;
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"), rs.getString("description"), rs.getInt("statusCate"));
                Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                RecruiterBasic re = new RecruiterBasic(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email_contact"), rs.getString("company_name"), rs.getString(25));
                JobType job = new JobType(rs.getInt("job_type_ID"), rs.getString("job_name"));
                posts.add(new PostBasic(rs.getInt("postID"), rs.getInt("quantity"), rs.getInt("budget"), rs.getString("title"), rs.getString("description"), rs.getString("location"), rs.getString("skill"), rs.getString(3), rs.getDate("date_post"),
                        job, du,
                        re, ca, rs.getBoolean("status"), rs.getInt("checking")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }
    
    public PostBasic getPostsByID(int id) {
        String query = """
                       select p.postID,p.title,p.image,p.job_type_ID,p.durationID,p.date_post,p.quantity,p.description,p.budget,p.location,p.skill,p.recruiterID,p.status,p.caID,p.checking,
                       	j.job_name,
                       	d.duration_name,
                       	c.categories_img,c.categories_name,c.description,c.statusCate,
                       	r.first_name,r.last_name,r.email_contact,r.image,
                       	co.company_name
                       	from Post p                       	 
                       	inner join JobType j on j.jobID=p.job_type_ID
                       	inner join Duration d on d.durationID=p.durationID
                       	inner join Categories c on c.caID=p.caID
                       	inner join Recruiter r on r.recruiterID=p.recruiterID
                       	inner join Company co on co.recruiterID=p.recruiterID
                       	where p.postID=?;
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"), rs.getString("description"), rs.getInt("statusCate"));
                Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                RecruiterBasic re = new RecruiterBasic(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email_contact"), rs.getString("company_name"), rs.getString(25));
                JobType job = new JobType(rs.getInt("job_type_ID"), rs.getString("job_name"));
                return (new PostBasic(rs.getInt("postID"), rs.getInt("quantity"), rs.getInt("budget"), rs.getString("title"), rs.getString("description"), rs.getString("location"), rs.getString("skill"), rs.getString(3), rs.getDate("date_post"),
                        job, du,
                        re, ca, rs.getBoolean("status"), rs.getInt("checking")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public List<PostBasic> getTopPosts() {
        List<PostBasic> posts = new ArrayList<>();
        String query = """
                       select top 5 p.postID,p.title,p.image,p.job_type_ID,p.durationID,p.date_post,p.quantity,p.description,p.budget,p.location,p.skill,p.recruiterID,p.status,p.caID,p.checking,
                                              	j.job_name,
                                              	d.duration_name,
                                              	c.categories_img,c.categories_name,c.description,c.statusCate,
                                              	r.first_name,r.last_name,r.email_contact,r.image,
                                              	co.company_name
                                              	from Post p                        	
                                              	inner join JobType j on j.jobID=p.job_type_ID
                                              	inner join Duration d on d.durationID=p.durationID
                                              	inner join Categories c on c.caID=p.caID
                                              	inner join Recruiter r on r.recruiterID=p.recruiterID
                                              	inner join Company co on co.recruiterID=p.recruiterID
                                              	order by p.postID desc;
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"), rs.getString("description"), rs.getInt("statusCate"));
                Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                RecruiterBasic re = new RecruiterBasic(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email_contact"), rs.getString("company_name"), rs.getString(25));
                JobType job = new JobType(rs.getInt("job_type_ID"), rs.getString("job_name"));
                posts.add(new PostBasic(rs.getInt("postID"), rs.getInt("quantity"), rs.getInt("budget"), rs.getString("title"), rs.getString("description"), rs.getString("location"), rs.getString("skill"), rs.getString(3), rs.getDate("date_post"),
                        job, du,
                        re, ca, rs.getBoolean("status"), rs.getInt("checking")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }
    
    public void deleteFavoPostByPostID(int freelancerID, String postID) {
        String sql = """
                     DELETE FROM FreelancerFavorites WHERE freelanceID=? AND postID=?;
                     """;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            
            statement.setInt(1, freelancerID);
            statement.setString(2, postID);
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void AddFavoPost(int freelancerID, String postID) {
        String sql = """
                     insert into FreelancerFavorites values(?,?);;
                     """;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            
            statement.setInt(1, freelancerID);
            statement.setString(2, postID);
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public List<JobApply> getPostApply(int id) {
        List<JobApply> posts = new ArrayList<>();
        String query = """
                       select p.postID,p.title,p.date_post,p.budget,c.categories_name,j.dateApply,j.status
                                              	from Post p 
                                              	inner join JobApply j on p.postID=j.postID   	
                                              	inner join Categories c on c.caID=p.caID
                                              	where j.freelanceID=?;
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                posts.add(new JobApply(rs.getInt("postID"), rs.getInt("budget"), rs.getDate("date_post"), rs.getDate("dateApply"),
                        rs.getString("status"), rs.getString("title"), rs.getString("categories_name")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }
    
    public int getAllFavouritesByByFreelancerID(int id) {
        
        String sql = """
                     select count(*) from FreelancerFavorites where freelanceID=?;
                     """;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }
    
    public int getCountFavoSearch(int id, String txtSearch) {
        
        String sql = """
                     select count(*) from FreelancerFavorites f 
                     		inner join Post p on f.postID=p.postID
                     		where f.freelanceID=? and p.title like ?;
                     
                     """;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.setString(2, "%" + txtSearch + "%");
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }
    
    public int getCountApplySearch(int id, String txtSearch) {
        
        String sql = """
                     select count(*) from JobApply j
                     		inner join Post p on j.postID=p.postID
                     		where j.freelanceID=? and p.title like ?;
                     
                     """;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.setString(2, "%" + txtSearch + "%");
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }
    
    public int getSumJobApplyByFreelancerID(int id) {
        
        String sql = """
                     select count(*) from JobApply where freelanceID=?;
                     """;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }
    
    public void applyJob(int id, String postID, String date) {
        String sql = """
                     insert into JobApply
                     values(?,?,'Pending',?,?)
                     """;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.setString(2, postID);
            statement.setString(3, date);
            statement.setString(4, "");
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        
    }
    
    public List<PostBasic> getFavPostsPage(int id, int index) {
        List<PostBasic> posts = new ArrayList<>();
        String query = """
                       select p.postID,p.title,p.image,p.job_type_ID,p.durationID,p.date_post,p.quantity,p.description,p.budget,p.location,p.skill,p.recruiterID,p.status,p.caID,p.checking,
                                              	j.job_name,
                                              	d.duration_name,
                                              	c.categories_img,c.categories_name,c.description,c.statusCate,
                                              	r.first_name,r.last_name,r.email_contact,r.image,
                                              	co.company_name
                                              	from Post p 
                                              	inner join FreelancerFavorites f on p.postID=f.postID 
                                              	inner join JobType j on j.jobID=p.job_type_ID
                                              	inner join Duration d on d.durationID=p.durationID
                                              	inner join Categories c on c.caID=p.caID
                                              	inner join Recruiter r on r.recruiterID=p.recruiterID
                                              	inner join Company co on co.recruiterID=p.recruiterID						
                                              	where f.freelanceID=?
                       				ORDER BY f.favoritesID desc
                       				OFFSET ? rows fetch next 6 rows only;
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ps.setInt(2, (index - 1) * 6);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"), rs.getString("description"), rs.getInt("statusCate"));
                Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                RecruiterBasic re = new RecruiterBasic(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email_contact"), rs.getString("company_name"), rs.getString(25));
                JobType job = new JobType(rs.getInt("job_type_ID"), rs.getString("job_name"));
                posts.add(new PostBasic(rs.getInt("postID"), rs.getInt("quantity"), rs.getInt("budget"), rs.getString("title"), rs.getString("description"), rs.getString("location"), rs.getString("skill"), rs.getString(3), rs.getDate("date_post"),
                        job, du,
                        re, ca, rs.getBoolean("status"), rs.getInt("checking")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }
    
    public List<JobApply> getPostApplyPage(int id, int index) {
        List<JobApply> posts = new ArrayList<>();
        String query = """
                       select p.postID,p.title,p.date_post,p.budget,c.categories_name,j.dateApply,j.status
                                                                     	from Post p 
                                                                     	inner join JobApply j on p.postID=j.postID   	
                                                                     	inner join Categories c on c.caID=p.caID
                                                                     	where j.freelanceID=?
                       							ORDER BY j.applyID desc
                                              				OFFSET ? rows fetch next 8 rows only;
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ps.setInt(2, (index - 1) * 8);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                posts.add(new JobApply(rs.getInt("postID"), rs.getInt("budget"), rs.getDate("date_post"), rs.getDate("dateApply"),
                        rs.getString("status"), rs.getString("title"), rs.getString("categories_name")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }
    
    public String getImageByPostId(int postId) {
        
        String query = """
                       select *
                         from Post
                       where postID = ?;                                                                     	
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, postId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString("image").trim().split("-")[1].trim();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public List<PostBasic> searchAllFavPosts(int id, String txtSearch, int index) {
        List<PostBasic> posts = new ArrayList<>();
        String query = """
                       select p.postID,p.title,p.image,p.job_type_ID,p.durationID,p.date_post,p.quantity,p.description,p.budget,p.location,p.skill,p.recruiterID,p.status,p.caID,p.checking,
                       	j.job_name,
                       	d.duration_name,
                       	c.categories_img,c.categories_name,c.description,c.statusCate,
                       	r.first_name,r.last_name,r.email_contact,r.image,
                       	co.company_name
                       	from Post p 
                       	inner join FreelancerFavorites f on p.postID=f.postID 
                       	inner join JobType j on j.jobID=p.job_type_ID
                       	inner join Duration d on d.durationID=p.durationID
                       	inner join Categories c on c.caID=p.caID
                       	inner join Recruiter r on r.recruiterID=p.recruiterID
                       	inner join Company co on co.recruiterID=p.recruiterID
                       	where f.freelanceID=? and p.title like ?
                        ORDER BY f.favoritesID
                        OFFSET ? rows fetch next 6 rows only;
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ps.setString(2, "%" + txtSearch + "%");
            ps.setInt(3, (index - 1) * 6);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"), rs.getString("description"), rs.getInt("statusCate"));
                Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                RecruiterBasic re = new RecruiterBasic(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email_contact"), rs.getString("company_name"), rs.getString(25));
                JobType job = new JobType(rs.getInt("job_type_ID"), rs.getString("job_name"));
                posts.add(new PostBasic(rs.getInt("postID"), rs.getInt("quantity"), rs.getInt("budget"), rs.getString("title"), rs.getString("description"), rs.getString("location"), rs.getString("skill"), rs.getString(3), rs.getDate("date_post"),
                        job, du,
                        re, ca, rs.getBoolean("status"), rs.getInt("checking")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }
    
    public List<JobApply> SearchPostApply(int id, String txtSearch, int index) {
        List<JobApply> posts = new ArrayList<>();
        String query = """
                       select p.postID,p.title,p.date_post,p.budget,c.categories_name,j.dateApply,j.status
                                              	from Post p 
                                              	inner join JobApply j on p.postID=j.postID   	
                                              	inner join Categories c on c.caID=p.caID
                                              	where j.freelanceID=? and p.title like ?
                                                ORDER BY j.applyID
                                                OFFSET ? rows fetch next 8 rows only;
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ps.setString(2, "%" + txtSearch + "%");
            ps.setInt(3, (index - 1) * 8);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                posts.add(new JobApply(rs.getInt("postID"), rs.getInt("budget"), rs.getDate("date_post"), rs.getDate("dateApply"),
                        rs.getString("status"), rs.getString("title"), rs.getString("categories_name")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }
    
    public List<PostApplicationCount> TotalApplyByPost(int ID) {
        List<PostApplicationCount> TotalApplyByPost = new ArrayList<>();
        String sql = """
                     SELECT p.postID, COUNT(j.applyID) AS TotalApplications
                     FROM Post p
                     LEFT JOIN JobApply j ON p.postID = j.postID
                     where p.postID = ?
                     GROUP BY p.postID;""";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, ID);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                int postID = rs.getInt("postID");
                
                int totalApplications = rs.getInt("TotalApplications");

                // Create PostApplicationCount object and add to list
                PostApplicationCount applicationCount = new PostApplicationCount(postID, totalApplications);
                TotalApplyByPost.add(applicationCount);
            }
        } catch (SQLException e) {
        }        
        return TotalApplyByPost;        
        
    }
    
    public static void main(String[] args) {
        PostDAO dao = new PostDAO();
        List<PostApplicationCount> TotalApplyByPost = dao.TotalApplyByPost(4);
        for (PostApplicationCount postApplicationCount : TotalApplyByPost) {
            System.out.println(postApplicationCount.toString());
        }
    }
    
}
