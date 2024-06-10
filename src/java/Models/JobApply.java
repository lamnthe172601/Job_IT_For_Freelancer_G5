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
public class JobApply {
    int applyID;
    Freelancer freelancer;
    Post post;
    String status; 
    Date dateApply;

    public JobApply() {
    }

    public JobApply(int applyID, Freelancer freelancer, Post post, String status, Date dateApply) {
        this.applyID = applyID;
        this.freelancer = freelancer;
        this.post = post;
        this.status = status;
        this.dateApply = dateApply;
    }

    public int getApplyID() {
        return applyID;
    }

    public void setApplyID(int applyID) {
        this.applyID = applyID;
    }

    public Freelancer getFreelancer() {
        return freelancer;
    }

    public void setFreelancer(Freelancer freelancer) {
        this.freelancer = freelancer;
    }

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getDateApply() {
        return dateApply;
    }

    public void setDateApply(Date dateApply) {
        this.dateApply = dateApply;
    }

    @Override
    public String toString() {
        return "JobApply{" + "applyID=" + applyID + ", freelancer=" + freelancer + ", post=" + post + ", status=" + status + ", dateApply=" + dateApply + '}';
    }
    
    
    
}
