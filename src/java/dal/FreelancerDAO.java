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

    public List<Experience> getExperienceById(int id) throws SQLException {
        List<Experience> list = new ArrayList<>();
        String query = "SELECT * FROM Experience ex join freelancer fe on ex.freelanceID = fe.freelanceID WHERE fe.freelanceID =  ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Freelancer en = new Freelancer(
                            rs.getInt("freelanceID"),
                            rs.getString("first_name"),
                            rs.getString("last_name"),
                            rs.getString("image"),
                            rs.getBoolean("gender"),
                            rs.getDate("dob"),
                            rs.getString("describe"),
                            rs.getString("email__contact"),
                            rs.getString("phone_contact")
                    );

                    list.add(new Experience(
                            rs.getInt("experienceID"),
                            rs.getString("experience_work_name"),
                            rs.getString("position"),
                            rs.getString("your_project"),
                            rs.getDate("start_date"),
                            rs.getDate("end_date"),
                            en
                    ));
                    
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // In chi tiết lỗi ra console
            throw new SQLException("Error while fetching freelancer", e);
        }
        return list;
    }

    public List<Education> getEducationById(int id) throws SQLException {
         List<Education> list = new ArrayList<>();
        String query = """
                       SELECT * FROM Education ex 
                       join freelancer fe on ex.freelanceID = fe.freelanceID 
                       join Degree de on ex.degreeID = de.dregeeID
                       WHERE fe.freelanceID =  ?""";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Freelancer en = new Freelancer(
                            rs.getInt("freelanceID"),
                            rs.getString("first_name"),
                            rs.getString("last_name"),
                            rs.getString("image"),
                            rs.getBoolean("gender"),
                            rs.getDate("dob"),
                            rs.getString("describe"),
                            rs.getString("email__contact"),
                            rs.getString("phone_contact")
                    );
                    
                    Dregee de = new Dregee(rs.getInt("degreeID"), rs.getString("degree_name"));

                    list.add( new Education(rs.getInt("educationID"), rs.getString("university_name")
                    ,rs.getDate("start_date"), rs.getDate("end_date"), en, de));
                      
                  
                    
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // In chi tiết lỗi ra console
            throw new SQLException("Error while fetching freelancer", e);
        }
        return list;
    }

    public List<Skills> getSkillSetById(int id) throws SQLException {
         List<Skills> list = new ArrayList<>();
        String query = """
                         SELECT * FROM Skills ex 
                                              join freelancer fe on ex.freelancerID = fe.freelanceID 
                                              join Skill_Set de on ex.skill_set_ID = de.skill_set_ID
                                              WHERE fe.freelanceID =  ?""";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Freelancer en = new Freelancer(
                            rs.getInt("freelanceID"),
                            rs.getString("first_name"),
                            rs.getString("last_name"),
                            rs.getString("image"),
                            rs.getBoolean("gender"),
                            rs.getDate("dob"),
                            rs.getString("describe"),
                            rs.getString("email__contact"),
                            rs.getString("phone_contact")
                    );
                    
                    SkillSet skillset = new SkillSet(rs.getInt("skill_set_ID"), rs.getString("skill_set_name"));

                    list.add( new Skills(rs.getInt("skillID"), skillset, en));
                      
                  
                    
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // In chi tiết lỗi ra console
            throw new SQLException("Error while fetching freelancer", e);
        }
        return list;
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
