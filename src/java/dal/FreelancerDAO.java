/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Dregee;
import Models.Education;
import Models.Experience;
import Models.Freelancer;
import Models.SkillSet;
import Models.Skills;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DUC MINH
 */
public class FreelancerDAO extends DBContext {

    public Freelancer getFreelancerById(int id) throws SQLException {
        String query = "SELECT * FROM freelancer WHERE userID = ?";
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
                            rs.getString("email__contact"),
                            rs.getString("phone_contact")
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
                    
                    Dregee de = new Dregee(rs.getInt("dregeeID"), rs.getString("degree_name"));

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
    
     public List<SkillSet> getAllSkillSet() {
         List<SkillSet> list = new ArrayList<>();
        String query = """
                         SELECT [skill_set_ID]
                         ,[skill_set_name]
                         FROM [freelancer].[dbo].[Skill_Set]""";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {        
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    list.add(new SkillSet(rs.getInt("skill_set_ID"), rs.getString("skill_set_name")));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // In chi tiết lỗi ra console
           
        }
        return list;
    }
     
      public List<Dregee> getAllDregee() {
         List<Dregee> list = new ArrayList<>();
        String query = """
                         SELECT *
                         FROM Degree""";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {        
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    list.add(new Dregee(rs.getInt("dregeeID"), rs.getString("degree_name")));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // In chi tiết lỗi ra console
           
        }
        return list;
    }
     
     public static void main(String[] args) {
        FreelancerDAO fe = new FreelancerDAO();
        List<Dregee> li = fe.getAllDregee();
         for (Dregee skillSet : li) {
             System.out.println(skillSet.toString());
         }
    }

    public boolean updateFreelancer(Freelancer freelancer) throws SQLException {
        String query = "UPDATE freelancers SET first_name = ?, last_name = ?, image = ?, gender = ?, dob = ?, describe = ?, email = ?, phone = ? WHERE freelanceID = ?";
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
     public List<Freelancer> getSearchFreebySkill(String skill_set_name) {
        List<Freelancer> list = new ArrayList<>();
        String query = " SELECT  Freelancer.freelanceID,\n"
                + "                 Freelancer.first_name,\n"
                + "				 Freelancer.freelanceID,\n"
                + "               Freelancer.[image],\n"
                + "              Freelancer.gender,\n"
                + "                   Freelancer.dob,\n"
                + "                   Freelancer.[describe],\n"
                + "                Freelancer.email__contact,\n"
                + "                 Freelancer.phone_contact,\n"
                + "                  Freelancer.userID\n"
                + "                 \n"
                + "               FROM\n"
                + "            Freelancer\n"
                + "              JOIN\n"
                + "                 Skills ON Freelancer.freelanceID = Skills.freelancerID\n"
                + "                JOIN\n"
                + "                 Skill_Set ON Skills.skill_set_ID = Skill_Set.skill_set_ID\n"
                + "               WHERE\n"
                + "                 Skill_Set.skill_set_name LIKE ?";

        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, "%" + skill_set_name + "%");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String fname = rs.getString(2);
                String lname = rs.getString(3);
                String im = rs.getString(4);
                boolean gender = rs.getBoolean(5);
                java.util.Date dob = rs.getDate(6);
                String des = rs.getString(7);
                int uid = rs.getInt(8);
                String ec = rs.getString(9);
                String pc = rs.getString(10);
                int fid = rs.getInt(1);

                list.add(new Freelancer(fid, fname, lname, im, gender, dob, des, ec, pc));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

}
