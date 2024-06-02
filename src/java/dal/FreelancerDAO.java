/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Freelancer;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author DUC MINH
 */
public class FreelancerDAO  extends DBContext{
    public Freelancer getFreelancerById(int id) throws SQLException {
        String query = "SELECT * FROM freelancers WHERE freelanceID = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new Freelancer(
                        rs.getInt("freelanceID"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("image"),
                        rs.getBoolean("gender"),
                        rs.getDate("dob"),
                        rs.getString("describe"),
                        rs.getString("email"),
                        rs.getString("phone")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // In chi tiết lỗi ra console
            throw new SQLException("Error while fetching freelancer", e);
        }
        return null;
    }
    public boolean updateFreelancer(Freelancer freelancer) throws SQLException {
        String query = "UPDATE freelancer SET first_name = ?, last_name = ?, image = ?, gender = ?, dob = ?, describe = ?, email = ?, phone = ? WHERE freelanceID = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, freelancer.getFirst_name());
            stmt.setString(2, freelancer.getLast_name());
            stmt.setString(3, freelancer.getImage());
            stmt.setBoolean(4, freelancer.isGender());
            stmt.setDate(5, (Date) freelancer.getDob());
            stmt.setString(6, freelancer.getDescribe());
            stmt.setString(7, freelancer.getEmail());
            stmt.setString(8, freelancer.getPhone());
            stmt.setInt(9, freelancer.getFreelanceID());
            int rowsUpdated = stmt.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new SQLException("Error while updating freelancer", e);
        }
    }
}
