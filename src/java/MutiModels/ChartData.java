/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MutiModels;

/**
 *
 * @author Admin
 */
public class ChartData {

    int month;
    int postCount;
    int applyCount;

    public ChartData() {
    }

    public ChartData(int month, int postCount, int applyCount) {
        this.month = month;
        this.postCount = postCount;
        this.applyCount = applyCount;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getPostCount() {
        return postCount;
    }

    public void setPostCount(int postCount) {
        this.postCount = postCount;
    }

    public int getApplyCount() {
        return applyCount;
    }

    public void setApplyCount(int applyCount) {
        this.applyCount = applyCount;
    }

    @Override
    public String toString() {
        return "ChartData{" + "month=" + month + ", postCount=" + postCount + ", applyCount=" + applyCount + '}';
    }
    
    
}
