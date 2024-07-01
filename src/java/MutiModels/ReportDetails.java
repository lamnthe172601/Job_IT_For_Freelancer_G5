/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MutiModels;

import Models.Report;


/**
 *
 * @author kudol
 */
public class ReportDetails {
    private Report report;
    private FreelancerInformation freelancerInformation;

    public ReportDetails() {
    }

    public ReportDetails(Report report, FreelancerInformation freelancerInformation) {
        this.report = report;
        this.freelancerInformation = freelancerInformation;
    }

    public Report getReport() {
        return report;
    }

    public void setReport(Report report) {
        this.report = report;
    }

    public FreelancerInformation getFreelancerInformation() {
        return freelancerInformation;
    }

    public void setFreelancerInformation(FreelancerInformation freelancerInformation) {
        this.freelancerInformation = freelancerInformation;
    }

   
    
}
