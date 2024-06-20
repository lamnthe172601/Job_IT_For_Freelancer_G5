/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author kudol
 */
public class AdminDAO extends DBContext {

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
    public static void main(String[] args) {
        new AdminDAO().changeStatusUser(12,"inactive");
    }
}
