/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Freelancer;
import Models.SkillSet;
import Models.Skills;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author tanng
 */
public class FavoritesDAO extends DBContext{

    
     public List<Skills> getAllRecruiterFavorites(String recruiterID) {
        List<Skills> list = new ArrayList<>();
        String query = """
                        select f.freelanceID,f.first_name, f.last_name, f.gender,f.image,f.phone_contact, f.userID, f.dob,f.describe, f.email__contact,
                                                 	s.skillID,s.skill_set_ID,ks.skill_set_name
                                                 	from Freelancer f
                                                 	inner join Skills s on f.freelanceID=s.freelancerID
                                                 	inner join Skill_Set ks on ks.skill_set_ID=s.skill_set_ID
                        				inner join Mark m on m.FreelancerID=f.freelanceID
                        				where m.RecruiterID=?""";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, recruiterID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                SkillSet ss = new SkillSet(rs.getInt("skill_set_ID"), rs.getString("skill_set_name"));
                Freelancer free = new Freelancer(
                        rs.getInt("freelanceID"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("image"),
                        rs.getBoolean("gender"),
                        rs.getDate("dob"),
                        rs.getString("describe"),
                        rs.getString("email__contact"),
                        rs.getString("phone_contact"));
                Skills s = new Skills(rs.getInt("skillID"), ss, free);
                list.add(s);
            }
        } catch (SQLException e) {
        }
        return list;
    }
     
         public HashMap<Integer, String> getFreelancerByRecruiterFavorites(String recruiterID) {
        HashMap<Integer, String> map = new HashMap<>();
        FavoritesDAO f = new FavoritesDAO();

        List<Skills> listSkills = f.getAllRecruiterFavorites(recruiterID);
        for (int i = 0; i < listSkills.size(); i++) {
            int freelancerID = listSkills.get(i).getFreelancerID().getFreelanceID();
            String skillName = listSkills.get(i).getSkill_set_ID().getSkill_set_name();

            if (map.containsKey(freelancerID)) {
                String existingSkills = map.get(freelancerID);
                String updatedSkills = existingSkills + ", " + skillName;
                map.put(freelancerID, updatedSkills);
            } else {
                map.put(freelancerID, skillName);
            }
        }
        return map;
    }
}
