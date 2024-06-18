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

import Models.TeamNumber;
import MutiModels.JobApply;
import MutiModels.PostBasic;
import MutiModels.RecruiterBasic;
import java.sql.Connection;
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

        String query = "select postID,title,[image], job_type_ID, durationID,date_post,quantity,[description],budget, [location] ,skill, recruiterID,caID\n"
                + "               from Post\n"
                + "            where title like ?'";
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

    public List<Post> getPostByID(int pid) {
        List<Post> list = new ArrayList<>();
        String query = "SELECT postID, title, [image], job_type_ID, durationID, date_post, quantity, [description], budget, [location], skill, recruiterID, caID\n"
                + "FROM Post\n"
                + "WHERE postID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, pid); // Đặt giá trị cho tham số pid

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"));
                Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                TeamNumber tem = new TeamNumber(rs.getInt("team_numberID"), rs.getString("team_number"));
                Recruiter re = new Recruiter(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getBoolean("gender"), rs.getDate("dob"), rs.getString("image"), rs.getString("email_contact"), rs.getString("phone_contact"), rs.getInt("UserID"));
                Company com = new Company(rs.getInt("companyID"), rs.getString("company_name"), tem, rs.getDate("established_on"), rs.getString("logo"), rs.getString("website"), rs.getString("describe"), rs.getString("location"), re);
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
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"));
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
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"));
                Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                RecruiterBasic re = new RecruiterBasic(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email_contact"), rs.getString("company_name"),rs.getString(25));
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
                Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"));
                Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                RecruiterBasic re = new RecruiterBasic(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email_contact"), rs.getString("company_name"),rs.getString(25));
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
                posts.add(new JobApply(rs.getInt("postID"),rs.getInt("budget"),rs.getDate("date_post"),rs.getDate("dateApply"),
                        rs.getString("status"),rs.getString("title"),rs.getString("categories_name")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }
    
    public void applyJob(int id, String postID, String date) {
        String sql = """
                     insert into JobApply
                     values(?,?,'Pending',?)
                     """;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.setString(2, postID);
            statement.setString(3, date);
            statement.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public static void main(String[] args) {
        PostDAO d = new PostDAO();
        PostBasic post = d.getPostsByID(6);

        System.out.println(post.toString());

    }
}
