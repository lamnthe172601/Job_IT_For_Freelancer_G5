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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DUC MINH
 */
public class FreelancerDAO extends DBContext {

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

    public List<Freelancer> getFreelancersByFreelancerID(int freelancerID) {
        List<Freelancer> freelancers = new ArrayList<>();
        String query = "  SELECT \n"
                + "    Freelancer.freelanceID,\n"
                + "    Freelancer.first_name,\n"
                + "    Freelancer.last_name,\n"
                + "    Freelancer.[image],\n"
                + "    Freelancer.gender,\n"
                + "    Freelancer.dob,\n"
                + "    Freelancer.[describe],\n"
                + "    Freelancer.email__contact,\n"
                + "    Freelancer.phone_contact,\n"
                + "    JobApply.applyID,\n"
                + "    JobApply.postID,\n"
                + "    JobApply.[status]\n"
                + "FROM \n"
                + "    JobApply\n"
                + "JOIN \n"
                + "    Freelancer ON JobApply.freelanceID = Freelancer.freelanceID\n"
                + "WHERE \n"
                + "    Freelancer.freelanceID = ?\n"
                + "    ";

        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, freelancerID);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("freelancerID");
                String firstName = rs.getString("first_name");
                String lastName = rs.getString("last_name");
                String image = rs.getString("image");
                boolean gender = rs.getBoolean("gender");
                Date dob = rs.getDate("dob");
                String description = rs.getString("describe");
                String email = rs.getString("email_contact");
                String phone = rs.getString("phone_contact");

                Freelancer freelancer = new Freelancer(id, firstName, lastName, image, gender, dob, description, email, phone);
                freelancers.add(freelancer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return freelancers;
    }

}
