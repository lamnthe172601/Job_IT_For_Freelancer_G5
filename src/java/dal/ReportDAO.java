package dal;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.util.Date;
public class ReportDAO extends DBContext {
    // Phương thức để lưu báo cáo vào cơ sở dữ liệu
    public void reportPost(int userId, int postId, String message) throws SQLException {
        String sql = "INSERT INTO report (freelancerID, postID, messeage, dateReport) " +
                     "SELECT f.freelanceID, ?, ?, ? " +
                     "FROM Freelancer f " +
                     "WHERE f.userID = ?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, postId);
            ps.setString(2, message);
            ps.setTimestamp(3, new Timestamp(new Date().getTime())); // Chuyển đổi từ java.util.Date sang java.sql.Timestamp
            ps.setInt(4, userId);
            
            ps.executeUpdate();
        }
    }
}


