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
public class Blogs {
    int BlogID;
    String title, image, description, tag;
    Date date_blog;
    boolean status;
    public Blogs() {
    }

    public Blogs(int BlogID, String title, String image, String description, String tag, Date date_blog, boolean status) {
        this.BlogID = BlogID;
        this.title = title;
        this.image = image;
        this.description = description;
        this.tag = tag;
        this.date_blog = date_blog;
        this.status = status;
    }

    public int getBlogID() {
        return BlogID;
    }

    public void setBlogID(int BlogID) {
        this.BlogID = BlogID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public Date getDate_blog() {
        return date_blog;
    }

    public void setDate_blog(Date date_blog) {
        this.date_blog = date_blog;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Blogs{" + "BlogID=" + BlogID + ", title=" + title + ", image=" + image + ", description=" + description + ", tag=" + tag + ", date_blog=" + date_blog + ", status=" + status + '}';
    }

    
}
