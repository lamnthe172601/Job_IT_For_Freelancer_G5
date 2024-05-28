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
import Models.Recruiter;
import Models.Role;
import Models.TeamNumber;
import Models.User;
import java.util.Date;

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
        } catch (Exception e) {
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

    public static void main(String[] args) {
        DAO dao = new DAO();
        ArrayList<User> user = dao.getAllUser();
        for (User user1 : user) {
            System.out.println(user1.toString());
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
}
