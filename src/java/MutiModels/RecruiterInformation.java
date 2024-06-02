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
    private User account;

    public RecruiterInformation() {
    }

    public RecruiterInformation(Company company, int totalPost, User account) {
        this.company = company;
        this.totalPost = totalPost;
        this.account = account;
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

    public User getAccount() {
        return account;
    }

    public void setAccount(User account) {
        this.account = account;
    }

  
  
}
