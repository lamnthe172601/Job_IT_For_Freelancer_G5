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
public class Recruiter {
    int recruiterID, userID;
    String firstName, lastName;
    boolean gender;
    Date dob;
    String image, email_contact, phone_contact;
   

    public Recruiter() {
    }

    public Recruiter(int recruiterID, int userID, String firstName, String lastName, boolean gender, Date dob, String image, String email, String phone) {
        this.recruiterID = recruiterID;
        this.userID = userID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
        this.dob = dob;
        this.image = image;
        this.email_contact = email;
        this.phone_contact = phone;
      
    }

   

    public int getRecruiterID() {
        return recruiterID;
    }

    public void setRecruiterID(int recruiterID) {
        this.recruiterID = recruiterID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getEmail() {
        return email_contact;
    }

    public void setEmail(String email) {
        this.email_contact = email;
    }

    public String getPhone() {
        return phone_contact;
    }

    public void setPhone(String phone) {
        this.phone_contact = phone;
    }

    @Override
    public String toString() {
        return "Recruiter{" + "recruiterID=" + recruiterID + ", userID=" + userID + ", firstName=" + firstName + ", lastName=" + lastName + ", gender=" + gender + ", dob=" + dob + ", image=" + image + ", email=" + email_contact + ", phone=" + phone_contact +  '}';
    }

    

  
   
    
    
}
