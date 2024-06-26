/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MutiModels;

import Models.ExpertiseSkill;
import Models.SkillSet;

/**
 *
 * @author Admin
 */
public class ExpiredSkillSet {
    
    SkillSet skillSetID;
    ExpertiseSkill expertiseSkill;

    public ExpiredSkillSet() {
    }

    public ExpiredSkillSet(SkillSet skillSetID, ExpertiseSkill expertiseSkill) {
        this.skillSetID = skillSetID;
        this.expertiseSkill = expertiseSkill;
    }

    public SkillSet getSkillSetID() {
        return skillSetID;
    }

    public void setSkillSetID(SkillSet skillSetID) {
        this.skillSetID = skillSetID;
    }

    public ExpertiseSkill getExpertiseSkill() {
        return expertiseSkill;
    }

    public void setExpertiseSkill(ExpertiseSkill expertiseSkill) {
        this.expertiseSkill = expertiseSkill;
    }

    @Override
    public String toString() {
        return "ExpiredSkillSet{" + "skillSetID=" + skillSetID + ", expertiseSkill=" + expertiseSkill + '}';
    }

    
    
    
}
