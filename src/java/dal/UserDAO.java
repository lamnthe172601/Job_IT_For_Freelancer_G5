/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Role;
import Models.User;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;

import java.sql.ResultSet;

/**
 *
 * @author DUC LINH
 */
public class UserDAO extends DBContext{
    

    public User getUserByUserID(int userID) throws SQLException {
        String query = "SELECT * FROM [freelancer].[dbo].[User] WHERE [userID] = ?";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, userID);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    // Lấy thông tin role từ cơ sở dữ liệu
                    int roleID = rs.getInt("roleID");
                    String roleName = rs.getString("roleName");

                    
                    Role role = new Role(roleID, roleName);
                    return new User(
                        rs.getInt("userID"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("status"),
                        role,
                        rs.getBoolean("levelPass")
                    );
                }
            }
        }
        return null;
    }

    
    public void changePassword(int userID, String newPassword) throws SQLException {
            
        String query = "  UPDATE [freelancer].[dbo].[User] SET password = ? WHERE userID = ?";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, newPassword);
            stmt.setInt(2, userID);
            stmt.executeUpdate();
        }
    }

    public Connection getConnection() {
        Connection connection = new DBContext().connection;
        return connection;
    }
    
}
