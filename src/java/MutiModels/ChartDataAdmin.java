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
     private int month;
    private int totalPosts;
    private int totalRecruiters;
    private int totalFreelancers;

    public ChartDataAdmin() {
    }

    public ChartDataAdmin(int month, int totalPosts, int totalRecruiters, int totalFreelancers) {
        this.month = month;
        this.totalPosts = totalPosts;
        this.totalRecruiters = totalRecruiters;
        this.totalFreelancers = totalFreelancers;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getTotalPosts() {
        return totalPosts;
    }

    public void setTotalPosts(int totalPosts) {
        this.totalPosts = totalPosts;
    }

    public int getTotalRecruiters() {
        return totalRecruiters;
    }

    public void setTotalRecruiters(int totalRecruiters) {
        this.totalRecruiters = totalRecruiters;
    }

    public int getTotalFreelancers() {
        return totalFreelancers;
    }

    public void setTotalFreelancers(int totalFreelancers) {
        this.totalFreelancers = totalFreelancers;
    }

   
}
