/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MutiModels;

import java.util.Date;

/**
 *
 * @author tanng
 */
public class JobApply {
    int postID, budget;
    Date datePost, dateApply;
    String status,title,category;

    public JobApply() {
    }

    public JobApply(int postID, int budget, Date datePost, Date dateApply, String status, String title, String category) {
        this.postID = postID;
        this.budget = budget;
        this.datePost = datePost;
        this.dateApply = dateApply;
        this.status = status;
        this.title = title;
        this.category = category;
    }

    public int getPostID() {
        return postID;
    }

    public void setPostID(int postID) {
        this.postID = postID;
    }

    public int getBudget() {
        return budget;
    }

    public void setBudget(int budget) {
        this.budget = budget;
    }

    public Date getDatePost() {
        return datePost;
    }

    public void setDatePost(Date datePost) {
        this.datePost = datePost;
    }

    public Date getDateApply() {
        return dateApply;
    }

    public void setDateApply(Date dateApply) {
        this.dateApply = dateApply;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "JobApply{" + "postID=" + postID + ", budget=" + budget + ", datePost=" + datePost + ", dateApply=" + dateApply + ", status=" + status + ", title=" + title + ", category=" + category + '}';
    }
    
    
}
