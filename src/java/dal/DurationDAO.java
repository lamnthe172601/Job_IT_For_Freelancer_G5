/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Duration;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author admin
 */
public class DurationDAO extends DBContext{
   
     public  Duration getDurationByDRid(int durationId) {
            
        String query = "select * from Duration where durationID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, durationId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Duration d = new Duration(rs.getInt("durationID"), rs.getString("duration_name"));
                return d;
            }
        } catch (SQLException e) {
        }
        return null;
    }
}
