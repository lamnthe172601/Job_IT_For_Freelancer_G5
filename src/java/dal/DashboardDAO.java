/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import MutiModels.ChartData;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kudol
 */
public class DashboardDAO extends DBContext {

    public int getTotalUsers() {
        String query = " SELECT COUNT(DISTINCT username) AS total_user FROM [user]";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("total_user");
            }
        } catch (SQLException e) {
        }
        return -1;
    }

    public int getTotalPost() {
        String query = "  SELECT count(postID) as totalpost FROM post";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("totalpost");
            }
        } catch (SQLException e) {
        }
        return -1;
    }

    public int getTotalJobApply() {
        String query = "  SELECT count(applyID) as totaljobapply FROM JobApply";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("totaljobapply");
            }
        } catch (SQLException e) {
        }
        return -1;
    }

    public int getTotalFreelancer() {
        String query = "   SELECT count(freelanceID) as totalFreelancer FROM freelancer";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("totalFreelancer");
            }
        } catch (SQLException e) {
        }
        return -1;
    }

//      public List<Integer> getApplicationsData(){
//        List<Integer> applicationsData = new ArrayList<>();
//        try {
//            String sql = "SELECT MONTH(dateApply) AS month, COUNT(applyID) AS applications_count FROM JobApply GROUP BY MONTH(dateApply)";
//            PreparedStatement ps = connection.prepareStatement(sql);         
//            ResultSet rs = ps.executeQuery();
//
//            for (int i = 0; i < 12; i++) {
//                applicationsData.add(0);
//            }
//
//            while (rs.next()) {
//                int month = rs.getInt("month") - 1;
//                applicationsData.set(month, rs.getInt("applications_count"));
//            }
//        }catch (SQLException e) {
//        } 
//        return applicationsData;
//    }
//      
//      public List<Integer> getPostsData() {
//        List<Integer> postsData = new ArrayList<>();
//        try{
//            String sql = "SELECT MONTH(date_post) AS month, COUNT(postID) AS posts_count FROM Post GROUP BY MONTH(date_post)";
//            PreparedStatement ps = connection.prepareStatement(sql);         
//            ResultSet rs = ps.executeQuery();
//
//            for (int i = 0; i < 12; i++) {
//                postsData.add(0);
//            }
//
//            while (rs.next()) {
//                int month = rs.getInt("month") - 1;
//                postsData.set(month, rs.getInt("posts_count"));
//            }
//        }catch (SQLException e) {
//        }
//        return postsData;
//    }
    public List<ChartData> getChartDataForYear(int id, int year) {
        List<ChartData> chartDataList = new ArrayList<>();
        String sql = """
                     DECLARE @Year INT = ?; 
                     
                     WITH Months AS (
                         SELECT 1 AS Month UNION ALL
                         SELECT 2 UNION ALL
                         SELECT 3 UNION ALL
                         SELECT 4 UNION ALL
                         SELECT 5 UNION ALL
                         SELECT 6 UNION ALL
                         SELECT 7 UNION ALL
                         SELECT 8 UNION ALL
                         SELECT 9 UNION ALL
                         SELECT 10 UNION ALL
                         SELECT 11 UNION ALL
                         SELECT 12
                     ),
                     RecruiterPosts AS (
                         SELECT 
                             p.recruiterID,
                             YEAR(p.date_post) AS Year, 
                             MONTH(p.date_post) AS Month,
                             p.postID
                         FROM [freelancer].[dbo].[Post] p
                         WHERE p.recruiterID = ? -- Replace with the desired recruiterID
                     ), 
                     PostCounts AS (
                         SELECT 
                             rp.Year, 
                             rp.Month,
                             COUNT(*) AS PostCount 
                         FROM RecruiterPosts rp
                         GROUP BY rp.Year, rp.Month
                     ),
                     ApplyCounts AS (
                         SELECT 
                             rp.Year, 
                             rp.Month, 
                             COUNT(*) AS ApplyCount 
                         FROM [freelancer].[dbo].[JobApply] a
                         INNER JOIN RecruiterPosts rp ON a.postID = rp.postID
                         GROUP BY rp.Year, rp.Month
                     )
                     SELECT 
                         @Year AS Year, 
                         m.Month, 
                         COALESCE(pc.PostCount, 0) AS PostCount, 
                         COALESCE(ac.ApplyCount, 0) AS ApplyCount
                     FROM Months m
                     LEFT JOIN PostCounts pc ON m.Month = pc.Month AND pc.Year = @Year
                     LEFT JOIN ApplyCounts ac ON m.Month = ac.Month AND ac.Year = @Year
                     ORDER BY m.Month;""";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1, year);
            ps.setInt(2, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int month = rs.getInt("Month");
                int postCount = rs.getInt("PostCount");
                int applyCount = rs.getInt("ApplyCount");
                chartDataList.add(new ChartData(month, postCount, applyCount));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return chartDataList;
    }

    public static void main(String[] args) {
        DashboardDAO dao = new DashboardDAO();
        List<ChartData> m = dao.getChartDataForYear(1, 2024);
        for (ChartData chartData : m) {
            System.out.println(chartData.toString());
        }
        
    }

}
