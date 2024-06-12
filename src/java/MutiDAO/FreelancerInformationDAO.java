/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MutiDAO;

import dal.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Models.*;
import MutiModels.FreelancerInformation;

/**
 *
 * @author kudol
 */
public class FreelancerInformationDAO extends DBContext{
    public List<FreelancerInformation> get_ListFreelancer(){
       List<FreelancerInformation> list = new ArrayList<>();
        String query = """
                          select * from [User] u join [freelancer] f on u.userID=f.userID
                          join [Role] r on r.roleID=u.roleID """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
               User u = new User(rs.getInt("userID"),rs.getString("username"),rs.getString("password"),rs.getString("email"), rs.getString("status"),new Role(rs.getInt("roleID"), rs.getString("role_name")),rs.getBoolean("LevelPass"));
               Freelancer f = new Freelancer(rs.getInt("freelanceID"), rs.getString("first_name"),rs.getString("last_name"),rs.getString("image"),rs.getBoolean("gender"),rs.getDate("dob"),rs.getString("describe"),rs.getString("email__contact"),rs.getString("phone_contact"));
               list.add(new FreelancerInformation(u, f,get_ListSkillsByFreelancerId(rs.getInt("freelanceID"))) );
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;  
    }
    
     public List<SkillSet> get_ListSkillsByFreelancerId(int freelancerid){
       List<SkillSet> list = new ArrayList<>();
        String query = """
                          select * from Skill_Set ss join Skills s on ss.skill_set_ID=s.skill_set_ID
                          where s.freelancerID = ? """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1,freelancerid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
              SkillSet s = new SkillSet(rs.getInt("skill_set_ID"),rs.getString("skill_set_name"));
              list.add(s);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;  
    }
    public static void main(String[] args) {
        System.out.println(new FreelancerInformationDAO().get_ListSkillsByFreelancerId(1).get(0).getSkill_set_name());
    }
}
