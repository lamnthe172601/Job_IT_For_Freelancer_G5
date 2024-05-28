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
public class FreelancerInformation {
    private User account;
    private Freelancer basicInformation;

    public FreelancerInformation() {
    }

    public FreelancerInformation(User account, Freelancer basicInformation) {
        this.account = account;
        this.basicInformation = basicInformation;
    }

    public User getAccount() {
        return account;
    }

    public void setAccount(User account) {
        this.account = account;
    }

    public Freelancer getBasicInformation() {
        return basicInformation;
    }

    public void setBasicInformation(Freelancer basicInformation) {
        this.basicInformation = basicInformation;
    }
    
   

}
