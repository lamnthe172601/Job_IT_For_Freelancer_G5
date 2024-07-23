/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Categories;
import Models.Duration;
import Models.JobType;
import MutiModels.PostBasic;
import MutiModels.RecruiterBasic;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author Admin
 */
public class CategoriesDAO extends DBContext {

    public List<Categories> getAllCategory() {
        List<Categories> list = new ArrayList<>();
        
        try {
            String query = "select * from Categories WHERE statusCate = 1";
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Categories(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                            rs.getString(4),
             rs.getInt(5)));
            }
        } catch (SQLException e) {
        }
        return list;
    }
        
          public List<Categories> getAllCategories() {
        List<Categories> list = new ArrayList<>();
        
        try {
            String query = "select * from Categories";
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Categories(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                            rs.getString(4),
             rs.getInt(5)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public Categories getCategoryByID(int categoryId) {
        String query = "select * from Categories where caID=? and statusCate = 1";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Categories c = new Categories(categoryId, query, query, query, categoryId);
                return c;
            }
        } catch (SQLException e) {
        }
        return null;
    }
public boolean addCategory(Categories category) {
    String query = "INSERT INTO Categories (categories_name, description, statusCate) VALUES (?, ?, ?);";
    try (PreparedStatement ps = connection.prepareStatement(query)) {
        
        ps.setString(1, category.getCategoriesName());
       
        ps.setString(2, category.getDescription());
        ps.setBoolean(3, true); // Đặt giá trị statusCate là true (1)
      
        int rowsInserted = ps.executeUpdate();
    
        return rowsInserted > 0;
    } catch (SQLException e) {
        
        e.printStackTrace();
    
        return false;
    }
}



    public List<Categories> getCategory() {
        List<Categories> categoriesList = new ArrayList<>();
        String sql = "SELECT caID, categories_name ,[description],statusCate FROM categories Where statusCate = 1";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Categories category = new Categories();
                category.setCaID(resultSet.getInt("caID"));
                category.setCategoriesName(resultSet.getString("categories_name"));
                category.setDescription(resultSet.getString("description"));
                category.setStatusCate(resultSet.getInt("statusCate"));
                categoriesList.add(category);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return categoriesList;
    }

   

   public boolean deleteCategory(String categoryId) {
    PreparedStatement statement = null;
    try {
        System.out.println("Deleting category with ID: " + categoryId);
        String query = "UPDATE categories SET statusCate = 0 WHERE caID = ?";
        statement = connection.prepareStatement(query);
        statement.setString(1, categoryId);

        int rowsDeleted = statement.executeUpdate();

        if (rowsDeleted > 0) {
            return true;
        }
    } catch (SQLException e) {
        e.printStackTrace(); 
    } finally {
        try {
            if (statement != null) {
                statement.close();
            }
        } catch (SQLException e) {
            e.printStackTrace(); 
        }
    }
    return false;
}

    
    public boolean updateCategory(Categories category) {
    String query = "UPDATE Categories SET categories_name = ?, [description] = ? WHERE caID = ?";
    try (PreparedStatement ps = connection.prepareStatement(query)) {
        ps.setString(1, category.getCategoriesName());
        ps.setString(2, category.getDescription());
        ps.setInt(3, category.getCaID());
        int rowsUpdated = ps.executeUpdate();
        return rowsUpdated > 0;
    } catch (SQLException e) {
        e.printStackTrace();
        return false;
    }
}
public List<Categories> getCategoryByNameAndStatus(String categoryName, int statusCate) {
    List<Categories> categoriesList = new ArrayList<>();
    String sql = "SELECT caID, categories_name, [description], statusCate FROM categories WHERE categories_name LIKE ? AND (statusCate = ? OR ? = -1)";

    try (PreparedStatement statement = connection.prepareStatement(sql)) {
        statement.setString(1, "%" + categoryName + "%");
        statement.setInt(2, statusCate);
        statement.setInt(3, statusCate);

        ResultSet resultSet = statement.executeQuery();

        while (resultSet.next()) {
            Categories category = new Categories();
            category.setCaID(resultSet.getInt("caID"));
            category.setCategoriesName(resultSet.getString("categories_name"));
            category.setDescription(resultSet.getString("description"));
            category.setStatusCate(resultSet.getInt("statusCate"));
            categoriesList.add(category);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return categoriesList;
}

 public boolean ActiveCategory(String categoryId) {
    PreparedStatement statement = null;
    try {
        System.out.println("Deleting category with ID: " + categoryId);
        String query = "UPDATE categories SET statusCate = 1 WHERE caID = ?";
        statement = connection.prepareStatement(query);
        statement.setString(1, categoryId);

        int rowsDeleted = statement.executeUpdate();

        if (rowsDeleted > 0) {
            return true;
        }
    } catch (SQLException e) {
        e.printStackTrace(); 
    } finally {
        try {
            if (statement != null) {
                statement.close();
            }
        } catch (SQLException e) {
            e.printStackTrace(); 
        }
    }
    return false;
}
 
  public List<PostBasic> getPostsByCategoryPage(int categoryId, int index) {
    List<PostBasic> posts = new ArrayList<>();
    String query = """
                   select p.postID, p.title, p.image, p.job_type_ID, p.durationID, p.date_post, p.quantity, p.description, p.budget, p.location, p.skill, p.recruiterID, p.status, p.caID, p.checking,
                           j.job_name,
                           d.duration_name,
                           c.categories_img, c.categories_name, c.description, c.statusCate,
                           r.first_name, r.last_name, r.email_contact, r.image,
                           co.company_name
                   from Post p 
                   inner join JobType j on j.jobID = p.job_type_ID
                   inner join Duration d on d.durationID = p.durationID
                   inner join Categories c on c.caID = p.caID
                   inner join Recruiter r on r.recruiterID = p.recruiterID
                   inner join Company co on co.recruiterID = p.recruiterID
                   where p.caID = ?
                   order by p.postID desc
                   offset ? rows fetch next 6 rows only;
                   """;

    try {
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, categoryId);
        ps.setInt(2, (index - 1) * 6);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"), rs.getString("description"), rs.getInt("statusCate"));
            Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
            RecruiterBasic re = new RecruiterBasic(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email_contact"), rs.getString("company_name"), rs.getString("image"));
            JobType job = new JobType(rs.getInt("job_type_ID"), rs.getString("job_name"));
            posts.add(new PostBasic(rs.getInt("postID"), rs.getInt("quantity"), rs.getInt("budget"), rs.getString("title"), rs.getString("description"), rs.getString("location"), rs.getString("skill"), rs.getString("image"), rs.getDate("date_post"),
                    job, du,
                    re, ca, rs.getBoolean("status"), rs.getInt("checking")));
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return posts;
}
  
  public List<PostBasic> getPostsByLocationPage(String location, int index) {
    List<PostBasic> posts = new ArrayList<>();
    String query = """
                   select p.postID, p.title, p.image, p.job_type_ID, p.durationID, p.date_post, p.quantity, p.description, p.budget, p.location, p.skill, p.recruiterID, p.status, p.caID, p.checking,
                           j.job_name,
                           d.duration_name,
                           c.categories_img, c.categories_name, c.description, c.statusCate,
                           r.first_name, r.last_name, r.email_contact, r.image,
                           co.company_name
                   from Post p 
                   inner join JobType j on j.jobID = p.job_type_ID
                   inner join Duration d on d.durationID = p.durationID
                   inner join Categories c on c.caID = p.caID
                   inner join Recruiter r on r.recruiterID = p.recruiterID
                   inner join Company co on co.recruiterID = p.recruiterID
                   where p.location = ?
                   order by p.postID desc
                   offset ? rows fetch next 6 rows only;
                   """;

    try {
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, location);
        ps.setInt(2, (index - 1) * 6);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Categories ca = new Categories(rs.getInt("caID"), rs.getString("categories_name"), rs.getString("categories_img"), rs.getString("description"), rs.getInt("statusCate"));
            Duration du = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
            RecruiterBasic re = new RecruiterBasic(rs.getInt("recruiterID"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("email_contact"), rs.getString("company_name"), rs.getString("image"));
            JobType job = new JobType(rs.getInt("job_type_ID"), rs.getString("job_name"));
            posts.add(new PostBasic(rs.getInt("postID"), rs.getInt("quantity"), rs.getInt("budget"), rs.getString("title"), rs.getString("description"), rs.getString("location"), rs.getString("skill"), rs.getString("image"), rs.getDate("date_post"),
                    job, du,
                    re, ca, rs.getBoolean("status"), rs.getInt("checking")));
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return posts;
}
 
}

