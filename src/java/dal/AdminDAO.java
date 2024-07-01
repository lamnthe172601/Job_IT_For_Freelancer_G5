/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Blogs;
import Models.Categories;
import Models.Duration;
import Models.JobType;
import Models.Report;
import MutiDAO.FreelancerInformationDAO;
import MutiModels.ReportDetails;
import MutiModels.PostBasic;
import MutiModels.Project;
import MutiModels.RecruiterBasic;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kudol
 */
public class AdminDAO extends DBContext {

    public List<Project> getAllProject() {
        List<Project> project = new ArrayList<>();
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
                                              	
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"), rs.getString("description"), rs.getInt("statusCate"));
                Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                RecruiterBasic re = new RecruiterBasic(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email_contact"), rs.getString("company_name"), rs.getString(25));
                JobType job = new JobType(rs.getInt("job_type_ID"), rs.getString("job_name"));
                PostBasic posts
                        = new PostBasic(rs.getInt("postID"), rs.getInt("quantity"), rs.getInt("budget"), rs.getString("title"), rs.getString("description"), rs.getString("location"), rs.getString("skill"), rs.getString(3), rs.getDate("date_post"),
                                job, du,
                                re, ca, rs.getBoolean("status"), rs.getInt("checking"));
                project.add(new Project(posts, getReportsByPostId(rs.getInt("postID"))));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return project;
    }
    FreelancerInformationDAO fDAO = new FreelancerInformationDAO();

    public List<ReportDetails> getReportsByPostId(int postId) {
        List<ReportDetails> reports = new ArrayList<>();
        String query = """
                     SELECT *
                   FROM Report where postID = ?
                       order by  dateReport desc""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, postId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Report r = new Report(rs.getInt(1), rs.getInt(3), rs.getInt(2), rs.getString(5), rs.getDate(4));
                ReportDetails rd = new ReportDetails(r,fDAO.getFreelancerById(rs.getInt(2)));
                reports.add(rd);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return reports;
    }

//    public List<Report> getReportsByFreelancerId(int freelancerId) {
//        List<Report> reports = new ArrayList<>();
//        String query = """
//                   select * from Report where freelancerID= ?""";
//        try {
//            PreparedStatement ps = connection.prepareStatement(query);
//            ps.setInt(1, freelancerId);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Report r = new Report(rs.getInt(1), rs.getInt(3), rs.getInt(2), rs.getString(5), rs.getDate(4));
//                reports.add(r);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return reports;
//    }
    public List<Blogs> getAllBlogs() {
        List<Blogs> blogs = new ArrayList<>();
        String query = """
                   SELECT blogID, title, image, date_blog, description,tag,statusBlog
                   FROM Blogs
                   ORDER BY blogID DESC;""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Blogs blog = new Blogs();
                blog.setBlogID(rs.getInt("blogID"));
                blog.setTitle(rs.getString("title"));
                blog.setImage(rs.getString("image"));
                blog.setDate_blog(rs.getDate("date_blog"));
                String description = rs.getString("description");
                blog.setDescription(description);
                blog.setTag(rs.getString("tag"));
                blog.setStatus(rs.getBoolean("statusBlog"));
                blogs.add(blog);
            }
        } catch (SQLException e) {

        }
        return blogs;
    }

    public void changeStatusUser(int userID, String status) {
        String query = """
                        UPDATE [dbo].[User]
                          SET 
                             [status] = ? 
                           
                        WHERE userID= ? """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, status);
            ps.setInt(2, userID);
            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void moderationProject(int postID, int checked) {
        String query = """
                       UPDATE [dbo].[Post]
                           SET 
                              [checking] = ?
                         WHERE postID = ? """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, checked);
            ps.setInt(2, postID);
            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void addBlog(String title, String image, String descripition) {
        String query = """
                      INSERT INTO [dbo].[Blogs]
                                    ([title]
                                    ,[image]
                                    ,[date_blog]
                                    ,[description]
                                    ,[tag]
                                    ,[adminID]
                                    ,[statusBlog])
                              VALUES
                                    (?,?,?,?,?,?,?); """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            LocalDate currentDate = LocalDate.now();
            ps.setString(1, title);
            ps.setString(2, image);
            ps.setString(3, currentDate.toString());
            ps.setString(4, descripition);
            ps.setString(5, null);
            ps.setInt(6, 1);
            ps.setBoolean(7, true);

            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public Blogs getBlogByID(int blogid) {

        Blogs blogs = new Blogs();
        String query = """
                   select * from Blogs where blogID = ?""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Blogs blog = new Blogs();
                blog.setBlogID(rs.getInt("blogID"));
                blog.setTitle(rs.getString("title"));
                blog.setImage(rs.getString("image"));
                blog.setDate_blog(rs.getDate("date_blog"));
                String description = rs.getString("description");
                blog.setDescription(description);
                blog.setTag(rs.getString("tag"));
                blog.setStatus(rs.getBoolean("statusBlog"));
                return blogs;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public void updateBlog(int blogId, String title, String linkDB, String description) {

        String query = """
                      UPDATE [dbo].[Blogs]
                                       SET [title] = ?
                                          ,[image] = ?
                                          
                                          ,[description] = ?
                                         
                                        
                                     WHERE blogID=? """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            LocalDate currentDate = LocalDate.now();
            ps.setString(1, title);
            ps.setString(2, linkDB);
            ps.setString(3, description);
            ps.setInt(4, blogId);

            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public boolean changeBlogStatus(int blogId, boolean b) {
        String query = """
                  UPDATE [dbo].[Blogs]
                  SET [statusBlog] = ?
                  WHERE blogID = ?
                  """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setBoolean(1, b);
            ps.setInt(2, blogId);
            int rowsAffected = ps.executeUpdate(); // Sử dụng executeUpdate thay vì executeQuery
            return rowsAffected > 0; // Trả về true nếu có dòng bị ảnh hưởng
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public int getTotalBlog() {
        String query = "  SELECT count(blogID) as totalblog FROM Blogs";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("totalblog");
            }
        } catch (SQLException e) {
        }
        return -1;
    }

    public static void main(String[] args) {
        System.out.println(new AdminDAO().getAllProject().get(0).getListReport().size());

    }
}
