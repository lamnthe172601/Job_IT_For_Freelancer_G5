/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MutiModels;

/**
 *
 * @author Admin
 */
public class PostApplicationCount {
    private int postID;
    private int totalApplications;

    public PostApplicationCount() {
    }

    public PostApplicationCount(int postID, int totalApplications) {
        this.postID = postID;
        this.totalApplications = totalApplications;
    }

    public int getPostID() {
        return postID;
    }

    public void setPostID(int postID) {
        this.postID = postID;
    }

    public int getTotalApplications() {
        return totalApplications;
    }

    public void setTotalApplications(int totalApplications) {
        this.totalApplications = totalApplications;
    }

    @Override
    public String toString() {
        return "PostApplicationCount{" + "postID=" + postID + ", totalApplications=" + totalApplications + '}';
    }
    
    
}
