/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.JobType;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author admin
 */
public class JobTypeDAO extends DBContext{
    
     public  JobType getJobTypeByJTID(int jobtypeId) {
        String query = "select * from JobType where jobID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, jobtypeId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                JobType j = new JobType(rs.getInt("jobID"), rs.getString("job_name"));
                return j;
            }
        } catch (SQLException e) {
        }
        return null;
    }
}
