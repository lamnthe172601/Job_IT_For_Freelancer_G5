package MutiModels;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author kudol
 */
public class ChartDataAdmin {
    private int monthNumber;
    private String monthName;
    private int freelancers;
    private int projects;
    private int applications;


    public ChartDataAdmin() {
    }

    public ChartDataAdmin(int monthNumber, String monthName, int freelancers, int projects, int applications) {
        this.monthNumber = monthNumber;
        this.monthName = monthName;
        this.freelancers = freelancers;
        this.projects = projects;
        this.applications = applications;
    }

    public int getMonthNumber() {
        return monthNumber;
    }

    public void setMonthNumber(int monthNumber) {
        this.monthNumber = monthNumber;
    }

    public String getMonthName() {
        return monthName;
    }

    public void setMonthName(String monthName) {
        this.monthName = monthName;
    }

    public int getFreelancers() {
        return freelancers;
    }

    public void setFreelancers(int freelancers) {
        this.freelancers = freelancers;
    }

    public int getProjects() {
        return projects;
    }

    public void setProjects(int projects) {
        this.projects = projects;
    }

    public int getApplications() {
        return applications;
    }

    public void setApplications(int applications) {
        this.applications = applications;
    }

   
}
