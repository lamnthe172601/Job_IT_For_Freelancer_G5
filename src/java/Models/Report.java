
package Models;

import java.util.Date;


public class Report {
    int ReportID;
    int postID;
    int freelancerID;
    String messeage;
    Date dateReport;

    public Report() {
    }

    public Report(int ReportID, int postID, int freelancerID, String messeage, Date dateReport) {
        this.ReportID = ReportID;
        this.postID = postID;
        this.freelancerID = freelancerID;
        this.messeage = messeage;
        this.dateReport = dateReport;
    }

    public int getReportID() {
        return ReportID;
    }

    public void setReportID(int ReportID) {
        this.ReportID = ReportID;
    }

    public int getPostID() {
        return postID;
    }

    public void setPostID(int postID) {
        this.postID = postID;
    }

    public int getFreelancerID() {
        return freelancerID;
    }

    public void setFreelancerID(int freelancerID) {
        this.freelancerID = freelancerID;
    }

    public String getMesseage() {
        return messeage;
    }

    public void setMesseage(String messeage) {
        this.messeage = messeage;
    }

    public Date getDateReport() {
        return dateReport;
    }

    public void setDateReport(Date dateReport) {
        this.dateReport = dateReport;
    }

    @Override
    public String toString() {
        return "Report{" + "ReportID=" + ReportID + ", postID=" + postID + ", freelancerID=" + freelancerID + ", messeage=" + messeage + ", dateReport=" + dateReport + '}';
    }
    
    
}
