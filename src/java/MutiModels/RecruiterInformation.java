/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MutiModels;
import Models.*;
/**
 *
 * @author kudol
 */
public class RecruiterInformation {
    private Company company;
    private int totalPost;
    private String status;

    public RecruiterInformation(Company company, int totalPost, String status) {
        this.company = company;
        this.totalPost = totalPost;
        this.status = status;
    }
    public RecruiterInformation() {
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public RecruiterInformation(Company company, int totalPost) {
        this.company = company;
        this.totalPost = totalPost;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public int getTotalPost() {
        return totalPost;
    }

    public void setTotalPost(int totalPost) {
        this.totalPost = totalPost;
    }
    
}
