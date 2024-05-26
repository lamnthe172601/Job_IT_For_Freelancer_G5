/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
      public static void main(String[] args) {
          System.out.println(new DashboardDAO().getTotalFreelancer());
    }
}
