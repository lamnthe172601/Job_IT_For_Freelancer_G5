
 
package MutiModels;




import java.util.Date;

import Models.Categories;
import Models.Duration;
import Models.JobType;
import java.util.Date;

/**
 *
 * @author tanng
 */
public class PostBasic {
    int postID, quantity,budget;
    String title, description, location, skill, image;
    Date datePost;
    JobType jobTypeID;
    Duration durationID;
    RecruiterBasic recruiterID;
    Categories caID;
    boolean status;
    int checking;

    public PostBasic() {
    }

    public PostBasic(int postID, int quantity, int budget, String title, String description, String location, String skill, String image, Date datePost, JobType jobTypeID, Duration durationID, RecruiterBasic recruiterID, Categories caID, boolean status, int checking) {
        this.postID = postID;
        this.quantity = quantity;
        this.budget = budget;
        this.title = title;
        this.description = description;
        this.location = location;
        this.skill = skill;
        this.image = image;
        this.datePost = datePost;
        this.jobTypeID = jobTypeID;
        this.durationID = durationID;
        this.recruiterID = recruiterID;
        this.caID = caID;
        this.status = status;
        this.checking = checking;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
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

    public RecruiterBasic getRecruiterID() {
        return recruiterID;
    }

    public void setRecruiterID(RecruiterBasic recruiterID) {
        this.recruiterID = recruiterID;
    }

    public Categories getCaID() {
        return caID;
    }

    public void setCaID(Categories caID) {
        this.caID = caID;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getChecking() {
        return checking;
    }

    public void setChecking(int checking) {
        this.checking = checking;
    }

    @Override
    public String toString() {
        return "PostBasic{" + "postID=" + postID + ", quantity=" + quantity + ", budget=" + budget + ", title=" + title + ", description=" + description + ", location=" + location + ", skill=" + skill + ", image=" + image + ", datePost=" + datePost + ", jobTypeID=" + jobTypeID + ", durationID=" + durationID + ", recruiterID=" + recruiterID + ", caID=" + caID + ", status=" + status + ", checking=" + checking + '}';
    }
    
}

