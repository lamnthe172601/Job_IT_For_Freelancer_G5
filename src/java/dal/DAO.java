/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Models.Categories;
import Models.Role;
import Models.SkillSet;
import Models.User;

/**
 *
 * @author Admin
 */
public class DAO extends DBContext {

    public User getLogin(String user, String pass) {
        String query = " select u.userID, u.username, u.password, u.email, u.status, r.roleID, r.role_name, u.LevelPass  \n"
                + "                       from [User] u \n"
                + "                       join Role r on u.roleID = r.roleID\n"
                + "                       where u.username = ? and u.password = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Role role = new Role(rs.getInt("roleID"), rs.getString("role_name"));
                return new User(rs.getInt("userID"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("status"),
                        role,
                        rs.getBoolean("LevelPass"));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public User getUserByEmail(String email) {
        String query = """
                       select u.userID, u.username, u.password, u.email, u.status, r.roleID, r.role_name, u.LevelPass
                       from [User] u 
                       join Role r on u.roleID = r.roleID
                       where u.email = ?""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Role role = new Role(rs.getInt("roleID"), rs.getString("role_name"));
                return new User(rs.getInt("userID"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("status"),
                        role,
                        rs.getBoolean("LevelPass"));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public ArrayList<User> getAllUser() {
        ArrayList<User> listUser = new ArrayList<>();
        String query = """
                       select u.userID, u.username, u.password, u.email, u.status, r.roleID, r.role_name, u.LevelPass 
                       from [User] u 
                       join Role r on u.roleID = r.roleID
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Role role = new Role(rs.getInt("roleID"), rs.getString("role_name"));
                listUser.add(new User(rs.getInt("userID"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("status"),
                        role,
                        rs.getBoolean("LevelPass")));

            }
        } catch (SQLException e) {
        }
        return listUser;
    }

    public void UpdatePassword(String password, int LevelPass, String email) {
        String sql = """
                     UPDATE [User] SET password=?, LevelPass=? WHERE email=?;
                     """;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, password);
            statement.setInt(2, LevelPass);
            statement.setString(3, email);
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void register(String username, String password, String email, String status) {
        String sql = "insert into [User]\n"
                + "values(?,?,?,?,5,1)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            statement.setString(3, email);
            statement.setString(4, status);
            statement.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public boolean checkUserExsit(String username) {
        ArrayList<User> user = getAllUser();
        for (User user1 : user) {
            if (user1.getUsername().equalsIgnoreCase(username)) {
                return true;
            }
        }
        return false;
    }

    public boolean checkEmailExsit(String email) {
        ArrayList<User> user = getAllUser();
        for (User user1 : user) {
            if (user1.getEmail().equalsIgnoreCase(email)) {
                return true;
            }
        }
        return false;
    }

    public ArrayList<SkillSet> listSkill() {
        ArrayList<SkillSet> listSkill = new ArrayList<>();
        String query = """
                       select * from Skill_Set;
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listSkill.add(new SkillSet(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (SQLException e) {
        }
        return listSkill;
    }

    public void inputFreelancerInfo(String firstname, String lastname, String img,
            String gender, String dob, String decscibe, String email, String phone, int userID) {
        String sql = """
                     insert into [Freelancer]
                     values(?,?,?,?,?,?,?,?,?)""";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, firstname);
            statement.setString(2, lastname);
            statement.setString(3, img);
            statement.setString(4, gender);
            statement.setString(5, dob);
            statement.setString(6, decscibe);
            statement.setString(7, email);
            statement.setString(8, phone);
            statement.setInt(9, userID);
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public void UpdateRole(int userID, int roleID) {
        String sql = """
                     UPDATE [User] SET roleID=? WHERE userID=?;
                     """;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, roleID);
            statement.setInt(2, userID);
            
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public int getFreelancerIDbyUserID(int userID) {
        int freelancerID = 0;
        String query = """
                       select freelanceID from Freelancer where userID=?;
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, userID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                freelancerID = rs.getInt("freelanceID");
            }
  

        } catch (SQLException e) {
        }
        return freelancerID;
    }
    

    public void inputFreelancerSkill(String SkillID, int freelancerID) {
        String sql = """
                     insert into [Skills]
                     values(?,?)""";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, SkillID);
            statement.setInt(2, freelancerID);
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public void inputFreelancerEducation(String uniname, String start, String end, int id, String deegreID) {
        String sql = """
                     insert into [Education]
                     values(?,?,?,?,?)""";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, uniname);
            statement.setString(2, start);
            statement.setString(3, end);
            statement.setInt(4, id);
            statement.setString(5, deegreID);
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    
    public void inputFreelancerExperiance(String experiance, String project, String position ,String start, String end,int freeID) {
        String sql = """
                     insert into [Experience]
                     values(?,?,?,?,?,?)""";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, experiance);
            statement.setString(2, position);
            statement.setString(3, start);
            statement.setString(4, end);
            statement.setString(5, project);
            statement.setInt(6, freeID);
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        ArrayList<SkillSet> listSkill = dao.listSkill();
        for (SkillSet skillSet : listSkill) {
            System.out.println(skillSet.toString());
        }
        System.out.println(dao.getFreelancerIDbyUserID(10));
        
        //dao.inputFreelancerExperiance("chem gio", "chem bao", "nguoi chem", "12/12/2003", "12/12/2004", 35);
        dao.inputFreelancerEducation("FPT", "12/12/2004", "12/12/2010", 35, "3");
    }
}
