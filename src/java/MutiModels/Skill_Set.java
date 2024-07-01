/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MutiModels;

/**
 *
 * @author tanng
 */
public class Skill_Set {
    int skill_set_ID, ExpertiID;
    String skill_set_name, ExpertiseName;

    public Skill_Set() {
    }

    public Skill_Set(int skill_set_ID, int ExpertiID, String skill_set_name, String ExpertiseName) {
        this.skill_set_ID = skill_set_ID;
        this.ExpertiID = ExpertiID;
        this.skill_set_name = skill_set_name;
        this.ExpertiseName = ExpertiseName;
    }

    public int getSkill_set_ID() {
        return skill_set_ID;
    }

    public void setSkill_set_ID(int skill_set_ID) {
        this.skill_set_ID = skill_set_ID;
    }

    public int getExpertiID() {
        return ExpertiID;
    }

    public void setExpertiID(int ExpertiID) {
        this.ExpertiID = ExpertiID;
    }

    public String getSkill_set_name() {
        return skill_set_name;
    }

    public void setSkill_set_name(String skill_set_name) {
        this.skill_set_name = skill_set_name;
    }

    public String getExpertiseName() {
        return ExpertiseName;
    }

    public void setExpertiseName(String ExpertiseName) {
        this.ExpertiseName = ExpertiseName;
    }

    

    
    
    
}
