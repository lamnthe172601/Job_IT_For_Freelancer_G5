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
    

    public User getUserByUsername(String username) throws SQLException {
        String query = "select * from [freelancer].[dbo].[User] where [username]= ?";
        try (PreparedStatement stmt = getConnection().prepareStatement(query)) {
            stmt.setString(1, username);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new User(
                        rs.getInt("userID"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("status"),
                        rs.getBoolean("levelPass")
                    );
                }
            }
        }
        return null;
    }

    
    public void changePassword(String username, String newPassword) throws SQLException {
            
        String query = "  UPDATE [freelancer].[dbo].[User] SET password = ? WHERE username = ?";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, newPassword);
            stmt.setString(2, username);
            stmt.executeUpdate();
        }
    }

    public Connection getConnection() {
        Connection connection = new DBContext().connection;
        return connection;
    }
    
}
