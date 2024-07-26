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
import MutiModels.SkillFreelancer;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Admin
 */
public class HomeDAO extends DBContext {

    public List<Post> TopPost() {
        List<Post> list = new ArrayList<>();
        String query = """
                           SELECT TOP 6 * 
                                                      FROM Post p
                                                      JOIN JobType j ON p.job_type_ID = j.jobID
                                                      JOIN Duration du ON p.durationID = du.durationID
                                                      JOIN Recruiter re ON p.recruiterID = re.recruiterID
                                                      JOIN Categories ca ON p.caID = ca.caID
                                                      JOIN Company co ON re.recruiterID = co.recruiterID
                                                      JOIN Team_Number temp ON temp.team_numberID = co.team_numberID
                                                        where p.status = 1
                                                      ORDER BY p.date_post DESC;""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"), rs.getString("description"), rs.getInt("statusCate"));
                Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                TeamNumber tem = new TeamNumber(rs.getInt("team_numberID"), rs.getString("team_number"));
                Recruiter re = new Recruiter(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getBoolean("gender"), rs.getDate("dob"), rs.getString("image"), rs.getString("email_contact"), rs.getString("phone_contact"), rs.getInt("UserID"));
                Company com = new Company(rs.getInt("companyID"), rs.getString("company_name"), tem, rs.getDate("established_on"), rs.getString("logo"), rs.getString("website"), rs.getString("describe"), rs.getString("location"), re);
                JobType job = new JobType(rs.getInt("jobID"), rs.getString("job_name"));
                int checking = rs.getInt("checking");
                int status = rs.getInt("status");
                list.add(new Post(rs.getInt("postID"), rs.getString("title"), rs.getString("image"), job, du, rs.getDate("expired"), rs.getDate("date_post"), rs.getInt("quantity"), rs.getString("description"), rs.getInt("budget"), rs.getString("location"), rs.getString("skill"), re, ca, status, checking));
            }
        } catch (SQLException e) {
            
        }
        return list;
    }

    public List<Post> getPostsByFreelancerSkill(int freelancerID) {
        List<Post> list = new ArrayList<>();
        String query = """
                       
                       
                       WITH FreelancerSkills AS (
                                                  SELECT ss.skill_set_name
                                                  FROM [freelancer].[dbo].[Skills] us
                                                  JOIN [freelancer].[dbo].[Skill_Set] ss ON us.skill_set_ID = ss.skill_set_ID
                                                  WHERE us.freelancerID =?
                                              ),
                                              
                                              MatchingPosts AS (
                                                  SELECT 
                                                      p.postID, 
                                                      p.title, 
                                                      p.image AS post_postImg, 
                                                      p.job_type_ID, 
                                                      p.durationID AS post_durationID, 
                                                      p.date_post,
                                                      p.expired,
                                                      p.quantity, 
                                                      p.description AS post_description, 
                                                      p.budget, 
                                                      p.location, 
                                                      p.skill, 
                                                      p.recruiterID AS post_recruiterID, 
                                                      p.status, 
                                                      p.caID, 
                                                      p.checking,
                                                      j.jobID, 
                                                      j.job_name, 
                                                      du.durationID AS du_durationID, 
                                                      du.duration_name, 
                                                      re.recruiterID AS re_recruiterID, 
                                                      re.first_name,
                                              		re.last_name, re.dob, re.email_contact, re.gender,re.image, re.phone_contact, re.UserID,
                                                      ca.caID AS ca_caID, 
                                                      ca.categories_name, 
                                              		ca.categories_img,
                                              		ca.description,
                                              		ca.statusCate,
                                                      co.companyID, 
                                                      co.company_name
                                                  FROM [freelancer].[dbo].[Post] p
                                                  JOIN [freelancer].[dbo].[JobType] j ON p.job_type_ID = j.jobID
                                                  JOIN [freelancer].[dbo].[Duration] du ON p.durationID = du.durationID
                                                  JOIN [freelancer].[dbo].[Recruiter] re ON p.recruiterID = re.recruiterID
                                                  JOIN [freelancer].[dbo].[Categories] ca ON p.caID = ca.caID
                                                  JOIN [freelancer].[dbo].[Company] co ON re.recruiterID = co.recruiterID
                                                  CROSS APPLY STRING_SPLIT(p.skill, ',') ps
                                                  WHERE TRIM(ps.value) IN (SELECT skill_set_name FROM FreelancerSkills) and p.status =1
                                              )
                                              
                                              SELECT DISTINCT TOP 6 *
                                              FROM MatchingPosts;""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, freelancerID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"), rs.getString("description"), rs.getInt("statusCate"));
                Duration du = new Duration(rs.getInt("du_durationID"), rs.getString("duration_name"));
                Recruiter re = new Recruiter(rs.getInt("re_recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getBoolean("gender"), rs.getDate("dob"), rs.getString("image"), rs.getString("email_contact"), rs.getString("phone_contact"), rs.getInt("UserID"));
                JobType job = new JobType(rs.getInt("jobID"), rs.getString("job_name"));

                list.add(new Post(rs.getInt("postID"), rs.getString("title"), rs.getString("post_postImg"), job, du, rs.getDate("date_post"), rs.getDate("expired"), rs.getInt("quantity"), rs.getString("description"), rs.getInt("budget"), rs.getString("location"), rs.getString("skill"), re, ca, rs.getInt("status"), rs.getInt("checking")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Post> getOtherPostsBySimilarCategories(int recruiterID) {
        List<Post> list = new ArrayList<>();
        String query = """
                       SELECT  top 6 * FROM [Post] p JOIN JobType j ON p.job_type_ID = j.jobID
                                                                                              JOIN Duration du ON p.durationID = du.durationID
                                                                                               JOIN Recruiter re ON p.recruiterID = re.recruiterID
                                                                                               JOIN [Categories] c ON p.caID = c.caID
                                                                                             JOIN Company co ON re.recruiterID = co.recruiterID
                                                                                                                                                                 
                                                                                              WHERE p.status = 1 AND EXISTS (
                                                                                                SELECT 1
                                                                                              FROM [Post] your_post
                                                                                                WHERE your_post.recruiterID = ?
                                                                                               AND your_post.caID = p.caID )  and p.checking =1
                                                                                                  ORDER BY p.date_post DESC;""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, recruiterID);
            
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
    public static void main(String[] args) {
        HomeDAO d = new HomeDAO();
        List<Post> m = d.getOtherPostsBySimilarCategories(1);
        for (Post post : m) {
            System.out.println(post.toString());
        }
    }

    public List<SkillFreelancer> getTop8FreelancersByLatestRecruiterPostSkill(int id) {
        List<SkillFreelancer> list = new ArrayList<>();
        String query = """
                       WITH LatestPostSkills AS (
                                                  SELECT TOP 1 p.skill
                                                  FROM [freelancer].[dbo].[Post] p
                                                  WHERE p.recruiterID = ?
                                                  ORDER BY p.postID DESC
                                              ),
                                              PostSkills AS (
                                                  SELECT TRIM(value) AS skill_name
                                                  FROM LatestPostSkills
                                                  CROSS APPLY STRING_SPLIT(skill, ',')
                                              ),
                                              FreelancerWithMatchingSkills AS (
                                                  SELECT f.freelanceID, f.first_name, f.last_name, f.image, f.gender, f.dob, f.[describe], f.email__contact, f.phone_contact, f.userID,
                                                         ss.skill_set_ID, ss.skill_set_name, s.skillID,
                                                         ROW_NUMBER() OVER (PARTITION BY f.freelanceID ORDER BY ss.skill_set_name) AS rn
                                                  FROM [freelancer].[dbo].[Freelancer] f
                       						   Join [User] us on f.userID = us.userID
                                                  JOIN [freelancer].[dbo].[Skills] s ON f.freelanceID = s.freelancerID
                                                  JOIN [freelancer].[dbo].[Skill_Set] ss ON s.skill_set_ID = ss.skill_set_ID
                                                  JOIN PostSkills ps ON ss.skill_set_name = ps.skill_name
                       						   where us.status = 'active'
                                              )
                                              SELECT TOP 8 f.*
                                              FROM FreelancerWithMatchingSkills f
                                              WHERE f.rn = 1;""";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    SkillSet ss = new SkillSet(rs.getInt("skill_set_ID"), rs.getString("skill_set_name"));
                    Freelancer free = new Freelancer(
                            rs.getInt("freelanceID"),
                            rs.getString("first_name"),
                            rs.getString("last_name"),
                            rs.getString("image"),
                            rs.getBoolean("gender"),
                            rs.getDate("dob"),
                            rs.getString("describe"),
                            rs.getString("email__contact"),
                            rs.getString("phone_contact"));

                    Skills s = new Skills(rs.getInt("skillID"), ss, free);

                    list.add(new SkillFreelancer(free, s));
                }

            }
        } catch (SQLException e) {
            e.printStackTrace(); // In chi tiết lỗi ra console

        }
        return list;
    }

    public List<Blogs> getTopBlogs() {
        List<Blogs> blogs = new ArrayList<>();
        String query = """
                   SELECT TOP(3) blogID, title, image, date_blog, description, tag, statusBlog
                                      FROM Blogs
                   				   where statusBlog = 1
                                      ORDER BY date_blog DESC;""";
        try (PreparedStatement ps = connection.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Blogs blog = new Blogs();
                blog.setBlogID(rs.getInt("blogID"));
                blog.setTitle(rs.getString("title"));
                blog.setImage(rs.getString("image"));
                blog.setDate_blog(rs.getDate("date_blog"));
                String description = rs.getString("description");
                blog.setDescription(getShortDescription(description, 10));
                blog.setTag(rs.getString("tag"));
                blog.setStatus(true);
                blogs.add(blog);
            }
        } catch (SQLException e) {
        }
        return blogs;
    }

   

    public static String getShortDescription(String description, int wordLimit) {
        if (description == null || description.isEmpty()) {
            return description;
        }

        String[] words = description.split("\\s+");
        if (words.length <= wordLimit) {
            return description;
        }

        StringBuilder shortDescription = new StringBuilder();
        for (int i = 0; i < wordLimit; i++) {
            shortDescription.append(words[i]).append(" ");
        }
        shortDescription.append("...");

        return shortDescription.toString().trim();
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

    public int countPostsByRecruiterStatus(int recruiterId) {
        String query = """
                    SELECT COUNT(postID) AS total_posts FROM [Post] WHERE recruiterID = ?""";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, recruiterId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("total_posts");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    public int getAllOpenPosts() {
        String query = """
                         SELECT COUNT(postID) AS total_openposts FROM [Post] WHERE status = 1""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("total_openposts");
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

    public Map<String, Integer> getPostCountByLocation() {
        Map<String, Integer> locationPostCount = new HashMap<>();
        String sql = """
                      SELECT  [location], COUNT([postID]) AS [post_count]
                          FROM   [Post]
                           GROUP BY [location]
                            ORDER BY  [post_count] DESC;""";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            // Lưu kết quả vào map
            while (rs.next()) {
                locationPostCount.put(rs.getString("location"), rs.getInt("post_count"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return locationPostCount;
    }

    public Map<String, Integer> getPostCountByCategories() {
        Map<String, Integer> categoryPostCount = new HashMap<>();
        String sql = """
                      SELECT c.categories_name, COUNT(p.postID) AS post_count 
                                                     FROM [Post] p
                                                     JOIN [Categories] c ON p.caID = c.caID 
                                                     GROUP BY c.categories_name""";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            // Lưu kết quả vào map
            while (rs.next()) {
                categoryPostCount.put(rs.getString("categories_name"), rs.getInt("post_count"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return categoryPostCount;
    }

    public int getNumberPostByRecruiter(int recruiterID) {
        String query = """
                    SELECT COUNT(postID) AS total_posts
                    FROM [Post]
                    WHERE recruiterID = ?;"""; // Thay đổi để phù hợp với cấu trúc bảng của bạn
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, recruiterID); // Thiết lập giá trị cho tham số truy vấn

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt("total_posts");
            }
        } catch (SQLException e) {
        }
        return -1; // Trả về -1 trong trường hợp có lỗi
    }

}
