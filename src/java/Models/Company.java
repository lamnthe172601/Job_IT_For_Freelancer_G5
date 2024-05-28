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
public class Company {

    int companyID;
    TeamNumber teamNumber;
    Date establishedOn;
    String logo, companyName, website, describe, location;
    Recruiter recruiID;

    public Company() {
    }

    public Company(int companyID, String companyName, TeamNumber teamNumber, Date establishedOn, String logo, String website, String describe, String location, Recruiter recruiID) {
        this.companyID = companyID;
        this.teamNumber = teamNumber;
        this.establishedOn = establishedOn;
        this.logo = logo;
        this.companyName = companyName;
        this.website = website;
        this.describe = describe;
        this.location = location;
        this.recruiID = recruiID;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public int getCompanyID() {
        return companyID;
    }

    public void setCompanyID(int companyID) {
        this.companyID = companyID;
    }

    public TeamNumber getTeamNumber() {
        return teamNumber;
    }

    public void setTeamNumber(TeamNumber teamNumber) {
        this.teamNumber = teamNumber;
    }


    public Date getEstablishedOn() {
        return establishedOn;
    }

    public void setEstablishedOn(Date establishedOn) {
        this.establishedOn = establishedOn;
    }



    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Recruiter getRecruiID() {
        return recruiID;
    }

    public void setRecruiID(Recruiter recruiID) {
        this.recruiID = recruiID;
    }

}
