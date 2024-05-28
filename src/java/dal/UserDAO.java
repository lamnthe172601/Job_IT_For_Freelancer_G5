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
 * @author DUC MINH
 */
public class UserDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/freelancer";
    private static final String USER = "sa";
    private static final String PASSWORD = "sa";

    public User getUserByUsername(String username) throws SQLException {
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD)){
            String query = "SELECT u.*, r.id AS role_id, r.name AS role_name FROM users u LEFT JOIN roles r ON u.roleID = r.id WHERE u.username = ?";
            try (PreparedStatement stmt = connection.prepareStatement(query)) {
                stmt.setString(1, username);
                try (ResultSet rs = stmt.executeQuery()) {
                    if (rs.next()) {
                        User user = new User();
                        user.setUserID(rs.getInt("userID"));
                        user.setUsername(rs.getString("username"));
                        user.setPassword(rs.getString("password"));
                        user.setEmail(rs.getString("email"));
                        user.setStatus(rs.getString("status"));

                        Role role = new Role();
                        role.setRoleID(rs.getInt("role_id"));
                        role.setRoleName(rs.getString("role_name"));
                        user.setRoleID(role);

                        user.setLevelPass(rs.getBoolean("levelPass"));

                        return user;
                    }
                }
            }
        }
        return null;
    }
}
