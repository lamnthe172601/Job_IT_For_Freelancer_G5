/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MutiModels;

/**
 *
 * @author tanng
 */
public class RecruiterBasic {
    int recruiterID;
    String firstName, lastName, email;
    String Companyname;
    String image;

    public RecruiterBasic() {
    }

    public RecruiterBasic(int recruiterID, String firstName, String lastName, String email, String Companyname, String image) {
        this.recruiterID = recruiterID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.Companyname = Companyname;
        this.image=image;
    }

    public int getRecruiterID() {
        return recruiterID;
    }

    public void setRecruiterID(int recruiterID) {
        this.recruiterID = recruiterID;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCompanyname() {
        return Companyname;
    }

    public void setCompanyname(String Companyname) {
        this.Companyname = Companyname;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "RecruiterBasic{" + "recruiterID=" + recruiterID + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", Companyname=" + Companyname + ", image=" + image + '}';
    }
    

    
}
