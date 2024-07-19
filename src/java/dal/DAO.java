/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Models.SkillSet;
import Models.Admin;
import Models.Role;
import Models.TeamNumber;
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
                + "values(?,?,?,?,5,1,GETDATE())";
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

 

    public TeamNumber getTeamnumberByTeamNumberID(int Tid) {
        TeamNumber teDao = new TeamNumber();
        String query = "select team_number,team_numberID \n"
                + "from Team_Number\n"
                + "               		   where team_numberID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, Tid);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                int tid = rs.getInt(1);

                String tnumber = rs.getString(2);

                return new TeamNumber(tid, tnumber);
            }
        } catch (SQLException e) {
        }
        return null;
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

    public void inputFreelancerSkill(int SkillID, int freelancerID, String level) {
        String sql = """
                     insert into [Skills]
                     values(?,?,?)""";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, SkillID);
            statement.setInt(2, freelancerID);
            statement.setString(3, level);
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

    public void inputFreelancerExperiance(String experiance, String project, String position, String start, String end, int freeID) {
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

    public ArrayList<TeamNumber> listTeamNumber() {
        ArrayList<TeamNumber> listTeamSize = new ArrayList<>();
        String query = """
                       select * from Team_Number;
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listTeamSize.add(new TeamNumber(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return listTeamSize;
    }

    public void inputRecruiterInfo(String firstname, String lastname, String gender, String dob, String img,
            String email, String phone, int userID) {
        String sql = """
                     insert into [Recruiter]
                     values(?,?,?,?,?,?,?,?)""";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, firstname);
            statement.setString(2, lastname);
            statement.setString(3, gender);
            statement.setString(4, dob);
            statement.setString(5, img);
            statement.setString(6, email);
            statement.setString(7, phone);
            statement.setInt(8, userID);
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public int getRecruiterIDbyUserID(int userID) {
        int recruiterID = 0;
        String query = """
                       select recruiterID from Recruiter where userID=?;
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, userID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                recruiterID = rs.getInt("recruiterID");
            }

        } catch (SQLException e) {
        }
        return recruiterID;
    }

    public void inputCompanyInfo(String name, String teamID, String established, String logo, String web,
            String decsribe, String location, int ID) {
        String sql = """
                     insert into [Company]
                     values(?,?,?,?,?,?,?,?)""";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, teamID);
            statement.setString(3, established);
            statement.setString(4, logo);
            statement.setString(5, web);
            statement.setString(6, decsribe);
            statement.setString(7, location);
            statement.setInt(8, ID);
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Admin getAdminProfileByUserID(int userid) {

        String sql = """
                     select * from [Admin] where [userID] = ?
                     """;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, userid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return new Admin(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public static void main(String[] args) {
        System.out.println(new DAO().getAdminProfileByUserID(1).getImage());
    }
}
