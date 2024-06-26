package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

public class ReportDAO extends DBContext {
    // Phương thức để lưu báo cáo vào cơ sở dữ liệu
    public void reportPost(int userId, int postId, String message) throws SQLException {
        String query = "INSERT INTO report ( postID,  messeage, dateReport) VALUES ( ?, ?, ?)";

        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, postId);
            ps.setString(2, message);
            ps.setTimestamp(3, new Timestamp(new Date().getTime())); // Chuyển đổi từ java.util.Date sang java.sql.Timestamp
            ps.executeUpdate();
        }
    }
}
