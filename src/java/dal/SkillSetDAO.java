package dal;
import Models.SkillSet;
import MutiModels.Skill_Set;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SkillSetDAO extends DBContext {
    public List<Map<String, String>> getAllSkillSets() {
        List<Map<String, String>> skillSets = new ArrayList<>();
        String sql = "SELECT skill_set_ID, skill_set_name, description, statusSkill FROM Skill_Set";
        try (Connection conn = connection; PreparedStatement stmt = conn.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                Map<String, String> skillSet = new HashMap<>();
                skillSet.put("skill_set_ID", String.valueOf(rs.getInt("skill_set_ID")));
                skillSet.put("skill_set_name", rs.getString("skill_set_name"));
                skillSet.put("description", rs.getString("description"));
                skillSet.put("statusSkill", String.valueOf(rs.getInt("statusSkill")));
                skillSets.add(skillSet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return skillSets;
    }
    
    public void addSkillSet(String skillSetName, String description) throws SQLException {
        String query = "INSERT INTO Skill_Set (skill_set_name, description, statusSkill) VALUES (?, ?, 1)";
        try (Connection conn = connection; PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, skillSetName);
            stmt.setString(2, description);
            stmt.executeUpdate();
        }
    }
    
     public void updateSkillSet(int skillSetID, String skillSetName, String description) throws SQLException {
        String query = "UPDATE Skill_Set SET skill_set_name = ?, description = ? WHERE skill_set_ID = ?";
        try (Connection conn = connection; PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, skillSetName);
            stmt.setString(2, description);
            stmt.setInt(3, skillSetID);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new SQLException("Error updating skill", e);
        }
    }

    public void deleteSkillSet(int skillSetID) throws SQLException {
        String query = "UPDATE Skill_Set SET statusSkill = 0 WHERE skill_set_ID = ?";
        try (Connection conn = connection; PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, skillSetID);
            stmt.executeUpdate();
        }
    }

    public List<Map<String, String>> searchSkillSets(String skill, String status) {
        List<Map<String, String>> skillSets = new ArrayList<>();
        String sql = "SELECT skill_set_ID, skill_set_name, description, statusSkill FROM Skill_Set WHERE statusSkill != -1";
        if (skill != null && !skill.trim().isEmpty()) {
            sql += " AND skill_set_name LIKE ?";
        }
        if (status != null && !status.trim().isEmpty()) {
            sql += " AND statusSkill = ?";
        }
        try (Connection conn = connection; PreparedStatement stmt = conn.prepareStatement(sql)) {
            int paramIndex = 1;
            if (skill != null && !skill.trim().isEmpty()) {
                stmt.setString(paramIndex++, "%" + skill + "%");
            }
            if (status != null && !status.trim().isEmpty()) {
                stmt.setString(paramIndex, status);
            }
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Map<String, String> skillSet = new HashMap<>();
                    skillSet.put("skill_set_ID", String.valueOf(rs.getInt("skill_set_ID")));
                    skillSet.put("skill_set_name", rs.getString("skill_set_name"));
                    skillSet.put("description", rs.getString("description"));
                    skillSet.put("statusSkill", String.valueOf(rs.getInt("statusSkill")));
                    skillSets.add(skillSet);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return skillSets;
    }
    //update skill when resgister
    // doing by TanNN
    public List<Skill_Set> getSkillSet() {
        List<Skill_Set> list = new ArrayList<>();
        String query = """
                       select s.skill_set_ID,s.skill_set_name,s.ExpertiID,e.ExpertiseName from Skill_Set  s
                       inner join Expertise e on s.ExpertiID=e.ExpertiseID 
                       where statusSkill='true';
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Skill_Set s = new Skill_Set(rs.getInt("skill_set_ID"), rs.getInt("ExpertiID"), rs.getString("skill_set_name").replace("\n", "").replace("\r", ""),rs.getString(4));
                list.add(s);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public HashMap<String, String> getAllSkill() {
        HashMap<String, String> map = new HashMap<>();
        SkillSetDAO s = new SkillSetDAO();

        List<Skill_Set> listSkills = s.getSkillSet();
        for (int i = 0; i < listSkills.size(); i++) {
            String key = listSkills.get(i).getExpertiseName();
            String skill = listSkills.get(i).getSkill_set_name();

            if (map.containsKey(key)) {
                String existingSkills = map.get(key);
                String updatedSkills = existingSkills + ", " + skill;
                map.put(key, updatedSkills);
            } else {
                map.put(key, skill);
            }
        }
        return map;
    }

    public int getSkillIDBySkillName(String skill) {
        int skillID = 0;
        String query = """
                       SELECT *
                       FROM Skill_Set
                       WHERE REPLACE(REPLACE(skill_set_name, CHAR(13), ' '), CHAR(10), ' ') = ?;
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, skill);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                skillID = rs.getInt("skill_set_ID");
            }

        } catch (SQLException e) {
        }
        return skillID;
    }
    
    public String getAllSkillPost(int id) {
        
        String sql = """
                     select * from Post where postID=?;
                     """;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                return rs.getString("skill");
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
        public String getExperti(String skill) {
        String name=null;
        String query = """
                       select s.skill_set_ID,s.skill_set_name,s.ExpertiID,e.ExpertiseName from Skill_Set  s
                       inner join Expertise e on s.ExpertiID=e.ExpertiseID 
                                              WHERE REPLACE(REPLACE(s.skill_set_name, CHAR(13), ' '), CHAR(10), ' ') = ?;
                       """;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, skill);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                name = rs.getString(4);
            }

        } catch (SQLException e) {
        }
        return name;
    }

   

}
