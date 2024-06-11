/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MutiModels;

import Models.Freelancer;
import Models.Skills;

/**
 *
 * @author Admin
 */
public class SkillFreelancer {
    Freelancer freelancer;
    Skills skills;

    public SkillFreelancer() {
    }

    public SkillFreelancer(Freelancer freelancer, Skills skills) {
        this.freelancer = freelancer;
        this.skills = skills;
    }

    public Freelancer getFreelancer() {
        return freelancer;
    }

    public void setFreelancer(Freelancer freelancer) {
        this.freelancer = freelancer;
    }

    public Skills getSkills() {
        return skills;
    }

    public void setSkills(Skills skills) {
        this.skills = skills;
    }
    
    
}
