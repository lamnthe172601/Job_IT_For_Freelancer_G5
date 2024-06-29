package dal;

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
}
