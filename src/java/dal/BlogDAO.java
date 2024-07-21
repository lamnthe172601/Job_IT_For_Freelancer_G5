package dal;

import Models.Blogs;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BlogDAO extends DBContext {

    public List<Blogs> selectAllBlogs() {
        List<Blogs> blogs = new ArrayList<>();
        
        try  {
            String sql = "SELECT * FROM Blogs WHERE statusBlog = 1";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("BlogID");
                String title = rs.getString("title");
                String image = rs.getString("image");
                String description = rs.getString("description");
                String tag = rs.getString("tag");
                Date date = rs.getDate("date_blog");
                boolean status = rs.getBoolean("statusBlog");
                blogs.add(new Blogs(id, title, image, description, tag, date, status));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return blogs;
    }

    public Blogs selectBlogById(int blogID) {
        Blogs blog = null;
        String sql = "SELECT * FROM [freelancer].[dbo].[Blogs] WHERE BlogID = ? and statusBlog = 1";
        try (Connection conn = connection; PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, blogID);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    String title = rs.getString("title");
                    String image = rs.getString("image");
                    String description = rs.getString("description");
                    String tag = rs.getString("tag");
                    Date date = rs.getDate("date_blog");
                    boolean status = rs.getBoolean("statusBlog");
                    blog = new Blogs(blogID, title, image, description, tag, date, status);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return blog;

    }

    public List<Blogs> searchBlogs(String keyword) {
        List<Blogs> blogs = new ArrayList<>();
        String sql = "SELECT * FROM Blogs WHERE statusBlog = 1 AND (title LIKE ? OR description LIKE ?)";
        try (Connection conn = connection; PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, "%" + keyword + "%");
            stmt.setString(2, "%" + keyword + "%");
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    int id = rs.getInt("BlogID");
                    String title = rs.getString("title");
                    String image = rs.getString("image");
                    String description = rs.getString("description");
                    String tag = rs.getString("tag");
                    Date date = rs.getDate("date_blog");
                    boolean status = rs.getBoolean("statusBlog");
                    blogs.add(new Blogs(id, title, image, description, tag, date, status));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return blogs;
    }

    public List<Blogs> selectNewBlogs() {
        List<Blogs> blogs = new ArrayList<>();
        String sql = "SELECT TOP 3 * \n"
                + "FROM [freelancer].[dbo].[Blogs] \n"
                + "WHERE statusBlog = 1 \n"
                + "ORDER BY date_blog DESC;";
        try (Connection conn = connection; PreparedStatement stmt = conn.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                int id = rs.getInt("BlogID");
                String title = rs.getString("title");
                String image = rs.getString("image");
                String description = rs.getString("description");
                String tag = rs.getString("tag");
                Date date = rs.getDate("date_blog");
                boolean status = rs.getBoolean("statusBlog");
                blogs.add(new Blogs(id, title, image, description, tag, date, status));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return blogs;
    }

    public static void main(String[] args) {
        BlogDAO dao = new BlogDAO();
        List<Blogs> m = dao.selectAllBlogs();
        for (Blogs blogs : m) {
            System.out.println(blogs.toString());
        }
        
    }
}
