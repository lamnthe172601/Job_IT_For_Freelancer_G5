/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Categories;
import Models.Duration;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
     
     public List<Duration> getAllDuration() {
        List<Duration> list = new ArrayList<>();
        String query = "select * from Duration";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add( new Duration(rs.getInt("durationID"), rs.getString("duration_name")));
            }
        } catch (SQLException e) {
        }
        return list;
    }
}
