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
public class DashboardDAO extends DBContext{
   public int getTotalUsers(){
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
    public int getTotalPost(){
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
     public int getTotalJobApply(){
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
   
      public int getTotalFreelancer(){
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
      
      public List<ChartData> getChartDataForYear(int year) {
        List<ChartData> chartDataList = new ArrayList<>();
        String sql = "WITH PostCounts AS (" +
                     "    SELECT " +
                     "        YEAR(date_post) AS Year, " +
                     "        MONTH(date_post) AS Month, " +
                     "        COUNT(*) AS PostCount " +
                     "    FROM [freelancer].[dbo].[Post] " +
                     "    GROUP BY YEAR(date_post), MONTH(date_post) " +
                     "), " +
                     "ApplyCounts AS ( " +
                     "    SELECT " +
                     "        YEAR(dateApply) AS Year, " +
                     "        MONTH(dateApply) AS Month, " +
                     "        COUNT(*) AS ApplyCount " +
                     "    FROM [freelancer].[dbo].[JobApply] " +
                     "    GROUP BY YEAR(dateApply), MONTH(dateApply) " +
                     ") " +
                     "SELECT " +
                     "    COALESCE(p.Year, a.Year) AS Year, " +
                     "    COALESCE(p.Month, a.Month) AS Month, " +
                     "    COALESCE(p.PostCount, 0) AS PostCount, " +
                     "    COALESCE(a.ApplyCount, 0) AS ApplyCount " +
                     "FROM PostCounts p " +
                     "FULL OUTER JOIN ApplyCounts a ON p.Year = a.Year AND p.Month = a.Month " +
                     "WHERE COALESCE(p.Year, a.Year) = ? " +
                     "ORDER BY Month";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);         
            
            ps.setInt(1, year);
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
        List<ChartData> m = dao.getChartDataForYear(2024);
         System.out.println(m);
    }
   
}
