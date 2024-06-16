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
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DUC MINH
 */
public class FreelancerDAO extends DBContext {

    public Freelancer getFreelancerById(int id) {
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

        }
        return null;
    }

    public List<Experience> getExperienceById(int id) {
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

                    list.add(new Education(rs.getInt("educationID"), rs.getString("university_name"),
                             rs.getDate("start_date"), rs.getDate("end_date"), en, de));

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

                    list.add(new Skills(rs.getInt("skillID"), skillset, en));

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

    public int getMaxIdPost() {
        int maxId = 1;
        try {
            String sql = "select max(freelanceID) as MaxIdPost from Freelancer";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                maxId = rs.getInt("MaxIdPost");
            }
            rs.close();
            statement.close();
        } catch (SQLException e) {
            return maxId;
        }
        return maxId;
    }

    public static String formatDate(String input) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDate date = LocalDate.parse(input, formatter);
        return date.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
    }


    public void updateFreelancer(String firstname, String lastname, String image, String gender, String dob, String describe, String email, String phone, int user, int freelancerID) {
        String query = "UPDATE [dbo].[Freelancer]\n"
                + "   SET [first_name] = ?\n"
                + "      ,[last_name] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[gender] = ?\n"
                + "      ,[dob] = ?\n"
                + "      ,[describe] = ?\n"
                + "      ,[email__contact] = ?\n"
                + "      ,[phone_contact] = ?\n"
                + "      ,[userID] = ?"
                + " WHERE freelanceID = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, firstname);
            stmt.setString(2, lastname);
            stmt.setString(3, image);
            stmt.setString(4, gender);
            stmt.setString(5, dob);
            stmt.setString(6, describe);
            stmt.setString(7, email);
            stmt.setString(8, phone);
            stmt.setInt(9, user);
            stmt.setInt(10, freelancerID);
            stmt.executeUpdate();

        } catch (SQLException e) {
            

        }
    }

    public void updateskill(int freelanceID, List<String> newSkillList) throws SQLException {
        // Lấy danh sách các kỹ năng hiện tại của user từ cơ sở dữ liệu
        List<String> currentSkills = new ArrayList<>();
        String selectSQL = "SELECT skill_set_ID FROM Skills WHERE freelancerID = ?";
        try (PreparedStatement ps = connection.prepareStatement(selectSQL)) {
            ps.setInt(1, freelanceID);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    currentSkills.add(rs.getString("skill_set_ID"));
                }
            }
        }
        // Thêm các kỹ năng mới chưa tồn tại
        String insertSQL = "INSERT INTO Skills (skill_set_ID, freelancerID) VALUES (?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(insertSQL)) {
            for (String skill_set_ID : newSkillList) {
                if (!currentSkills.contains(skill_set_ID)) {
                    ps.setString(1, skill_set_ID);
                    ps.setInt(2, freelanceID);
                    ps.addBatch();
                }
            }
            ps.executeBatch();
        }

        // Xóa các kỹ năng không còn được chọn
        String deleteSQL = "DELETE FROM Skills WHERE freelancerID = ? AND skill_set_ID = ?";
        try (PreparedStatement ps = connection.prepareStatement(deleteSQL)) {
            for (String skill_set_ID : currentSkills) {
                if (newSkillList == null || !newSkillList.contains(skill_set_ID)) {
                    ps.setInt(1, freelanceID);
                    ps.setString(2, skill_set_ID);
                    ps.addBatch();
                }
            }
            ps.executeBatch();
        }
    }

    public void updateEducation(String educationName, String dateStart, String dateEnd, String degree, int freelanceID) {
        String query = "UPDATE [dbo].[Education]\n"
                + "   SET [university_name] = ?\n"
                + "      ,[start_date] = ?\n"
                + "      ,[end_date] = ?\n"
                + "      ,[degreeID] = ?\n"
                + " WHERE freelanceID = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, educationName);
            stmt.setString(2, dateStart);
            stmt.setString(3, dateEnd);
            stmt.setString(4, degree);
            stmt.setInt(5, freelanceID);
            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();

        }
    }

    public void updateExperience(String experienceName, String position, String startDate, String endDate, int freelanceID) {
        String query = """
                       UPDATE [dbo].[Experience]
                            SET [experience_work_name] = ?
                               ,[position] = ?
                               ,[start_date] = ?
                               ,[end_date] = ?
                               ,[freelanceID] = ?
                          WHERE [freelanceID] = ?""";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, experienceName);
            stmt.setString(2, position);
            stmt.setString(3, startDate);
            stmt.setString(4, endDate);
            stmt.setInt(5, freelanceID);
            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();

        }
    }

    public List<Freelancer> getSearchFreebySkill(String skill_set_name) {
        List<Freelancer> list = new ArrayList<>();
        String query = " SELECT f.*\n"
                + "FROM Freelancer f\n"
                + "JOIN Skills s ON f.freelanceID = s.freelancerID\n"
                + "JOIN Skill_Set ss ON s.skill_set_ID = ss.skill_set_ID\n"
                + "WHERE ss.skill_set_name like ?";

        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, "%" + skill_set_name + "%");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String fname = rs.getString(2);
                String lname = rs.getString(3);
                String im = rs.getString(4);
                boolean gender = rs.getBoolean(5);
                Date dob = rs.getDate(6);
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
