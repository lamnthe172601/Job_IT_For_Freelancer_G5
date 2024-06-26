/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import MutiModels.ExpiredSkillSet;
import dal.PostDAO;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ExpertiseSkill {
    int expertiseID;
    String expertiseName;

    public ExpertiseSkill() {
    }

    public ExpertiseSkill(int expertiseID, String expertiseName) {
        this.expertiseID = expertiseID;
        this.expertiseName = expertiseName;
    }

    public int getExpertiseID() {
        return expertiseID;
    }

    public void setExpertiseID(int expertiseID) {
        this.expertiseID = expertiseID;
    }

    public String getExpertiseName() {
        return expertiseName;
    }

    public void setExpertiseName(String expertiseName) {
        this.expertiseName = expertiseName;
    }

    @Override
    public String toString() {
        return "ExpertiseSkill{" + "expertiseID=" + expertiseID + ", expertiseName=" + expertiseName + '}';
    }

    public List<ExpiredSkillSet> getAllExpertiseSkillSet(){
        PostDAO dao = new PostDAO();
        List<ExpiredSkillSet> m = dao.getAllExpertiseSkillSet(expertiseID);
        return  m;
    }
    
    
}
