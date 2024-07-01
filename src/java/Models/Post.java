
package Models;

import MutiModels.PostApplicationCount;
import dal.PostDAO;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Post {
    int postID, quantity,budget;
    String title, description, location, skill, image;
    Date datePost;
    Date expired;
    JobType jobTypeID;
    Duration durationID;
    Recruiter recruiterID;
    Categories caID;
    int status;
    int checking;
    
    public Post() {
    }

    public Post(int postID,String title, String image, JobType jobTypeID, Duration durationID, Date datePost,Date expired, int quantity, String description,int budget, String location, String skill, Recruiter recruiterID, Categories caID, int status,
    int checking) {
        this.postID = postID;
        this.image = image;
        this.quantity = quantity;
        this.budget = budget;
        this.title = title;
        this.description = description;
        this.location = location;
        this.skill = skill;
        this.datePost = datePost;
        this.expired = expired;
        this.jobTypeID = jobTypeID;
        this.durationID = durationID;
        this.recruiterID = recruiterID;
        this.caID = caID;
        this.status=status;
        this.checking=checking;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
        

    public int getPostID() {
        return postID;
    }

    public void setPostID(int postID) {
        this.postID = postID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getBudget() {
        return budget;
    }

    public void setBudget(int budget) {
        this.budget = budget;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }

    public Date getDatePost() {
        return datePost;
    }

    public void setDatePost(Date datePost) {
        this.datePost = datePost;
    }

    public JobType getJobTypeID() {
        return jobTypeID;
    }

    public void setJobTypeID(JobType jobTypeID) {
        this.jobTypeID = jobTypeID;
    }

    public Duration getDurationID() {
        return durationID;
    }

    public void setDurationID(Duration durationID) {
        this.durationID = durationID;
    }

    public Recruiter getRecruiterID() {
        return recruiterID;
    }

    public void setRecruiterID(Recruiter recruiterID) {
        this.recruiterID = recruiterID;
    }

    public Categories getCaID() {
        return caID;
    }

    public void setCaID(Categories caID) {
        this.caID = caID;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    

    public int getChecking() {
        return checking;
    }

    public void setChecking(int checking) {
        this.checking = checking;
    }

    public Date getExpired() {
        return expired;
    }

    public void setExpired(Date expired) {
        this.expired = expired;
    }
    
    
    public int cout(){
        PostDAO m = new PostDAO();
        return m.TotalApplyByPost(postID);
    }

    @Override
    public String toString() {
        return "Post{" + "postID=" + postID + ", quantity=" + quantity + ", budget=" + budget + ", title=" + title + ", description=" + description + ", location=" + location + ", skill=" + skill + ", image=" + image + ", datePost=" + datePost + ", expired=" + expired + ", jobTypeID=" + jobTypeID + ", durationID=" + durationID + ", recruiterID=" + recruiterID + ", caID=" + caID + ", status=" + status + ", checking=" + checking + '}';
    }
    
    
    

 
    
}
