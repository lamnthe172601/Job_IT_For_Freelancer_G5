/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MutiModels;

import Models.ExpertiseSkill;

/**
 *
 * @author kudol
 */
public class skillFull {
    private int skillID;
    private String skillName;
    private String description;
    private boolean status;
    private ExpertiseSkill expertise; 

    public skillFull() {
    }

    public skillFull(int skillID, String skillName, String description, boolean status, ExpertiseSkill expertise) {
        this.skillID = skillID;
        this.skillName = skillName;
        this.description = description;
        this.status = status;
        this.expertise = expertise;
    }

    public int getSkillID() {
        return skillID;
    }

    public void setSkillID(int skillID) {
        this.skillID = skillID;
    }

    public String getSkillName() {
        return skillName;
    }

    public void setSkillName(String skillName) {
        this.skillName = skillName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public ExpertiseSkill getExpertise() {
        return expertise;
    }

    public void setExpertise(ExpertiseSkill expertise) {
        this.expertise = expertise;
    }

 
    
}
