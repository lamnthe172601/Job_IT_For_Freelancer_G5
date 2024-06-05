/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class Experience {
    int experienceID;
    String experienceName,your_project,experience_work_name;
    Date start_date, end_date;
    Freelancer freelancerID;

    public Experience() {
    }

    public Experience(int experienceID, String experienceName, String your_project, String experience_work_name, Date start_date, Date end_date, Freelancer freelancerID) {
        this.experienceID = experienceID;
        this.experienceName = experienceName;
        this.your_project = your_project;
        this.experience_work_name = experience_work_name;
        this.start_date = start_date;
        this.end_date = end_date;
        this.freelancerID = freelancerID;
    }

    public int getExperienceID() {
        return experienceID;
    }

    public void setExperienceID(int experienceID) {
        this.experienceID = experienceID;
    }

    public String getExperienceName() {
        return experienceName;
    }

    public void setExperienceName(String experienceName) {
        this.experienceName = experienceName;
    }

    public String getYour_project() {
        return your_project;
    }

    public void setYour_project(String your_project) {
        this.your_project = your_project;
    }

    public String getExperience_work_name() {
        return experience_work_name;
    }

    public void setExperience_work_name(String experience_work_name) {
        this.experience_work_name = experience_work_name;
    }

    public Date getStart_date() {
        return start_date;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }

    public Freelancer getFreelancerID() {
        return freelancerID;
    }

    public void setFreelancerID(Freelancer freelancerID) {
        this.freelancerID = freelancerID;
    }

    @Override
    public String toString() {
        return "Experience{" + "experienceID=" + experienceID + ", experienceName=" + experienceName + ", your_project=" + your_project + ", experience_work_name=" + experience_work_name + ", start_date=" + start_date + ", end_date=" + end_date + ", freelancerID=" + freelancerID + '}';
    }

    
    
    
}
