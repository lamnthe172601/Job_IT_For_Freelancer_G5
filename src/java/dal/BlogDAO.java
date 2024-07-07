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
        String sql = "SELECT * FROM [freelancer].[dbo].[Blogs] WHERE statusBlog = 1";
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

    public Blogs selectBlogById(int id) {
        Blogs blog = null;
        String sql = "SELECT * FROM [freelancer].[dbo].[Blogs] WHERE BlogID = ?";
        try (Connection conn = connection; PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    String title = rs.getString("title");
                    String image = rs.getString("image");
                    String description = rs.getString("description");
                    String tag = rs.getString("tag");
                    Date date = rs.getDate("date_blog");
                    boolean status = rs.getBoolean("statusBlog");
                    blog = new Blogs(id, title, image, description, tag, date, status);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return blog;
    }

}
