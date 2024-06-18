/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Categories;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale.Category;

/**
 *
 * @author Admin
 */
public class CategoriesDAO extends DBContext {

    public List<Categories> getAllCategory() {
        List<Categories> list = new ArrayList<>();
        String query = "select * from Categories where statusCate = 1";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Categories(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                            rs.getString(4)));
            }
        } catch (SQLException e) {
        }
        return list;
    }
        
        

    public Categories getCategoryByID(int categoryId) {
        String query = "select * from Categories where caID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Categories c = new Categories(categoryId, query, query, query);
                return c;
            }
        } catch (SQLException e) {
        }
        return null;
    }
public boolean addCategory(Categories category) {
    String query = "INSERT INTO Categories (categories_name, description) VALUES (?, ?);";
    try (PreparedStatement ps = connection.prepareStatement(query)) {
        
        ps.setString(1, category.getCategoriesName());
        ps.setString(2, category.getDescription());
      
        int rowsInserted = ps.executeUpdate();
    
        return rowsInserted > 0;
    } catch (SQLException e) {
        
        e.printStackTrace();
    
        return false;
    }
}


    public List<Categories> getCategory() {
        List<Categories> categoriesList = new ArrayList<>();
        String sql = "SELECT caID, categories_name ,[description] FROM categories";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Categories category = new Categories();
                category.setCaID(resultSet.getInt("caID"));
                category.setCategoriesName(resultSet.getString("categories_name"));
                category.setDescription(resultSet.getString("description"));
                categoriesList.add(category);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return categoriesList;
    }

    public List<Categories> getAllCategories() {
        List<Categories> list = new ArrayList<>();
        String query = "SELECT * FROM Categories";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Categories(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
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

}
