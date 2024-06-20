/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MutiModels;

import Models.*;
import java.util.List;



/**
 *
 * @author kudol
 */
public class FreelancerInformation {
    private User account;
    private Freelancer basicInformation;
    private List<SkillSet> listSkill; 
    public FreelancerInformation() {
    }

    public FreelancerInformation(User account, Freelancer basicInformation, List<SkillSet> listSkill) {
        this.account = account;
        this.basicInformation = basicInformation;
        this.listSkill = listSkill;
    }

    public User getAccount() {
        return account;
    }

    public void setAccount(User account) {
        this.account = account;
    }

    public Freelancer getBasicInformation() {
        return basicInformation;
    }

    public void setBasicInformation(Freelancer basicInformation) {
        this.basicInformation = basicInformation;
    }

    public List<SkillSet> getListSkill() {
        return listSkill;
    }

    public void setListSkill(List<SkillSet> listSkill) {
        this.listSkill = listSkill;
    }


}
