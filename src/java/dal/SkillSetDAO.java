/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author DUC LINH
 */
public class SkillSetDAO extends DBContext{
    public List<Map<String, String>> getAllSkillSets(int roleID) {
        List<Map<String, String>> skillSets = new ArrayList<>();
        String sql;
        
        if (roleID == 1 || roleID == 2) {
            sql = "SELECT skill_set_ID, skill_set_name, description FROM Skill_Set";
        } else {
            sql = "SELECT skill_set_ID, skill_set_name, description FROM Skill_Set WHERE statusSkill = 1";
        }
        
        try (Connection conn = connection; 
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
             
            while (rs.next()) {
                Map<String, String> skillSet = new HashMap<>();
                skillSet.put("skill_set_ID", String.valueOf(rs.getInt("skill_set_ID")));
                skillSet.put("skill_set_name", rs.getString("skill_set_name"));
                skillSet.put("description", rs.getString("description"));
                skillSets.add(skillSet);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return skillSets;
    }
}
