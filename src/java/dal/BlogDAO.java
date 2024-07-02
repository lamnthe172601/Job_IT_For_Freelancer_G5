/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;
import Models.Blogs;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/**
 *
 * @author DUC MINH
 */
public class BlogDAO extends DBContext{


//    private static final String SELECT_ALL_BLOGS = "SELECT * FROM Blogs";

//    protected Connection getConnection() {
//        Connection connection = null;
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return connection;
//    }

    public List<Blogs> selectAllBlogs() {
        List<Blogs> blogs = new ArrayList<>();
        String sql = "SELECT * FROM Blogs WHERE statusBlog = 1";
        try (Connection conn = connection; PreparedStatement stmt = conn.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                int id = rs.getInt("BlogID");
                String title = rs.getString("title");
                String image = rs.getString("image");
                String description = rs.getString("description");
                String tag = rs.getString("tag");
                Date date = rs.getDate("date_blog");
                boolean status = rs.getBoolean("status");
                blogs.add(new Blogs(id, title, image, description, tag, date, status));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return blogs;
    }
}
